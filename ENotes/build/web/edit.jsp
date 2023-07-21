<%-- 
    Document   : edit
    Created on : Jul 20, 2023, 10:15:14 PM
    Author     : DELL
--%>

<%@page import="com.User.Post"%>
<%@page import="com.Db.DBConnect"%>
<%@page import="com.DAO.PostDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
UserDetails user1=(UserDetails)session.getAttribute("userD");

if(user1==null){
    response.sendRedirect("login.jsp");
    session.setAttribute("Login-error","Please Login..");
   }
    
 %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Notes</title>
        <%@include file="All_content/allcss.jsp"%>
    </head>
    <body>
        <%
            Integer noteid=Integer.parseInt(request.getParameter("note_id"));
            
            PostDAO post=new PostDAO(DBConnect.getConn());
            Post p=post.getDataById(noteid);
            

                
          %>
         <div class="container-fluid">
            <%@include file="All_content/navbar.jsp"%>
            <h1 class="text-center">Edit Your Notes</h1>
            
            
            <div class="container">
                <div class="row">
                <div class="col-md-12">
      <form action="NoteEditServlet" method="post">
          <input type="hidden" name="noteid" value="<%=noteid%>">
                        
       <div class="form-group">      
      
    <label for="exampleInputEmail1">Enter Title</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="title" required="required" value="<%=p.getTitle()%>"/>    
       </div>
     <div class="form-group">
          <label for="exampleInputEmail1">Enter Content</label>
          <textarea rows="9" cols="" class="form-control" name="content" required="required"><%=p.getContent()%></textarea>
      </div>
                        <div class="container text-center">
                            <button type="submit" class="btn btn-primary">Add Notes</button>
                        </div>
        </form>
                </div>
              </div>
            </div>
         </div>
            <br>
          <%@include file="All_content/footer.jsp"%>  
    </body>
</html>
