<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="in.fssa.turf.model.Booking"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Turf Book</title>
</head>
<body>

	<h1>Turf Book</h1>

	<%
	String email = (String) request.getSession().getAttribute("logged email");
	%>

	


	<style>
body {
    font-family: Arial, sans-serif;
    text-align: center;
    margin: 50px auto;
    max-width: 400px;
    background-color: #000;
    color: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
    color: #fff;
}

label {
    display: block;
    font-weight: bold;
    margin: 10px 0;
    color: #fff;
}

input, select {
    width: calc(100% - 16px);
    padding: 8px;
    margin: 6px 0;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
    background-color: #333;
    color: #fff;
}

input[type="date"], input[type="time"] {
    width: calc(100% - 16px);
    padding: 8px;
    margin: 6px 0;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
    background-color: #333;
    color: #fff;
}

input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
}

input[type="submit"]:hover {
    background-color: #45a049;
}

</style>
<script>
    function validateTime() {
        var fromTime = document.getElementById("fromTime").value;
        var toTime = document.getElementById("toTime").value;

        if (fromTime === toTime) {
            alert("Start time and end time cannot be the same");
            return false;
        }

        return true;
    }
</script>

<form action="booking/create" method="get" onsubmit="return validateTime()">


<script>
    function validateTime() {
        var fromTime = document.getElementById("fromTime").value;
        var toTime = document.getElementById("toTime").value;

        if (fromTime === toTime) {
            alert("Start time and end time cannot be the same");
            return false;
        }

        var selectedTime = fromTime + "-" + toTime;

        if (localStorage.getItem("selectedTime") === selectedTime) {
            alert("You have already selected this time");
            return false;
        }

        localStorage.setItem("selectedTime", selectedTime);

        return true;
    }
</script>

<form action="booking/create" method="get" onsubmit="return validateTime()">
    <!-- Your form elements -->
    <label for="email">Email Id:</label> <input type="email" id="email"
			name="email" value="<%=email%>" readonly> 
			
			<label for="turfId">Turf id:</label> 
			<input type="text" id="turfId" name="turfId"
			value="<%=request.getParameter("turfId")%>" readonly>
			<br> <br>
		<label for="fromTime">Start time</label> <input type="time"
			id="fromTime" name="fromTime" min="06:00" max="22:00"
			value="<?php echo date('H:i'); ?>"> <br> <br> <label
			for="toTime">End time</label> <input type="time" id="toTime"
			name="toTime" min="06:00" max="22:00"
			value="<?php echo date('H:i'); ?>"> <br> <br> <label
			for="date">Select Date:</label> <input type="date" id="date"
			name="gamedate"> <input type="submit" value="Submit">
    
</form>
</body>
</html>
