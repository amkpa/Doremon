<%@page import="com.entities.Customer"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_css_js.jsp"%>
</head>
<body>
	<div class="container-fluid mt-1">
		<%@include file="navbar.jsp"%>
		<br>
		<%
		
		int id= Integer.parseInt(request.getParameter("customer_id"));
		Session s= FactoryProvider.getFactory().openSession();
		
		Customer cus= (Customer)s.get(Customer.class, id);
		
		%>
		
		<form action="UpdateData" method="post">
			<div class="form-row">
			<input value="<%= cus.getId()%>"type="hidden" name="customer_id">
				<div class="form-group col-md-6">
					<label for="inputEmail4">First Name</label> <input type="text"
						class="form-control" id="inputFirstName" placeholder="First Name" name="fname" value="<%=cus.getFirst_name()%>">
				</div>
				<div class="form-group col-md-6">
					<label for="inputEmail4">Last Name</label> <input type="text"
						class="form-control" id="inputLastName" placeholder="Last Name" name="lname" value="<%=cus.getLast_name()%>">
				</div>
			</div>

			<div class="row">
				<div class="form-group col w-50">
					<label for="inputAddress2">Phone</label> <input type="tel"
						class="form-control" id="inputPhone" placeholder="Phone Number" name="phone" value="<%=cus.getPhone()%>">
				</div>
				<div class="form-group col w-50">
					<label for="inputEmail4">Email</label> <input type="email"
						class="form-control" id="inputEmail" placeholder="Email" name="email" value="<%=cus.getEmail()%>">
				</div>

			</div>

			<div class="form-group">
				<label for="inputAddress">Address</label> <input type="text"
					class="form-control" id="inputAddress"
					placeholder="1234 Main St,Apartment, studio, or floor" name="address" value="<%=cus.getAddress()%>">
			</div>

			<div class="form-row align-items-center">
				<div class="col-auto my-1">
					<label class="mr-sm-2" for="inlineFormCustomSelect">Location</label>
					<select class="custom-select mr-sm-2" id="inlineFormCustomSelect" name="selectin"><%=cus.getLocation()%>
						<option selected>Choose...</option>
						<option value="1">Bengaluru</option>
						<option value="2">Jaipur</option>
						<option value="3">Darjeeling</option>
					</select>
				</div>
				<div class="container w-50">
					<label for="inputText">Drone Shot</label> <select name="shots"
						id="droneshots" multiple><%=cus.getDrone()%>
						<option value="1">Spinning elevation shot</option>
						<option value="2">Half moon bay shot</option>
						<option value="3">Object shot</option>
						<option value="4">180-degree shot</option>
						<option value="5">Obstacle shot to reveal the subject</option>
						<option value="6">Object shot with large reveal down</option>
						<option value="7">Slow reveal out of the subject.</option>
						<option value="8">High angle shot</option>
						<option value="9">Arc shot</option>
					</select>
				</div>
			</div>
			<br>

			<div class="container text-center">
				<button type="submit" class="btn btn-success align-item-center">Update</button>
			</div>
		</form>
	</div>

<script>
		new MultiSelectTag('droneshots') // id
	</script>
</body>
</html>