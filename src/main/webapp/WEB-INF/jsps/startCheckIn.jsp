<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/14/2018
  Time: 4:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Start Check In</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js" integrity="sha384-pjaaA8dDz/5BgdFUPX6M/9SUZv4d12SUPF0axWc+VRZkx5xU3daN+lYb49+Ax+Tl" crossorigin="anonymous"></script>
</head>
<body>

<div class="container .col-md-6 .offset-md-3">
<h2>Start CheckIn :</h2>
<form action="startCheckIn" method="post">
    <div class="form-group">
        <label for="ReservationInput">Reservation ID</label>
        <input type="text" class="form-control" id="ReservationInput" name="reservationId" placeholder="Enter Reservation ID">
    </div>
    <button type="submit" class="btn btn-primary">Check In</button>

    <%--Enter Reservation Id : <input type="text" name="reservationId"/>--%>
    <%--<input type="submit" value="Start CheckIn">--%>
</form>
</div>
</body>
</html>
