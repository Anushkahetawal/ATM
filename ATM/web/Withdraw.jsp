<%@page import="dao.Atmdao"%>
<%@page import="model.ATM"%>
<%! int acc_no=0; %>
<%! ATM A=new ATM();
          Atmdao ad=new Atmdao();

%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ATM Management System - Withdraw</title>
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
  .withdraw-container {
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    padding: 20px;
    text-align: center;
  }
  h1 {
    margin-top: 0;
  }
  .balance-info {
    margin-bottom: 20px;
  }
  .amount-input {
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
<div class="withdraw-container">
  <h1>ATM Management System</h1>
  <% 
      acc_no=Integer.parseInt(session.getAttribute("account").toString());
      A=ad.searchByacc_num(acc_no);
      
  %>
  <div class="balance-info">
      <p>Left Balance: <%= A.getBalance()  %></p>
  </div>
  <form id="withdrawForm">
    <label for="amount" style="display: block; margin-bottom: 10px;">Amount to Withdraw:</label>
    <input type="number" id="amount" class="amount-input" name="minus" placeholder="Enter amount">
    
    <div class="action-buttons">
      <input type="submit" value="withdraw">  
    <button onclick="location.href='Frontpage.jsp'" >Back</button>
  </div>
    </form>
  <%
      String withdraw=null;
      withdraw=request.getParameter("minus");
      int withdraw1;
      if(withdraw!=null)
      {
          withdraw1=Integer.parseInt(withdraw);
        
          A=ad.searchByacc_num(acc_no);
          if(withdraw1 >A.getBalance())
          {
              out.println("You Dont have Sufficient Balance");
          }
          else{
          int bal=A.getBalance();
          int total=A.getBalance()-withdraw1;
          if(ad.updateBalance(total, acc_no))
              out.println("You withdraw your amount successfully");
          else
              out.println("Sorry You cant withdraw amount");
          }
      }
  %>

</div>
<script>
  function withdrawAmount() {
    const amount = document.getElementById("amount").value;
    // Process the withdrawal logic here
    // You can add your logic to update the balance or perform other actions
    alert("Amount withdrawn: $" + amount);
  }

  function goBack() {
    window.history.back();
  }
</script>
</body>
</html>
