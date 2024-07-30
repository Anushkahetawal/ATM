<%@page import="dao.Atmdao"%>
<%@page  session="true" %>
<%
if(session.isNew())
    response.sendRedirect("login.jsp");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ATM Management Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            
            background-image: url('r1.jpg');
    background-size: cover; /* Adjust how the image covers the background */
    background-repeat: no-repeat; /* Prevent image from repeating */
    /* You can add more background properties like background-position if needed */
    
        }

        .login-container {
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }

        .login-container h2 {
            margin-bottom: 20px;
        }

        .input-group {
            margin-bottom: 15px;
        }

        .input-group label {
            display: block;
            margin-bottom: 5px;
        }

        .input-group input {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        .login-button {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        .signup-link {
            margin-top: 10px;
            color: #007bff;
            text-decoration: none;
        }
       
/*            .message-box {
    background-color: white;
    color: #007bff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    text-align: center;
  }*/
        
    </style>
</head>
<body>
    <div class="login-container">
        <h2>ATM Management Login</h2>
        <form >
            <div class="input-group">
                <label for="accountNumber">Account Number</label>
                <input type="text" id="accountNumber" name="accountNumber" required>
            </div>
            <div class="input-group">
                <label for="pin">PIN</label>
                <input type="password" id="pin" name="pin" required>
            </div>
            <button class="login-button" type="submit">Login</button>
        </form>
        <a class="signup-link" href="Registration.jsp">Don't have an account? Sign up</a>
    

         <%
             
    String acc=null,pin=null,msg;
         acc=request.getParameter("accountNumber");
        pin=request.getParameter("pin");
        int a,p;
         if(acc!=null && pin!=null)
         {
             a=Integer.parseInt(acc);
             p=Integer.parseInt(pin);
             
               Atmdao nd=new Atmdao();
               if(nd.checkLogin(a, p))
               {
                 session.setAttribute("account", a);
                 session.setAttribute("pincode", p);
                   response.sendRedirect("Frontpage.jsp");
               }    
               else
               {%>
                
<!--               <div class="message-box">-->
                  
<h3 style="color: #007bff;">Invalid User ID and password</h3>
  </div>            <%   }
         }
                                
      %>
       </div>
    </body>
</html>