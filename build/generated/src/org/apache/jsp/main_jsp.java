package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class main_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>LOGIN USING JSP</title>\n");
      out.write("        <script language=\"JavaScript\" type=\"text/javascript\">\n");
      out.write("window.history.forward(1);\n");
      out.write("</script>\n");
      out.write("    </head>\n");
      out.write("    <body BGCOLOR=\"BLUE\" TEXT=\"YELLOW\">\n");
      out.write("        <FONT FACE=\"ALGERIAN\" SIZE=\"7 PTS\"> \n");
      out.write("    <CENTER><h1>LOGIN FORM TO ENTER ONLINE BOOK SHOPPING PORTAL</h1>\n");
      out.write("        <form action=\"checklogin.jsp\">\n");
      out.write("            <BR> <BR>     \n");
      out.write("            USERNAME <input type=\"text\" name=\"username\"> \n");
      out.write("            <BR> <BR>          \n");
      out.write("            PASSWORD <input type=\"password\" name=\"password\">  \n");
      out.write("            <BR> <BR>  \n");
      out.write("            \n");
      out.write("          <input type=\"submit\" value=\"LOGIN\">   \n");
      out.write("               \n");
      out.write("            </form> </CENTER>\n");
      out.write("    </FONT>\n");
      out.write("     \n");
      out.write("        \n");
      out.write("                \n");
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
