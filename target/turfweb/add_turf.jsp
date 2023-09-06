<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Turf</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
    }
    
    .form-container {
        background-color: #ffffff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
        width: 300px;
    }
    
    .form-container form {
        display: flex;
        flex-direction: column;
    }
    
    .form-container label {
        margin-bottom: 5px;
        font-weight: bold;
    }
    
    .form-container input[type="text"] {
        padding: 8px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 3px;
    }
    
    .form-container button {
        padding: 10px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 3px;
        cursor: pointer;
    }
    
    .form-container button:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<h1>Add Turf Details</h1>
<div class="form-container">
    <form action="add_turf" method="POST">
        <label for="name">Name</label>
        <input type="text" id="name" name="name" required>
        
        <label for="address">Address</label>
        <input type="text" id="address" name="address" required>
        
        <label for="area">Area</label>
        <input type="text" id="area" name="area" required>
        
        <label for="city">City</label>
        <input type="text" id="city" name="city" required>
        
        <label for="openinghours">Opening Hours</label>
        <input type="time" id="openinghours" name="openinghours" required>
        
        <label for="closinghours">Closing Hours</label>
        <input type="time" id="closinghours" name="closinghours" required>
        
        <button type="submit">Submit</button>
    </form>
</div>
</body>
</html>
