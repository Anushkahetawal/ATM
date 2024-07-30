<%@page import="model.ATM"%>
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
<title>ATM Management System - Deposit</title>
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
  .deposit-container {
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    padding: 20px;
    text-align: center;
  }
  h1 {
    margin-top: 0;
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
<div class="deposit-container">
  <h1>ATM Management System</h1>
  <form id="depositForm" method="post" action="Deposit.jsp">
    <label for="amount" style="display: block; margin-bottom: 10px;">Amount to Deposit:</label>
    <input type="number" id="amount" class="amount-input" name="depositamt" placeholder="Enter amount">
  
  <div class="action-buttons">
      <input type="submit" value="Deposit">
    <button onclick="goBack()">Back</button>
  </div>
     <%
        String addamt=null;
        addamt=request.getParameter("depositamt");
        int amt;
        if(addamt!=null)
        {
            amt=Integer.parseInt(addamt);
            Atmdao ad=new Atmdao();
            ATM A=new ATM();
            int acc_num;
            acc_num=Integer.parseInt(session.getAttribute("account").toString());
            A=ad.searchByacc_num(acc_num);
            int bal;
            bal=A.getBalance();
            int total=amt+bal;
            if(ad.updateBalance(total, acc_num))
            
                out.println("Your amount is deposited successfully");
            
            else
                out.println("Your amount is not deposited successfully"); 
        }
        
    
    
    %>
  </form>
  
</div>
   
<script>
  function depositAmount() {
    const amount = document.getElementById("amount").value;
    // Process the deposit logic here
    // You can add your logic to update the balance or perform other actions
    alert("Amount deposited: $" + amount);
  }

  function goBack() {
    window.history.back();
  }
</script>
</body>
</html>
