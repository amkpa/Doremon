
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="com.entities.Customer"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Bookings</title>
<%@include file="all_css_js.jsp"%>
</head>
<body>
	<div class="container-fluid">
		<%@include file="navbar.jsp"%>
		<br>
		<h3 class="text-center">List Of Bookings</h3>
		<hr>

		<div class="container text-left">
			<a href="Add_Booking.jsp" class="btn btn-success">Add New User</a>
		</div>

		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Customer");
				List<Customer> list = q.list();

				for (Customer n : list) {
				%>
				<div class="container">
					<br>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Email</th>
								<th>Phone</th>
								<th>Address</th>
								<th>Date</th>
								<th>Booking Id</th>
								<th>Location</th>
								<th>Drone</th>

								<th>Actions</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach var="user" items="${listUser}">
								<tr>

									<td><%=n.getId()%></td>
									<td><%=n.getFirst_name()%></td>
									<td><%=n.getLast_name()%></td>
									<td><%=n.getEmail()%></td>
									<td><%=n.getPhone()%></td>
									<td><%=n.getAddress()%></td>
									<td><%=n.getDate()%></td>
									<td><%=n.getBooking_id()%></td>
									<td><%=n.getLocation()%></td>
									<td><%=n.getDrone()%></td>
									<td><a href="edit.jsp?customer_id=<%=n.getId()%>">Edit</a>
										&nbsp; &nbsp; &nbsp; &nbsp; <a
										href="DeleteServlet?customer_id=<%=n.getId()%>">Delete</a></td>

								</tr>
							</c:forEach>
						</tbody>

					</table>
				</div>
				<%
				}
				s.close();
				%>
			</div>
		</div>
	</div>
</body>
</html>