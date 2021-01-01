<%-- 
    Document   : logged_in
    Created on : 13 Jul, 2013, 9:12:56 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
        <script language="JavaScript" type="text/javascript">
window.history.forward(1);
</script>
    </head>
    <body BGCOLOR="FFF66" TEXT="660066">
        
        <font size="6 pts"> 
    <center>
        <%
        int fl=-1;
        
        int id_num1;
        String name1;
        String username=request.getParameter("t7");
        String password=request.getParameter("t8");
        
        try
{
   
 Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/users","root","root");
Statement stmt=null;
ResultSet rs=null;
String SQL = "select * from user_details1";
stmt=con.createStatement() ;
rs=stmt.executeQuery(SQL) ;
while(rs.next())
     {
    String username1 =rs.getString("Username");
    String password1=rs.getString("Password");

       
      
    if(username1.equals(username) && password1.equals(password))
           {
        fl=0;
        
        id_num1=Integer.parseInt(rs.getString("id_num"));
        name1=rs.getString("Name");
        session.setAttribute( "id_num1",id_num1);
        session.setAttribute( "name1",name1);
        %>
        <p><center> Hello <b> Mr. <%out.println(name1);%> </b> , Welcome to our On-line Mobile Store !!! </center></p>
        <br><br><%
        out.println("NAME : "+rs.getString("Name")); %>
       <br><% out.println("ID_NUM : "+rs.getString("id_num")); %>
       <br><% out.println("USERNAME : "+username1); %>
       <br><% out.println("ADDRESS : "+rs.getString("Address")); %>
       <%
                  
      }
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
        
        
        
if(fl==-1)
       {
    %>
    
    <br>
<br>
<br>
<br><br>
<p><center>Enter valid username and password</center></p>
    
    <%
       }
else
{
    
    %>
             <Form action="4search.jsp"> 
                <br> 
                
                <input type="submit" value="Search"> 
                
<br>
<br>
<br>
<br><br>
 To view your cart <a href="8view_cart.jsp">Click here</a>
 <%
}
                    
%>
 </center>
    </font>
 </body>
</html>
