<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 50px auto;
            max-width: 800px;
            background-color: #f4f4f4;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        h1 {
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:hover {
            background-color: #f9f9f9;
        }

        a {
            text-decoration: none;
            color: #007bff;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<h1>User List</h1>

<table>
    <tr>
        <th>Name</th>
        <th>User id</th>
        <th>Opening hours</th>
        <th>Closing hours</th>
        <th>Date</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <tr>
        <td>Steffy</td>
        <td>50</td>
        <td>13.00</td>
        <td>14.00</td>
        <td>20-09-2023</td>
        <td><a href="#"><button>Accept</button></a></td>
        <td> <a href="#"><button>Cancel</button></a></td>
    </tr>
    <tr>
        <td>Saran</td>
        <td>51</td>
        <td>14.00</td>
        <td>15.00</td>
        <td>20-09-2023</td>
        <td><a href="#"><button>Accept</button></a></td>
        <td> <a href="#"><button>Cancel</button></a></td>
    </tr>
</table>

</body>
</html>
