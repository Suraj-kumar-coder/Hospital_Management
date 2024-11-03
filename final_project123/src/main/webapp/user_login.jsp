
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
   <%@page isELIgnored="false"%>     
     

 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user login page</title>
<%@include file="component/allcss.jsp" %>

<style type="text/css">
.point-card {
  box-shadow :0 0 20px 0 rgba(0,0,0.3);
}
h3{
color:red
}

</style>
</head>
<body>

<%@include file="component/Navbar.jsp" %>

<div class="container p-5">
  <div class="row">
   <div class="col-md-4 offset-md-4">
    <div class="card point-card">
     <div class="card-body">
      <p class="fs-4 text-center">LOGIN</p>
      
      <h3>  <% 
	                 String msg= (String) request.getAttribute("msg");
	                if(msg != null){
		                   out.print(msg);
	                    }
            %>
            </h3>
      
      <form action="Login" method="post">
        <div class="mb-3">
           <label class="form-Label"> Email Address</label> 
           <input required name="email" type="email" class ="form-control">
             
        
        </div>
        
         <div class="mb-3">
         
           <label class="form-Label"> Password</label> 
           <input required name="password" type="password" class ="form-control">
             
        </div> 
        
        <button type="submit" class="btn bg-success text-white col-md-12">Login</button>
      
      
      </form>
      <br> Don't have an account? <a href="signup.jsp" class="clink">create new one</a>
     </div>
    </div>
   </div>
  </div>
 </div>

</body>
</html>