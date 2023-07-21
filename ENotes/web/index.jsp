<%@page import="java.sql.Connection"%>
<%@page import="com.Db.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <style>
            .back-img{
                background:url("img/b3.jpg");
                width:100%;
                height:80vh;
                background-repeat:no-repeat;
                background-size:cover;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <%@include file="All_content/allcss.jsp"%>
    </head>
    <body>
       <%@include file="All_content/navbar.jsp"%>
       
       
       <div class="container-fluid back-img">
           <div class="text-center">
           <h1 class="text-white"><i class="fa fa-book" aria-hidden="true"></i>E Notes- Save Your Notes</h1>
           <a href="login.jsp" class="btn btn-light"><i class="fa fa-user-circle-o" aria-hidden="true"></i>Login</a>
            <a href="register.jsp" class="btn btn-light"><i class="fa fa-user-plus" aria-hidden="true"></i>Register</a>
           </div>
       </div>
       <%@include file="All_content/footer.jsp"%>
    </body>
</html>
