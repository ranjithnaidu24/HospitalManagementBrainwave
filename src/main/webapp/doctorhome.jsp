<!DOCTYPE html>
<html>
    <head>
        <title>doctor home page</title>
        <link rel="stylesheet" href="stylesheetHosp.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

        <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
        	.dropdown-content {
			  display: none;
			  position: absolute;
			  background-color: #f9f9f9;
			  min-width: 160px;
			  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
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
			.fontclass{
			font-family:Times New Roman;
			}
			#logoutbtn{
			position:absolute;
			top:13px;
			}
        </style>
    </head>
    <body style="background-color:#EBF1F1">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <nav class="navbar navbar-expand-md">
                        <ul class="navbar-nav">
                            <li class="nav-item"><a href="HospitalIndex1.html" class="nav-link"><i class="fa fa-home"></i> Home</a></li>
                            <li class="nav-item"><a href="doctors.html" class="nav-link"><i class="fa fa-user-md"></i> Doctors</a></li>
                            <li class="nav-item"><a href="branches.html" class="nav-link"><i class="fa fa-map-marker"></i> Branches</a></li>
                            <form method="post" name="doctorlogoutform" action="doctorlogout">
                            	<button type="submit" class="btn btn-success" id="logoutbtn" name="logoutbtn">Logout</button>
                            </form>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <h1 class="fontclass"><b>Welcome doctor <%= session.getAttribute("username") %></b></h1>
<!--
        <div class="container">
            <div class="row">
                <div id="mycarousel" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#mycarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#mycarousel" data-slide-to="1"></li>
                        <li data-target="#mycarousel" data-slide-to="2"></li>
                        <li data-target="#mycarousel" data-slide-to="3"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="Hospimage1.jpg" alt="Hospimage1.jpg" class="d-block w-100">
                        </div>
                        <div class="carousel-item">
                            <img src="Hospimage2.jpg" alt="Hospimage2.jpg" class="d-block w-100">
                        </div>
                        <div class="carousel-item">
                            <img src="Hospimage3.jpg" alt="Hospimage3.jpg" class="d-block w-100">
                        </div>
                        <div class="carousel-item">
                            <img src="Hospimage4.jpg" alt="Hospimage4.jpg" class="d-block w-100">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#mycarousel" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#mycarousel" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
-->
    </body>
</html>