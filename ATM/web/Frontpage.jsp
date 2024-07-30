<%-- 
    Document   : Frontpage
    Created on : 9 Aug, 2023, 4:44:45 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
if(session.isNew())
    response.sendRedirect("login.jsp");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    
       background-image: url('bg10.jpg');
    background-size: cover; /* Adjust how the image covers the background */
    background-repeat: no-repeat; /* Prevent image from repeating */
    /* You can add more background properties like background-position if needed */
    
}

.atm-container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.transaction-box {
    background-color: white;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
    text-align: center;
}

h1 {
    font-size: 24px;
    margin-bottom: 20px;
}

.transaction-list {
    list-style: none;
    padding: 0;
}

.transaction-list li {
    margin: 10px 0;
    
}

.transaction-button {
    background-color: #007bff;
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 3px;
    cursor: pointer;
    transition: background-color 0.3s;
    width:100%;
}

.transaction-button:hover {
    background-color: #0056b3;
}


        </style>
    </head>
    <body>
        <div class="atm-container">
        <div class="transaction-box">
            <h1>Select Your Transaction Please</h1>
            <ul class="transaction-list">
                <li><button class="transaction-button deposit"onclick="location.href='Deposit.jsp'">Deposit</button></li>
                <li><button class="transaction-button withdraw"onclick="location.href='Withdraw.jsp'">Withdraw</button></li>
                <li><button class="transaction-button balance" onclick="location.href='Balance.jsp'">Balance Inquiry</button></li>
                <li><button class="transaction-button statement"onclick="location.href='MiniStatement.jsp'">Mini Statement</button></li>
                <li><button class="transaction-button pin"onclick="location.href='Changepin.jsp'">Change PIN</button></li>
            </ul>
        </div>
    </div>
    </body>
</html>
