<!DOCTYPE html>
<%@ page import="com.model.GetDetailsOfDoctorsModel"%>
<%@ page import="java.util.*"%>
<html>
<head>
<title>welcome home page</title>
<link rel="stylesheet" href="stylesheetHosp.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	font-family: 'Georgia', serif;
	margin: 0;
	padding: 0;
	background-color: #f5f5f5;
	color: #333;
}

header {
	background: linear-gradient(135deg, #1a3b6e, #4a7bbb);
	color: white;
	padding: 40px 20px;
	text-align: center;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

header h1 {
	font-size: 48px;
	font-weight: bold;
	margin: 0;
	letter-spacing: 2px;
}

.main-content {
	padding: 40px;
	background-color: #e6e6e6;
}

.table {
	border: 1px solid #333;
}

.table th, .table td {
	text-align: center;
	padding: 12px;
	border: 1px solid #333;
}

.table th {
	background-color: #1a3b6e;
	color: white;
}

.table td {
	background-color: white;
}

.btn {
	background-color: #4a7bbb;
	color: white;
	border: none;
	padding: 10px 20px;
	cursor: pointer;
	border-radius: 8px;
	transition: background-color 0.3s ease;
	font-size: 16px;
}

.btn:hover {
	background-color: #335a8b;
}

footer {
	background-color: #1a3b6e;
	color: white;
	text-align: center;
	padding: 20px;
	font-size: 16px;
	margin-top: 40px;
	box-shadow: 0 -4px 8px rgba(0, 0, 0, 0.1);
}
</style>
</head>
<body style="background-color: #E7F1EF">
	<h1 class="fontclass">
		<b>Doctors</b>
	</h1>
	<div class="container">
		<table class="table table-hover">
			<tr>
				<th>first name</th>
				<th>last name</th>
				<th>mobile number</th>
				<th>email</th>
			</tr>
			<%
	    		LinkedList<GetDetailsOfDoctorsModel> list=(LinkedList<GetDetailsOfDoctorsModel>)session.getAttribute("getDetailsofDoctors");
	    		for(GetDetailsOfDoctorsModel get:list){
	    		%>
			<tr>
				<td><%= get.getFirstname() %></td>
				<td><%= get.getLastname() %></td>
				<td><%= get.getMobilenumber() %></td>
				<td><%= get.getEmail() %></td>
			</tr>
			<%} %>
		</table>
		<button type="button" class="btn backbtn" id="addbtn">
			<a style="text-decoration: none; color: white;"
				href="patienthome.jsp"> back</a>
		</button>
	</div>
</body>
</html>