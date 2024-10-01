<!DOCTYPE html>
<%@ page import="com.model.GetDoctorsFromAdminModel"%>
<%@ page import="java.util.*"%>
<html>
<head>
    <title>Doctors Details Page</title>
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
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
        body {
            font-family: 'Georgia', serif;
            background-color: #E7F1EF;
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
        }
        .container {
            padding: 20px;
        }
        .card {
            margin: 20px 0;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .card-body {
            padding: 20px;
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
        <h1>Doctors Details</h1>
    </header>

    <div class="container">
        <%
        LinkedList<GetDoctorsFromAdminModel> list = (LinkedList<GetDoctorsFromAdminModel>) session
                .getAttribute("getDetailsofDoctors");
        for (GetDoctorsFromAdminModel get : list) {
        %>
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Dr. <%=get.getFirstname()%> <%=get.getLastname()%></h5>
                <p class="card-text">
                    <strong>Doctor ID:</strong> <%=get.getDoctorId()%><br>
                    <strong>Mobile Number:</strong> <%=get.getMobilenumber()%><br>
                    <strong>Email:</strong> <%=get.getEmail()%><br>
                    <strong>Username:</strong> <%=get.getUsername()%><br>
                    <strong>Password:</strong> <%=get.getPassword()%><br>
                </p>
            </div>
        </div>
        <%
        }
        %>

        <button type="button" class="btn">
            <a style="text-decoration: none; color: white;" href="adminhome.jsp">Back</a>
        </button>
    </div>
</body>
</html>
