package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Frontpage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");

if(session.isNew())
    response.sendRedirect("login.jsp");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("            body {\n");
      out.write("    margin: 0;\n");
      out.write("    padding: 0;\n");
      out.write("    font-family: Arial, sans-serif;\n");
      out.write("    background-color: #f0f0f0;\n");
      out.write("    \n");
      out.write("       background-image: url('bg10.jpg');\n");
      out.write("    background-size: cover; /* Adjust how the image covers the background */\n");
      out.write("    background-repeat: no-repeat; /* Prevent image from repeating */\n");
      out.write("    /* You can add more background properties like background-position if needed */\n");
      out.write("    \n");
      out.write("}\n");
      out.write("\n");
      out.write(".atm-container {\n");
      out.write("    display: flex;\n");
      out.write("    justify-content: center;\n");
      out.write("    align-items: center;\n");
      out.write("    height: 100vh;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".transaction-box {\n");
      out.write("    background-color: white;\n");
      out.write("    padding: 20px;\n");
      out.write("    border-radius: 5px;\n");
      out.write("    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);\n");
      out.write("    text-align: center;\n");
      out.write("}\n");
      out.write("\n");
      out.write("h1 {\n");
      out.write("    font-size: 24px;\n");
      out.write("    margin-bottom: 20px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".transaction-list {\n");
      out.write("    list-style: none;\n");
      out.write("    padding: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".transaction-list li {\n");
      out.write("    margin: 10px 0;\n");
      out.write("    \n");
      out.write("}\n");
      out.write("\n");
      out.write(".transaction-button {\n");
      out.write("    background-color: #007bff;\n");
      out.write("    color: white;\n");
      out.write("    border: none;\n");
      out.write("    padding: 10px 20px;\n");
      out.write("    border-radius: 3px;\n");
      out.write("    cursor: pointer;\n");
      out.write("    transition: background-color 0.3s;\n");
      out.write("    width:100%;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".transaction-button:hover {\n");
      out.write("    background-color: #0056b3;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"atm-container\">\n");
      out.write("        <div class=\"transaction-box\">\n");
      out.write("            <h1>Select Your Transaction Please</h1>\n");
      out.write("            <ul class=\"transaction-list\">\n");
      out.write("                <li><button class=\"transaction-button deposit\"onclick=\"location.href='Deposit.jsp'\">Deposit</button></li>\n");
      out.write("                <li><button class=\"transaction-button withdraw\"onclick=\"location.href='Withdraw.jsp'\">Withdraw</button></li>\n");
      out.write("                <li><button class=\"transaction-button balance\" onclick=\"location.href='Balance.jsp'\">Balance Inquiry</button></li>\n");
      out.write("                <li><button class=\"transaction-button statement\"onclick=\"location.href='MiniStatement.jsp'\">Mini Statement</button></li>\n");
      out.write("                <li><button class=\"transaction-button pin\"onclick=\"location.href='Changepin.jsp'\">Change PIN</button></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
