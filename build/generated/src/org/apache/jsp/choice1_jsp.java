package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class choice1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>choice1</title>\n");
      out.write("        <script language=\"Javascript\" type=\"text/javascript\" ></script>\n");
      out.write("    </head>\n");
      out.write("    <body BGCOLOR=\"CYAN\" TEXT=\"MAGENTA\">\n");
      out.write("        <FONT FACE=\"ALGERIAN\" SIZE=\"7 PTS\"> \n");
      out.write("    <center>\n");
      out.write("        <h1>Hello World!</h1>\n");
      out.write("         ");

        String str=request.getParameter("R1");
            
         if(str.toLowerCase().trim().equals("a"))
                       { 
        
      out.write("\n");
      out.write("        <h2>Welcome to register page</h2>\n");
      out.write("        <form  action=\"registered.jsp\"> \n");
      out.write("                <br> \n");
      out.write("                Name :<input type=\"text\" name=\"t2\"> \n");
      out.write("                <br>\n");
      out.write("                Age :<input type=\"text\" name=\"t3\"> \n");
      out.write("                <br> \n");
      out.write("                Address   :<input type=\"text\" name=\"t4\"> \n");
      out.write("                <br> \n");
      out.write("                Username<input type=\"password\" name=\"t5\"> \n");
      out.write("                <br> \n");
      out.write("                Password<input type=\"password\" name=\"t6\">\n");
      out.write("                <BR>                                  \n");
      out.write("                <input type=\"submit\" value=\"Register\"> \n");
      out.write("            </FORM>\n");
      out.write("        ");

               }
        else
                       {
            out.println("<center>Welcome to login page</center>");
            
      out.write("\n");
      out.write("             <form  action=\"checklogin2.jsp\"> \n");
      out.write("                <br> \n");
      out.write("                Enter username :<input type=\"text\" name=\"t7\"> \n");
      out.write("                <br>\n");
      out.write("                Enter password :<input type=\"password\" name=\"t8\"> \n");
      out.write("                <br> \n");
      out.write("                  \n");
      out.write("                <input type=\"submit\" value=\"Login\"> \n");
      out.write("            </form>\n");
      out.write("                     \n");
      out.write("             ");

        }
        
      out.write("\n");
      out.write("        </center>\n");
      out.write("    </font>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
