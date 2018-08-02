<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/14/2018
  Time: 5:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Reservation Details</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js" integrity="sha384-pjaaA8dDz/5BgdFUPX6M/9SUZv4d12SUPF0axWc+VRZkx5xU3daN+lYb49+Ax+Tl" crossorigin="anonymous"></script>
</head>
<body>
<div class="row">
    <div class="col-6">
        <h3>Flight Details:</h3>
        <form>
            <div class="form-group row">
                <label for="staticAirLine" class="col-sm-4 col-form-label">AirLine</label>
                <div class="col-sm-8">
                    <input type="text" readonly class="form-control-plaintext" id="staticAirLine" value=${reservation.flight.operatingAirlines}>
                </div>
            </div>
            <div class="form-group row">
                <label for="staticFlight" class="col-sm-4 col-form-label">Flight No</label>
                <div class="col-sm-8">
                    <input type="text" readonly class="form-control-plaintext" id="staticFlight" value=${reservation.flight.flightNumber}>
                </div>
            </div>
            <div class="form-group row">
                <label for="staticDeparture" class="col-sm-4 col-form-label">Departure City</label>
                <div class="col-sm-8">
                    <input type="text" readonly class="form-control-plaintext" id="staticDeparture" value=${reservation.flight.departureCity}>
                </div>
            </div>
            <div class="form-group row">
                <label for="staticArrival" class="col-sm-4 col-form-label">Arrival City</label>
                <div class="col-sm-8">
                    <input type="text" readonly class="form-control-plaintext" id="staticArrival" value=${reservation.flight.arrivalCity}>
                </div>
            </div>
            <div class="form-group row">
                <label for="staticDateOfDeparture" class="col-sm-4 col-form-label">Date Of Departure</label>
                <div class="col-sm-8">
                    <input type="text" readonly class="form-control-plaintext" id="staticDateOfDeparture" value=${reservation.flight.dateOfDeparture}>
                </div>
            </div>
            <div class="form-group row">
                <label for="staticEstimatedDepartureTime" class="col-sm-4 col-form-label">Estimated Departure Time</label>
                <div class="col-sm-8">
                    <input type="text" readonly class="form-control-plaintext" id="staticEstimatedDepartureTime" value=${reservation.flight.estimatedDepartureTime}>
                </div>
            </div>
        </form>
    </div>
    <div class="col-6">
        <h3>Passenger Details</h3>
        <form>
            <div class="form-group row">
                <label for="staticFirstName" class="col-sm-2 col-form-label">First Name</label>
                <div class="col-sm-10">
                    <input type="text" readonly class="form-control-plaintext" id="staticFirstName" value=${reservation.passenger.firstName}>
                </div>
            </div>
            <div class="form-group row">
                <label for="staticLastName" class="col-sm-2 col-form-label">Last Name</label>
                <div class="col-sm-10">
                    <input type="text" readonly class="form-control-plaintext" id="staticLastName" value=${reservation.passenger.lastName}>
                </div>
            </div>
            <div class="form-group row">
                <label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
                <div class="col-sm-10">
                    <input type="text" readonly class="form-control-plaintext" id="staticEmail" value=${reservation.passenger.email}>
                </div>
            </div>
            <div class="form-group row">
                <label for="staticPhone" class="col-sm-2 col-form-label">Phone</label>
                <div class="col-sm-10">
                    <input type="text" readonly class="form-control-plaintext" id="staticPhone" value=${reservation.passenger.phone}>
                </div>
            </div>
        </form>
    </div>
</div>

<div class="row">
    <div class="col-md-6 offset-md-3">
        <form class="form-inline" action="completeCheckIn" method="post">
            <div class="form-group mb-2">
                <label for="staticBags" class="sr-only">Bags</label>
                <input type="text" readonly class="form-control-plaintext" id="staticBags" value="Number of Bags">
            </div>
            <div class="form-group mx-sm-3 mb-2">
                <label for="inputNumberOfBags" class="sr-only">Number of Bags</label>
                <input type="text" class="form-control" id="inputNumberOfBags" name="numberOfBags" placeholder="Number of Bags">
                <input type="hidden" value="${reservation.id}" name="reservationId"/>
            </div>
            <button type="submit" class="btn btn-primary mb-2" value="Check In">Check In</button>
        </form>
    </div>
</div>

<%--<form action="completeCheckIn" method="post">--%>
    <%--Enter number of bags you want to check in: <input type="text" name="numberOfBags"/>--%>
    <%--<input type="hidden" value="${reservation.id}" name="reservationId"/>--%>
    <%--<input type="submit" value="Check In"/>--%>
<%--</form>--%>

</body>
</html>
