<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Turf Book</title>
</head>
<body>

<h1>Turf Book</h1>

<% String email = (String) request.getSession().getAttribute("logged email"); %>

<form action=booking/create method="get">
 <label for="email">Email Id:</label>
    <input type="email" id="email" name="email" value="<%=email%>">

    <label for="turfId">Turf ID:</label>
    <input type="text" id="turfId" name="turfId" value="<%=request.getParameter("turfId") %>"><br><br>

<label for="fromTime">From Time</label>
<input type="time" id="fromTime" name="fromTime" min="00:00" max="23:59" value="<?php echo date('H:i'); ?>">
   
<br><br>

<label for="toTime">To Time</label>
<input type="time" id="toTime" name="toTime" min="00:00" max="23:59" value="<?php echo date('H:i'); ?>">

    <br><br>

    <label for="date">Select Date:</label>
    <input type="date" id="date" name="gamedate" min="<%=java.time.LocalDate.now()%>">

    <input type="submit" value="Submit">
</form>


<style>
body {
    font-family: Arial, sans-serif;
    text-align: center;
    margin: 50px auto;
    max-width: 400px;
    background-color: #f4f4f4;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0,0,0,0.1);
}

h1 {
    color: #333;
}

label {
    display: block;
    font-weight: bold;
    margin: 10px 0;
}

input, select {
    width: 100%;
    padding: 8px;
    margin: 6px 0;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
}

select {
    appearance: none;
    -webkit-appearance: none;
    -moz-appearance: none;
    background: url('arrow.png') no-repeat right center;
    padding-right: 30px; /* Adjust as needed */
}

input[type="date"] {
    width: 100%;
    padding: 8px;
    margin: 6px 0;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
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

</body>
</html>
