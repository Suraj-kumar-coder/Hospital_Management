<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@page isELIgnored="false"%>    
<%@ page import="com.dao.SpecialistDao" %>
<%@ page import="com.entity.Specialist" %>
<%@ page import="java.util.List" %>
<%@ page import="com.db.DBConnect" %>
<%@ page import="com.dao.DoctorDao" %>
<%@ page import="com.entity.Appointment" %>
<%@ page import="com.entity.Doctor" %>
<%@ page import="com.dao.AppointmentDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../component/allcss.jsp" %>

<style type="text/css">
.paint-card {
  box-shadow :0 0 10px 0 rgba(0,0,0.3);
}




</style>
</head>
<body>
  
  <%@include file="navbar.jsp" %> 
      
       <div class="container-fluid p-3">
   <div class ="row">
      <div class="col-md-12">
					<div class="card paint-card">
						<div class="card-body">
							<p class=" fs-3  text-center "> Patient Details </p>
							<table class="table">
								<thead>
									<tr>
										<th scope="col">Full Name</th>
										<th scope="col">Gender</th>
										<th scope="col">Age</th>
										<th scope="col">AppointmentDate</th>
										<th scope="col">Email</th>
										<th scope="col">Mob no</th>
										<th scope="col">Diseases</th>
										<th scope="col">Doctor Name</th>
										<th scope="col">Address</th>
										<th scope="col">Status</th>
									</tr>
								</thead>
								   <tbody>
								
								  <% AppointmentDao dao = new AppointmentDao(DBConnect.getConn()); 
									DoctorDao dao2 = new DoctorDao(DBConnect.getConn());
										List<Appointment> list = dao.getAllAppointment();
										for(Appointment ap : list) 
										{
											Doctor d = dao2.getDoctorById(ap.getDoctorId());
										%>
										
										<tr>
													<th><%=ap.getFullname()%></th>
													<td><%=ap.getGender()%></td>
													<td><%=ap.getAge()%></td>
													<td><%=ap.getAppointDate()%></td>
													<td><%=ap.getEmail()%></td>
													<td><%=ap.getPhNo()%></td>
													<td><%=ap.getDiseases()%></td> 
													<td><%=d.getFullname()%></td>
													<td><%=ap.getAddress()%></td>
													<td><%=ap.getStatus()%></td>
													
													
													
								      </tr>
								      <%
										}
								      %>
								     
								      
								   
								   </tbody>
								   
								</table>
							</div>
						</div>
					</div>	
				</div>
			</div>					

</body>
</html>