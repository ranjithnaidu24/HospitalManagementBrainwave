<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>patient home page</title>
	<link rel="stylesheet" href="stylesheetHosp.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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

		nav {
			background-color: #1a3b6e;
			padding: 15px 0;
			box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
		}

		nav ul {
			display: flex;
			justify-content: center;
			list-style-type: none;
			padding: 0;
			margin: 0;
		}

		nav ul li {
			margin: 0 20px;
		}

		nav a {
			color: white;
			text-decoration: none;
			font-size: 18px;
			padding: 10px 20px;
			border-radius: 5px;
			transition: background-color 0.3s ease;
		}

		nav a:hover {
			background-color: #335a8b;
		}

		.main-content {
			padding: 40px;
			background-color: #e6e6e6;
		}

		.carousel-inner img {
			border-radius: 12px;
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
	</style>
</head>

<body>
	<header>
		<h1>Welcome to Indian Hospital</h1>
		<p>Your Health, Our Priority</p>
	</header>

	<nav class="navbar navbar-expand-md">
		<ul class="navbar-nav">
			<li class="nav-item"><a href="patienthome.jsp" class="nav-link"><i class="fa fa-home"></i> Home</a></li>
			<li class="nav-item"><a href="patientbranches.jsp" class="nav-link"><i class="fa fa-hospital-o"></i>
					Branches</a></li>
			<form method="post" name="patientlogoutform" action="logoutpatient" class="nav-item">
				<button type="submit" class="btn btn-success" id="logoutbtn" name="logoutbtn"> Logout</button>
			</form>
		</ul>
	</nav>

	<div class="main-content">
		<h1>Welcome patient <%= session.getAttribute("username") %>
		</h1>
		<form method="post" name="doctorsdetailsform" action="doctorsdetails">
			<button type="submit" class="btn" id="detailsbtn" name="detailsbtn">Get doctors</button>
		</form>
	</div>
	<footer>
		<p>&copy; 2024 Indian Hospital. All rights reserved.</p>
	</footer>

	<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>