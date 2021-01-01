<%-- 
    Document   : registered
    Created on : 13 Jul, 2013, 10:47:36 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>Registered</title>
    </head>
    <body BGCOLOR="FFF66" TEXT="660066">
        <font face="algerian" size="6 pts"> 
        <h1><center>You have registered successfully</center></h1>
        <hr>
    <center>
        <%
 /*  String name=request.getParameter("t2") ;
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

String SQL = "insert into user_details(Name,id_num,Address,Username,Password) values('"+name+"','"+id_max+"','"+address+"','"+username+"','"+password+"')";
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
       
 */
       %>
     <%  
       String name=request.getParameter("t2") ;
       
       
       String address=request.getParameter("t4") ;
       String username=request.getParameter("t5") ;
       String password=request.getParameter("t6") ;
      
       
       try
{
     
 Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/users","root","root");

String SQL = "insert into user_details1(Name,Address,Username,Password) values('"+name+"','"+address+"','"+username+"','"+password+"')";
Statement stmt=null;
int rs;
stmt=con.createStatement() ;
rs=stmt.executeUpdate(SQL) ;
con.close();
//out.print("\n\nYour id_num is : "+id_num);
//session.setAttribute( "name1",name);
//session.setAttribute( "id_num1",id_num);
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
       <br>
       <h5>
       To login <a href="1register_or_login.jsp">Click Here</a>
       </h5>
       
       
       </center>
       </font>
    </body>
</html>
