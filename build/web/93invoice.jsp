<%-- 
    Document   : invoice
    Created on : 15 Jul, 2013, 11:15:54 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body BGCOLOR="FFF66" TEXT="660066">
         <font size="5 pts"> 
    <center>
        <p> Welcome <b> Mr. <%out.println(session.getAttribute("name1"));%> </b> </p>
        <h2><center>IN-VOICE</center></h2>
        <hr>
        
        <%
        
        String SQL="";
         int order_no=0;
         try
{
   
 Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/users","root","root");
Statement stmt=null;
ResultSet rs=null;
SQL="select * from order_history where serial=(select max(serial) from order_history where id_num='"+session.getAttribute("id_num1")+"')   "    ;
stmt=con.createStatement() ;
rs=stmt.executeQuery(SQL) ;
while(rs.next())
{    
    order_no=Integer.parseInt(rs.getString("serial"));

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
                 
         
        %>
        
        
        
       
        
        
        <br> <br> <% out.print("\n\nName : "+session.getAttribute("name1")); %>
        <br><%    out.print("id_num : "+session.getAttribute("id_num1")); %>
        <br><%    out.print("Total amount : "+session.getAttribute("tot_amt1")); %>
        <br><br><%    out.print("Order Number : "+order_no); %>
        <br><%    out.print("Order Date : "+session.getAttribute("date1")); %>
        <p>
        <h3><center>Thank you for visiting our portal.</center></h3>
        </p>
        
        <br> <br> 
        <p align="right">
            You are logged out<br>
            To login again <a href="1register_or_login.jsp">Click here</a>
            
            
        </p>
</center>
    </font>
    </body>
</html>
