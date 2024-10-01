<!DOCTYPE html>
<%@ page import="com.model.GetDetailsOfDoctorsModel"%>
<%@ page import="java.util.*"%>
<html>
<head>
    <title>Doctors List</title>
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

    <style>
        body {
            font-family: 'Georgia', serif;
            background-color: #E7F1EF;
            margin: 0;
            padding: 0;
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
        .container {
            padding: 40px;
        }
        .doctor-card {
            margin-bottom: 20px;
            padding: 20px;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            cursor: pointer;
            transition: transform 0.3s ease, height 0.3s ease;
        }
        .doctor-card:hover {
            transform: scale(1.05);
        }
        .doctor-card p {
            font-size: 18px;
            margin: 0;
            line-height: 1.5;
        }
        .doctor-card-details {
            display: none;
            margin-top: 10px;
        }
        .doctor-card.active .doctor-card-details {
            display: block;
        }
        .doctor-card.active {
            height: auto;
        }
        .btn-appointment {
            background-color: #4a7bbb;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 8px;
            transition: background-color 0.3s ease;
            font-size: 16px;
            margin-top: 10px;
            display: block;
        }
        .btn-appointment:hover {
            background-color: #335a8b;
        }
        .btn-back {
            background-color: #4a7bbb;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 8px;
            transition: background-color 0.3s ease;
            font-size: 16px;
            margin-top: 20px;
        }
        .btn-back:hover {
            background-color: #335a8b;
        }
    </style>
</head>
<body>
    <header>
        <h1>Doctors</h1>
    </header>

    <div class="container">
        <%
        LinkedList<GetDetailsOfDoctorsModel> list = (LinkedList<GetDetailsOfDoctorsModel>) session.getAttribute("getDetailsofDoctors");
        for (GetDetailsOfDoctorsModel get : list) {
        %>
        <div class="doctor-card" onclick="toggleCard(this)">
            <p><strong>Doctor Name:</strong> <%= get.getFirstname() + " " + get.getLastname() %></p>
            <div class="doctor-card-details">
                <p><strong>Mobile Number:</strong> <%= get.getMobilenumber() %></p>
                <p><strong>Email:</strong> <%= get.getEmail() %></p>
                <!-- Book Appointment Button -->
                <button class="btn-appointment" onclick="bookAppointment('<%= get.getEmail() %>')">Book Appointment</button>
            </div>
        </div>
        <%
        }
        %>
        <button type="button" class="btn-back">
            <a style="text-decoration: none; color: white;" href="patienthome.jsp">Back</a>
        </button>
    </div>

    <script>
        function toggleCard(card) {
            // Toggle the 'active' class to expand/collapse the card
            card.classList.toggle('active');
        }

        function bookAppointment(doctorId) {
            // Redirect to the appointment booking page with the doctor's ID
            window.location.href = "bookAppointment.jsp?doctorId=" + doctorId;
        }
    </script>
</body>
</html>
