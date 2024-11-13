<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@page isELIgnored="false"%> 

<%@ page import="com.db.DBConnect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../component/allcss.jsp" %>

<style type="text/css">
.point-card {
  box-shadow :0 0 20px 0 rgba(0,0,0.3);
}


</style>
</head>
<body>

<%@include file="navbar.jsp" %>



      <div class="container p-5">
      <p class="text-center fs-3">Admin Dashboard</p>
      <c:if test ="${not empty errorMsg }">
        <p class ="fs-3 text-center text-danger">${errorMsg }</p>
        <c:remove var= "errorMsg" scope ="session" />
     </c:if>
     
     <c:if test ="${not empty succMsg }">
        <p class ="fs-3 text-center text-danger">${succMsg }</p>
        <c:remove var= "succMsg" scope ="session" />
     </c:if>
     

    <div class="row">
    
      <div class="col-md-4">
       <div class="card point-card">
       <div class ="card-body text-center text-success">
       <i class="fas fa-user-md fa-3x"></i>
        </br>
         <p class="fs-4 text-center"> Doctor </br> 10 
       </p>
      </div>
     </div>
    </div>
    
   
   
  <!--   <div class="col-md-4">
       <div class="card point-card">
       <div class ="card-body text-center text-success">
       <i class="fas fa-user-md fa-3x"></i>
        </br>
         <p class="fs-4 text-center"> View_Doctor<br>5
       </p>
      </div>
     </div>
    </div>  -->
       
       
          
      
      <div class="col-md-4"> 
       <div class="card point-card">
       <div class ="card-body text-center text-success">
        
        <i class="fas fa-user-circle fa-3x"></i></br>
         <p class="fs-4 text-center"> User </br> 15 
       </p>
      </div>
     </div>
    </div>
       
  
            
      <div class="col-md-4">
       <div class="card point-card">
       <div class ="card-body text-center text-success">
        <i class="fas fa-calendar-check fa-3x"></i></br>
         <p class="fs-4 text-center"> Total Appointment <br> 50
       </p> 
      </div>
     </div>
    </div>
     
    
                 
                 
      <div class="col-md-4">
       <div class="card point-card" data-bs-toggle="modal" data-bs-target="#exampleModal">
       <div class ="card-body text-center text-success">
        <i class="fas fa-calendar-check fa-3x"></i></br>   
         <p class="fs-4 text-center">  Specialist <br> 10
       </p>
      </div>
     </div>
    </div>
   </div>   
   
  


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      
      <form action="../addSpecialist" method="post">
      
        
      
      <div class="form-group">
      <label>Enter Specialist Name </label>
      <input type="text" name="specName" class="form-control">
      
      
      </div>
      <div class="mt-3">
         <button type="submit" class="btn btn-primary">Add</button>
      </div>
      
      </form>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
       
      </div>
    </div>
  </div>
</div>



</div>

</body>
</html>