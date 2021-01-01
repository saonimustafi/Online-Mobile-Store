package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.sql.*;

public final class registered_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"> \n");
      out.write("        <title>Registered</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>You have registered successfully</h1>\n");
      out.write("        ");

 String name=request.getParameter("t2") ;
       String age1=request.getParameter("t3") ;
       
       String address=request.getParameter("t4") ;
       String username=request.getParameter("t5") ;
       String password=request.getParameter("t6") ;
       int id_num=1,id_max=1;
       String id_num1;
   
       try
{
   
 Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/users","root","root");
Statement stmt=null;
ResultSet rs=null;
String SQL="select * from user_details";
//String SQL="select id_num from user_details where id_num=(select max(id_num) from user_details)";
stmt=con.createStatement() ;
rs=stmt.executeQuery(SQL) ;
while(rs.next())
       {
    id_num1=(rs.getString("id_num"));
id_num=Integer.parseInt(id_num1);

if(id_num>id_max)
    id_max=id_num; 
               }

if(id_max<1)
    id_max=1;
else  
    id_max+=1;

       }
        catch(SQLException e)
{
out.println("Hey guys SQL Exception :" + e.toString());
}

catch(ClassNotFoundException cE)
{
out.println("Hey guys Class not found :" + cE.toString());
}

     

                                     
       try
{
     
 Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/users","root","root");

String SQL = "insert into user_details(name,id_num,address,username,password) values('"+name+"','"+id_max+"','"+address+"','"+username+"','"+password+"')";
Statement stmt=null;
int rs;
stmt=con.createStatement() ;
rs=stmt.executeUpdate(SQL) ;
con.close();
out.print("\n\nYour id_num is : "+id_max);
       }
       
       catch(SQLException e)
{
out.println("SQL Exception :" + e.toString());
}

catch(ClassNotFoundException cE)
{
out.println(" Class not found :" + cE.toString());
}
       
 
       
      out.write("\n");
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
