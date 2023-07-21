<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
UserDetails user2=(UserDetails)session.getAttribute("userD");

if(user2==null){
    response.sendRedirect("login.jsp");
    session.setAttribute("Login-error","Please Login..");
   }
    
 %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="All_content/allcss.jsp" %>
    </head>
    <body>
        
        <div class="container-fluid">
            <%@include file="All_content/navbar.jsp"%>
            <div class="card  py-4">
                <div class="card-body text-center">
                    <img alt="" src="img/2.jpg" class="img-fluid mx-auto" style="max-width:500px;">
                    <h1>START TAKING YOUR NOTES</h1>
                
                    <a href="addNotes.jsp" class="btn btn-outline-primary">Start Here</a>
                    
                </div>
            </div>
        </div>
       <div class="container-fluid bg-dark mt-1"><!-- comment -->
    <p class="text-center text-white"> Note: Any errors occur then contact CodeWith Harshal Designed and developed by Harshal Mane</p>
    <p class="text-center text-white">All Rights reserved @CodeWithHarshal-2022-23</p>
    
</div>
    </body>
</html>
