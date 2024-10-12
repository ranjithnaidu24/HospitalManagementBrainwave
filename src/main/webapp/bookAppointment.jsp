<%@ page import="com.model.GetDetailsOfDoctorsModel"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>Book Appointment</title>
    <link rel="stylesheet" href="stylesheetHosp.css">
    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>Book Appointment</h1>

        <%
        // Get doctorId from the query string
        String doctorId = request.getParameter("doctorId");
        // Fetch doctor's details from the database using doctorId (dummy example)
        GetDetailsOfDoctorsModel doctor = null;
        LinkedList<GetDetailsOfDoctorsModel> list = (LinkedList<GetDetailsOfDoctorsModel>) session.getAttribute("getDetailsofDoctors");
        for (GetDetailsOfDoctorsModel get : list) {
            if (get.getEmail().equals("email")) {
                doctor = get;
                break;
            }
        }
        %>

        <div class="doctor-info">
            <h3>Doctor: <%= doctor.getFirstname() + " " + doctor.getLastname() %></h3>
            <p><strong>Email:</strong> <%= doctor.getEmail() %></p>
            <p><strong>Mobile:</strong> <%= doctor.getMobilenumber() %></p>
        </div>

        <form action="submitAppointment.jsp" method="post">
            <input type="hidden" name="doctorId" value="<%= doctorId %>" />
            <div class="form-group">
                <label for="appointmentDate">Appointment Date:</label>
                <input type="date" name="appointmentDate" id="appointmentDate" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="appointmentTime">Appointment Time:</label>
                <input type="time" name="appointmentTime" id="appointmentTime" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="patientRemarks">Remarks (Optional):</label>
                <textarea name="patientRemarks" id="patientRemarks" class="form-control"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</body>
</html>
