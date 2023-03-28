<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking Ticket</title>
<%@include file="all_css_js.jsp"%>
</head>
<body>
	<div class="container ">
		<%@include file="navbar.jsp"%>

		<br>



		<form>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputEmail4">First Name</label> <input type="text"
						class="form-control" id="inputFirstName" placeholder="First Name">
				</div>
				<div class="form-group col-md-6">
					<label for="inputEmail4">Last Name</label> <input type="text"
						class="form-control" id="inputLastName" placeholder="Last Name">
				</div>
			</div>

			<div class="row">
				<div class="form-group col w-50">
					<label for="inputAddress2">Phone</label> <input type="tel"
						class="form-control" id="inputPhone" placeholder="Phone Number">
				</div>
				<div class="form-group col w-50">
					<label for="inputEmail4">Email</label> <input type="email"
						class="form-control" id="inputEmail" placeholder="Email">
				</div>

			</div>

			<div class="form-group">
				<label for="inputAddress">Address</label> <input type="text"
					class="form-control" id="inputAddress"
					placeholder="1234 Main St,Apartment, studio, or floor">
			</div>

			<div class="form-row align-items-center">
				<div class="col-auto my-1">
					<label class="mr-sm-2" for="inlineFormCustomSelect">Location</label>
					<select class="custom-select mr-sm-2" id="inlineFormCustomSelect">
						<option selected>Choose...</option>
						<option value="1">Marathali</option>
						<option value="2">Jaipur</option>
						<option value="3">Cuttack</option>
					</select>
				</div>
				<div class="container w-50">
					<label for="inputText">Drone Shot</label> <select name="shots"
						id="droneshots" multiple >
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
				<button type="submit" class="btn btn-primary align-item-center">Submit</button>
			</div>
		</form>
	</div>

	<script>
		new MultiSelectTag('droneshots') // id
	</script>

</body>
</html>