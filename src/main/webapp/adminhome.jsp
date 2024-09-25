<!DOCTYPE html>
<html>
<head>
<title>administration home page</title>
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
.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown-content a {
	float: none;
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown .dropbtn {
	font-size: 16px;
	border: none;
	outline: none;
	color: Black;
	padding: 13px 16px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
}

.navbar {
	background-color: #E6EEEE;
}

#addbtn {
	color: black;
	box-shadow: 5px 5px gray;
}

.hero-image {
	background-image: linear-gradient(rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.7)),
		url("Hospimage1.jpg");
	height: 375%;
	width: 100%;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
	border-radius: 30px 30px 30px 30px;
}

.hero-text {
	text-align: center;
}

.fontclass {
	font-family: Times New Roman;
}

#logoutbtn {
	position: absolute;
	top: 30px;
}
</style>
</head>
<body style="background-color: #EBF1F1">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<nav class="navbar navbar-expand-md">
					<ul class="navbar-nav">
						<h1 class="fontclass">
							<b>Admin home page</b>
						</h1>
						<form method="post" name="adminlogoutform" action="adminlogout">
							<button type="submit" class="btn btn-success" id="logoutbtn"
								name="logoutbtn">Logout</button>
						</form>
					</ul>
				</nav>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="hero-image">
					<div class="hero-text">
						<h1 class="fontclass">
							<b>Welcome <%=session.getAttribute("username") %></b>
						</h1>
						<p class="fontclass" style="font-size: 20px">
							<b>Want to add a doctor ?</b>
						</p>
						<button type="button" class="btn btn-light" id="addbtn">
							<a href="doctorregisterthroughadmin.html"><i
								class="fa fa-plus" aria-hidden="true"></i> Add Doctor</a>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>