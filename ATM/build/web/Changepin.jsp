<%@page import="dao.Atmdao"%>
<!DOCTYPE html>
<%
if(session.isNew())
    response.sendRedirect("login.jsp");
%>

<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ATM Management System - Change PIN</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f5f5f5;
    margin: 0;
    padding: 0;
    display: flex;
    align-items: center;
    justify-content: center;
    min-height: 100vh;
    
    background-image: url('bg10.jpg');
    background-size: cover; /* Adjust how the image covers the background */
    background-repeat: no-repeat; /* Prevent image from repeating */
    /* You can add more background properties like background-position if needed */
        
  }
  .changepin-container {
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    padding: 20px;
    text-align: center;
  }
  h1 {
    margin-top: 0;
  }
  .pin-input {
    width: 100%;
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
  }
  .action-buttons {
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  .action-buttons button {
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 4px;
    padding: 10px 20px;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }
  .action-buttons button:hover {
    background-color: #0056b3;
  }
</style>
</head>
<body>
<div class="changepin-container">
  <h1>ATM Management System</h1>
  <form id="changepinForm" method="Changepin.jsp">
    <label for="newPin" style="display: block; margin-bottom: 10px;">New PIN:</label>
    <input type="password" name="newPin" class="pin-input" placeholder="Enter new PIN">
    <label for="confirmPin" style="display: block; margin-top: 20px; margin-bottom: 10px;">Confirm PIN:</label>
    <input type="password" name="confirmPin" class="pin-input" placeholder="Confirm new PIN">
 
  <div class="action-buttons">
      <input type="submit" value="Change Pin">
    <button onclick="goBack()">Back</button>
  </div>
     </form>
  <%
      String c=null,d=null;
      c=(request.getParameter("newPin"));
      d=(request.getParameter("confirmPin"));
      int a,b;
      if(c!=null && d!=null)
      {
          a=Integer.parseInt(c);
          b=Integer.parseInt(d);
          
          if(a!=b)
              out.println("New Pin and Confirm Pin must be same try again");
          else
          {
              int acc_no=Integer.parseInt(session.getAttribute("account").toString());     
              Atmdao ad=new Atmdao();
              if(ad.updatePin(a, acc_no))
                  out.print("Pin is updated successfully");
              else
                  out.print("Pin is not updated successfully");
          }
      }
      
  %>
</div>
<script>
  function goBack() {
    window.history.back();
  }
</script>
</body>
</html>
