package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.sql.*;

public final class order_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body bgcolor=\"blue\" text=\"yellow\">\n");
      out.write("        <font face=\"algerian\" size=\"5 pts\"> \n");
      out.write("        <form  action=\"bill.jsp\">\n");
      out.write("            <center><h1> YOUR ORDER DETAILS </h1></center>\n");
      out.write("       \n");
      out.write("        \n");
      out.write("        ");

 String bookid=request.getParameter("t2") ;
       String qt=request.getParameter("t5") ;
       int stock=Integer.parseInt(qt) ;
       int st,fl=-1;
       try
{
   
 Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/abc","root","root");
Statement stmt=null;
ResultSet rs=null;
String SQL = "select * from book where bookid = '"+bookid+"' " ;
stmt=con.createStatement() ;
rs=stmt.executeQuery(SQL) ;
while(rs.next())
       {
       String str=rs.getString("STOCK");  
       st=Integer.parseInt(str);
       if(stock>st)
           fl=0;
             }
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
if(fl==0)
{
    
      out.write("\n");
      out.write("    <BR> \n");
      out.write("    SORRY BOOK ORDERED IS OUT OF STOCK \n");
      out.write("    ");

} 
else
{         
        try
{
     
 Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/abc","root","root");

String customer=request.getParameter("t3") ;
String card=request.getParameter("t4") ;
String bk=request.getParameter("bank") ;

String od=request.getParameter("t6")  ;
int ccard=Integer.parseInt(card) ;

String bank;       
Statement stmt=null;
int rs=0;
if(bk.toLowerCase().trim().equals("1")) 
    bank="SBI";
else
    bank="UBI";

String SQL = "insert into order_details(bookid,customer,ccard,bank,qty,odate) values('"+bookid+"','"+customer+"','"+ccard+"','"+bank+"','"+stock+"','"+od+"') " ;
 stmt=con.createStatement() ;
 rs=stmt.executeUpdate(SQL) ;
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


try
{
    
 Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/abc","root","root");

Statement stmt=null;
ResultSet rs=null;

String SQL1 = "select * from order_details where ocode = (select max(ocode) from order_details) "; 
 stmt=con.createStatement() ;
 rs=stmt.executeQuery(SQL1) ;
 
      out.write("\n");
      out.write("<table border=\"3\" bordercolor=\"white\"> \n");
      out.write("    <tr> \n");
      out.write("        <td colspan=\"14\">ORDERCODE</td> <td colspan=\"14\">BOOKID</td> <td colspan=\"14\">CUSTOMER</td> \n");
      out.write("        <td colspan=\"14\">CREDIT CARD</td> <td colspan=\"14\">BANK</td> <td colspan=\"14\">QUANTITY</td>\n");
      out.write("        <td colspan=\"14\">ORDERDATE</td\n");
      out.write("    </tr>\n");
      out.write("       \n");
      out.write("\n");

while(rs.next())
   {
    
      out.write("\n");
      out.write("<tr> \n");
      out.write(" <td colspan=\"14\"> ");
 out.println(rs.getString("ocode")) ;
      out.write("</td>\n");
      out.write(" <td colspan=\"14\"> ");
 out.println(rs.getString("bookid")) ;
      out.write(" </td> \n");
      out.write(" <td colspan=\"14\"> ");
 out.println(rs.getString("customer")) ;
      out.write("</td> \n");
      out.write(" <td colspan=\"14\"> ");
 out.println(rs.getString("ccard")) ;
      out.write("</td>\n");
      out.write(" <td colspan=\"14\"> ");
 out.println(rs.getString("bank")) ;
      out.write(" </td> \n");
      out.write(" <td colspan=\"14\"> ");
 out.println(rs.getString("qty")) ;
      out.write("</td> \n");
      out.write(" <td colspan=\"14\"> ");
 out.println(rs.getString("odate")) ;
      out.write("</td>\n");
      out.write(" </tr>\n");
      out.write(" ");

 }
 
      out.write("\n");
      out.write(" \n");
      out.write("</table>\n");

 String SQL = "update book set stock = stock - '"+stock+"' where bookid = '"+ bookid +"' " ;
 stmt=con.createStatement() ;
 int r=stmt.executeUpdate(SQL) ; 
 con.close() ;
}
catch(SQLException e)
{
out.println("SQL Exception :" + e.toString());
}

catch(ClassNotFoundException cE)
{
out.println(" Class not found :" + cE.toString());
}
               

      out.write(" \n");
      out.write("<BR> \n");
      out.write("RE-ENTER ORDER CODE <input type=\"text\" size=\"10\" name=\"oc\"> \n");
      out.write("<br> \n");
      out.write("PROCESS THE ORDER \n");
      out.write("<input type=\"radio\" name=\"r1\" value=\"t\"> YES\n");
      out.write("<input type=\"radio\" name=\"r1\" value=\"f\"> NO\n");
      out.write("<br>\n");
      out.write("<input type=\"submit\" value=\"output\"> \n");

}

      out.write("\n");
      out.write("        </FORM> \n");
      out.write("        </FONT> \n");
      out.write("</body>\n");
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
