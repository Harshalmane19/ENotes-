/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
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


@WebServlet(name = "deleteServlet", urlPatterns = {"/deleteServlet"})
public class deleteServlet extends HttpServlet {

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Integer noteid=Integer.parseInt(request.getParameter("note_id"));
        PostDAO dao=new PostDAO(DBConnect.getConn());
        boolean f=dao.DeleteNotes(noteid);
        HttpSession session=null;
        
        if(f){
         session=request.getSession();
         session.setAttribute("updateMsg","Notes delete successfully");
         response.sendRedirect("showNotes.jsp");
        }
        else{
            session=request.getSession();
            session.setAttribute("wrongMsg","something went wrong on server");
            response.sendRedirect("showNotes.jsp");
        }
        
        }
    }

    


