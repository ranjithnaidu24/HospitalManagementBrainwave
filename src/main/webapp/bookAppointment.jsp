<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Book Appointment</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        body {
            background-color: #EBF1F1;
            font-family: 'Arial', sans-serif;
        }

        h1 {
            text-align: center;
            margin-top: 20px;
            color: #1a3b6e;
            font-weight: bold;
        }

        .form-container {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            padding: 40px;
            margin: auto;
            max-width: 700px;
        }

        .form-group {
            margin-bottom: 30px;
        }

        .logbtn {
            background-color: #007BFF;
            color: white;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s, transform 0.3s;
        }

        .logbtn:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }

        .backbtn {
            background-color: #6c757d;
            color: white;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s, transform 0.3s;
            position: absolute;
            top: 20px;
            right: 20px;
        }

        .backbtn:hover {
            background-color: #5a6268;
            transform: scale(1.05);
        }

        @media (max-width: 576px) {
            .form-container {
                width: 90%;
            }
        }
    </style>
</head>
<body>
    <h1><b>Book an Appointment</b></h1>

    <!-- Back Button -->
    <button class="btn backbtn" type="button" onclick="window.location.href='index.html'">Back</button>

    <div class="container-fluid">
        <div class="form-container">
            <!-- Form to book an appointment, submitted to the BookAppointmentServlet -->
            <form action="BookAppointmentServlet" method="post">
                <div class="form-group">
                    <label>Full Name</label>
                    <input type="text" class="form-control" name="fullName" placeholder="Enter your full name" required/>
                </div>

                <div class="form-group">
                    <label>Email</label>
                    <input type="email" class="form-control" name="email" placeholder="Enter your email" required/>
                </div>

                <div class="form-group">
                    <label>Date</label>
                    <input type="date" class="form-control" name="date" required/>
                </div>

                <div class="form-group">
                    <label>Time</label>
                    <input type="time" class="form-control" name="time" required/>
                </div>

                <div class="form-group">
                    <label>Details</label>
                    <textarea class="form-control" name="details" rows="5" placeholder="Enter additional details"></textarea>
                </div>

                <div class="form-group">
                    <button class="btn logbtn" type="submit">Book Appointment</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
