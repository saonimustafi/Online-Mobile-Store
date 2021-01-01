package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.sql.*;

public final class test_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page test</title>\n");
      out.write("        <script language=\"Javascript\" type=\"text/javascript\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1><center>Hello World!</center></h1>\n");
      out.write("        ");

        out.print("This is in Javascript\n");
        
      out.write("\n");
      out.write("        \n");
      out.write("        <h2><center>Here goes the book details :</center></h2>\n");
      out.write("    </body>\n");
      out.write("</html>\n");

        try
{
 Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/book","root","root");
 
      out.write("\n");
      out.write("<br>\n");

String SQL = "select * from classics where Price between 130 and 150" ;
Statement stmt=null;
ResultSet rs=null;
   stmt=con.createStatement() ;
rs=stmt.executeQuery(SQL) ;  

      out.write("\n");
      out.write("<table border=\"3\" bordercolor=\"white\"> \n");
      out.write("    <tr> \n");
      out.write("        <td colspan=\"14\">NAME</td> <td colspan=\"14\">BOOK ID</td> <td colspan=\"14\">AUTHOR</td> \n");
      out.write("        <td colspan=\"14\">PRICE</td> \n");
      out.write("    </tr>\n");
      out.write("    <tr>    \n");
      out.write("\n");

while(rs.next())
{
 
    
      out.write("  \n");
      out.write(" <td colspan=\"14\"> ");
 out.println(rs.getString("Name")) ;
      out.write("</td>\n");
      out.write(" <td colspan=\"14\"> ");
 out.println(rs.getString("Book_id")) ;
      out.write(" </td> \n");
      out.write(" <td colspan=\"14\"> ");
 out.println(rs.getString("Author")) ;
      out.write("</td> \n");
      out.write(" <td colspan=\"14\"> ");
 out.println(rs.getString("Price")) ;
      out.write("</td>\n");
      out.write(" </tr>\n");
      out.write("     ");

 
 
         }

      out.write("   \n");
      out.write("</table> \n");

con.close();
}
        
       

catch(SQLException e)
{
out.println("SQL Exception :" + e.toString());
}

catch(ClassNotFoundException cE)
{
out.println(" Class not found :" + cE.toString());
}

      out.write(' ');
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
