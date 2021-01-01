<%-- 
    Document   : view_cart
    Created on : 15 Jul, 2013, 9:04:43 AM
    Author     : HP
--%>

<%@page session="true" contentType="text/html" pageEncoding="UTF-8"%>
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
         <p> Welcome <b> Mr. <%out.println(session.getAttribute("name1"));%> </b> , This is your cart !!! </p>
         <br>
    <center>
         <%
         String SQL="";
         int tot_amt=0;
         try
{
   
 Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/users","root","root");
Statement stmt=null;
ResultSet rs=null;
 
SQL="select * from mycart where id_num='"+session.getAttribute("id_num1")+"'   "    ;
stmt=con.createStatement() ;
rs=stmt.executeQuery(SQL) ;
%>
<table border="3" bordercolor="white"> 
    <tr> 
        <td colspan="14">MODEL_NO</td> <td colspan="14">QUANTITY</td> <td colspan="14">AMOUNT</td> 
        
    </tr>
    <tr>    

<%
while(rs.next())
{
 
    %>  
 <td colspan="14"> <% out.println(rs.getString("Model_no")) ;%></td>
 <td colspan="14"> <% out.println(rs.getString("Qty")) ;%> </td> 
 <td colspan="14"> <% out.println(rs.getString("Amount")) ;%> </td>
 
 <%
 tot_amt=tot_amt+Integer.parseInt(rs.getString("Amount"));
 //out.println(rs.getString("Amount")) ;%></td> 
 
 </tr>
     <%
 
 
         }
%>   
</table> 

<%
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
<BR> 
<BR> 
<br>
<br>
<% out.print("Your total amount : Rs."+tot_amt); 

session.setAttribute( "tot_amt1",tot_amt);
%>

<br><br>
<br> 
To place order <a href="91pay.jsp">Click here</a> to pay now.

        <br> <br> <br>
        <p align="right">
            To go to user homepage <a href="4search.jsp">Click here</a>
            <br>To log out <a href="1register_or_login.jsp">Click here</a>
            
        </p>
    </center>
        </font>
    </body>
</html>
