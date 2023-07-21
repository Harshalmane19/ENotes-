package com.Servlet;

import com.DAO.PostDAO;
import com.Db.DBConnect;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "NoteEditServlet", urlPatterns = {"/NoteEditServlet"})
public class NoteEditServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         
         
         try{
             
         Integer noteid=Integer.parseInt(request.getParameter("noteid"));
         String Title=request.getParameter("title");
         String Content=request.getParameter("content");
         
         PostDAO dao=new PostDAO(DBConnect.getConn());
         boolean f=dao.PostUpdate(noteid,Title,Content);
         if(f){
             System.out.println("Data update successfully");
             HttpSession session=request.getSession();
             session.setAttribute("updateMsg","Notes Update Successfully");
             response.sendRedirect("showNotes.jsp");
             
         }
         else{
             System.out.println("Data not updated");
         }
         
         
         
         
         }catch(Exception e){
            e.printStackTrace();
        }
        }
    }

    