package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import dao.Atmdao;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');

if(session.isNew())
    response.sendRedirect("login.jsp");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>ATM Management Login</title>\n");
      out.write("    <style>\n");
      out.write("        body {\n");
      out.write("            font-family: Arial, sans-serif;\n");
      out.write("            background-color: #f0f0f0;\n");
      out.write("            margin: 0;\n");
      out.write("            display: flex;\n");
      out.write("            align-items: center;\n");
      out.write("            justify-content: center;\n");
      out.write("            height: 100vh;\n");
      out.write("            \n");
      out.write("            background-image: url('r1.jpg');\n");
      out.write("    background-size: cover; /* Adjust how the image covers the background */\n");
      out.write("    background-repeat: no-repeat; /* Prevent image from repeating */\n");
      out.write("    /* You can add more background properties like background-position if needed */\n");
      out.write("    \n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .login-container {\n");
      out.write("            background-color: white;\n");
      out.write("            padding: 20px;\n");
      out.write("            border-radius: 5px;\n");
      out.write("            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);\n");
      out.write("            width: 300px;\n");
      out.write("            text-align: center;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .login-container h2 {\n");
      out.write("            margin-bottom: 20px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .input-group {\n");
      out.write("            margin-bottom: 15px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .input-group label {\n");
      out.write("            display: block;\n");
      out.write("            margin-bottom: 5px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .input-group input {\n");
      out.write("            width: 100%;\n");
      out.write("            padding: 8px;\n");
      out.write("            border: 1px solid #ccc;\n");
      out.write("            border-radius: 3px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .login-button {\n");
      out.write("            background-color: #007bff;\n");
      out.write("            color: white;\n");
      out.write("            padding: 10px 20px;\n");
      out.write("            border: none;\n");
      out.write("            border-radius: 3px;\n");
      out.write("            cursor: pointer;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .signup-link {\n");
      out.write("            margin-top: 10px;\n");
      out.write("            color: #007bff;\n");
      out.write("            text-decoration: none;\n");
      out.write("        }\n");
      out.write("       \n");
      out.write("/*            .message-box {\n");
      out.write("    background-color: white;\n");
      out.write("    color: #007bff;\n");
      out.write("    padding: 20px;\n");
      out.write("    border-radius: 5px;\n");
      out.write("    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);\n");
      out.write("    text-align: center;\n");
      out.write("  }*/\n");
      out.write("        \n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div class=\"login-container\">\n");
      out.write("        <h2>ATM Management Login</h2>\n");
      out.write("        <form >\n");
      out.write("            <div class=\"input-group\">\n");
      out.write("                <label for=\"accountNumber\">Account Number</label>\n");
      out.write("                <input type=\"text\" id=\"accountNumber\" name=\"accountNumber\" required>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"input-group\">\n");
      out.write("                <label for=\"pin\">PIN</label>\n");
      out.write("                <input type=\"password\" id=\"pin\" name=\"pin\" required>\n");
      out.write("            </div>\n");
      out.write("            <button class=\"login-button\" type=\"submit\">Login</button>\n");
      out.write("        </form>\n");
      out.write("        <a class=\"signup-link\" href=\"Registration.jsp\">Don't have an account? Sign up</a>\n");
      out.write("    \n");
      out.write("\n");
      out.write("         ");

             
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
               {
      out.write("\n");
      out.write("                \n");
      out.write("<!--               <div class=\"message-box\">-->\n");
      out.write("                  \n");
      out.write("<h3 style=\"color: #007bff;\">Invalid User ID and password</h3>\n");
      out.write("  </div>            ");
   }
         }
                                
      
      out.write("\n");
      out.write("       </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
