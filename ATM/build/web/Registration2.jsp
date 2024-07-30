<%@page import="dao.Atmdao"%>
<%
if(session.isNew())
    response.sendRedirect("login.jsp");
%>


<%@include file="Registration.jsp"%> 
<jsp:useBean class="model.ATM" id="A">
    <jsp:setProperty name="A" property="*"></jsp:setProperty>
</jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        
        <%
            Atmdao nd=new Atmdao();
            if(nd.insertUser(A))
                out.println("Record done");
            else
                out.println("Not Done");
            
            %>
    </center>
    </body>
</html>