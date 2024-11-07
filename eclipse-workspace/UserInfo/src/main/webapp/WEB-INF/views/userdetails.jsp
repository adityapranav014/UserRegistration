<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.yourcompany.user.registration.model.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f9f9f9;
        }
        .container {
            width: 50%;
            margin: auto;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        h1 {
            color: #333;
            text-align: center;
        }
        table {
            width: 100%;
            margin-top: 20px;
        }
        td {
            padding: 8px;
            border-bottom: 1px solid #ddd;
        }
        .label {
            font-weight: bold;
            color: #555;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Registration Success</h1>
        <p>Congratulations! The following details have been successfully registered:</p>
        
        <table>
            <tr>
                <td class="label">First Name:</td>
                <td><%= ((User) request.getAttribute("user")).getFirstName() %></td>
            </tr>
            <tr>
                <td class="label">Last Name:</td>
                <td><%= ((User) request.getAttribute("user")).getLastName() %></td>
            </tr>
            <tr>
                <td class="label">Username:</td>
                <td><%= ((User) request.getAttribute("user")).getUsername() %></td>
            </tr>
            <tr>
                <td class="label">Address:</td>
                <td><%= ((User) request.getAttribute("user")).getAddress() %></td>
            </tr>
            <tr>
                <td class="label">Contact No:</td>
                <td><%= ((User) request.getAttribute("user")).getContact() %></td>
            </tr>
        </table>
    </div>
</body>
</html>