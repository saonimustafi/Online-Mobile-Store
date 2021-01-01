<%-- 
    Document   : pay_now
    Created on : 15 Jul, 2013, 10:37:14 AM
    Author     : HP
--%>

<%@page session="true" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pay</title>
    </head>
    <body BGCOLOR="FFF66" TEXT="660066">
         <font size="5 pts"> 
        
        <%
        String SQL;
                
        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
Date date = new Date();
String date1=dateFormat.format(date);
session.setAttribute( "date1",date1);
        
        try
{
    
Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/users","root","root");



SQL = "insert into order_history(id_num,Name,order_amt,order_date) values('"+session.getAttribute("id_num1")+"','"+session.getAttribute("name1")+"','"+session.getAttribute("tot_amt1")+"','"+date1+"' )";
Statement stmt=null;
int rs;
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
con=DriverManager.getConnection("jdbc:mysql://localhost/users","root","root");

Statement stmt1=null;

ResultSet rs=null;
 String SQL1 = "delete from mycart where id_num='"+session.getAttribute("id_num1")+"' " ;
 stmt1=con.createStatement() ;
 int r1=stmt1.executeUpdate(SQL1) ;
 

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



response.sendRedirect("93invoice.jsp")   ;
%>

        



        
    </body>
</html>
