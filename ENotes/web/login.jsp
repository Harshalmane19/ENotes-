<%-- 
    Document   : login
    Created on : Apr 3, 2023, 12:51:35 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <%@include file="All_content/allcss.jsp"%>
    </head>
    <body>
         <%@include file="All_content/navbar.jsp"%>
         <div class="container-fluid div-color"><!-- comment -->
             <div class="row">
                 <div class="col-md-4 offset-md-4">
                     <div class="card mt-4">
                         <div class="card-header text-center text-white bg-custom">
                             <i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
                             <h4>Login Page</h4>
                         </div>
                         
                         
                        <%
                           String invalidMsg=(String)session.getAttribute("login-failed");
                           if(invalidMsg!=null){
                           %>
                           <div class="alert alert-danger" role="alert">
                           <%=invalidMsg%>
                        </div>
                           <%
                               session.removeAttribute("login-failed");
                             }
                           %>
                           <%
                              
                          String withoutLogin=(String)session.getAttribute("Login-error");
                          if(withoutLogin!=null)
                          {
                          %>
                          
                          <div class="alert alert-danger" role="alert">
                           <%=withoutLogin%>
                        </div>
                          <%
                              session.removeAttribute("Login-error");
                               }
                            %>
                            
                            <%
                               
                             String lgMsg=(String)session.getAttribute("logoutMsg");
                             if(lgMsg!=null)
                             {%>
                               <div class="alert alert-success" role="alert">
                           <%=lgMsg%>
                        </div>
                             
                              <%  
                                  session.removeAttribute("logoutMsg");
                                  }
                             %>
                             
                         <div class="card-body">
                           <form action="loginServlet" method="post">
                                  
            
              <div class="form-group">
      <label>Enter Email</label>
     <input type="email" class="form-control" id="exampleInputEmail1" name="uemail" aria-describedby="emailHelp" >
     </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Enter Password</label>
    <input type="password" class="form-control" name="upassword" id="exampleInputPassword1" >
  </div>
  
  <button type="submit" class="btn btn-primary badge-pill btn-block">Login</button>
</form>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
         <div class="container-fluid bg-dark mt-1"><!-- comment -->
    <p class="text-center text-white"> Note: Any errors occur then contact CodeWith Harshal Designed and developed by Harshal Mane</p>
    <p class="text-center text-white">All Rights reserved @CodeWithHarshal-2022-23</p>
    
</div>
        
        
    </body>
</html>
