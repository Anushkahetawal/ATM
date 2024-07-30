<!DOCTYPE html>
<%
if(session.isNew())
    response.sendRedirect("login.jsp");
%>

<html>
<head>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    
     background-image: url('bg10.jpg');
    background-size: cover; /* Adjust how the image covers the background */
    background-repeat: no-repeat; /* Prevent image from repeating */
    /* You can add more background properties like background-position if needed */
   
  }

  .container {
    max-width: 400px;
    margin: 0 auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
  }

  .container h2 {
    text-align: center;
    margin-bottom: 20px;
  }

  .form-group {
    margin-bottom: 15px;
  }

  label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
  }

  input[type="text"],
  input[type="number"],
  input[type="tel"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
    font-size: 14px;
  }

  button {
    background-color: #007BFF;
    color: #fff;
    border: none;
    padding: 10px 20px;
    border-radius: 3px;
    cursor: pointer;
    width: 100%;
  }

  button:hover {
    background-color: #0056b3;
  }
</style>
</head>
<body>

<div class="container">
  <h2>ATM Management System Registration Form</h2>
  <form action="Registration2.jsp" method="post">
    <div class="form-group">
      <label for="accNum">Account Number:</label>
      <input type="number" id="accNum" name="accNum" required>
    </div>
    <div class="form-group">
      <label for="fname">First Name:</label>
      <input type="text" id="fname" name="fname" required>
    </div>
    <div class="form-group">
      <label for="lname">Last Name:</label>
      <input type="text" id="lname" name="lname" required>
    </div>
    <div class="form-group">
      <label for="dob">Date of Birth:</label>
      <input type="text" id="dob" name="dob" placeholder="DD/MM/YYYY" required>
    </div>
    <div class="form-group">
      <label for="address">Address:</label>
      <input type="text" id="address" name="address" required>
    </div>
    <div class="form-group">
      <label for="pin">PIN:</label>
      <input type="password" id="pin" name="pin" required>
    </div>
    <div class="form-group">
      <label for="education">Education:</label>
      <input type="text" id="education" name="education">
    </div>
    <div class="form-group">
      <label for="occupation">Occupation:</label>
      <input type="text" id="occupation" name="occupation">
    </div>
    <div class="form-group">
      <label for="phone">Phone Number:</label>
      <input type="tel" id="phone" name="phone" required>
    </div>
    <button type="submit">Submit</button>
  </form>
</div>

</body>
</html>
