<%-- 
    Document   : add_remove_cart
    Created on : 15 Jul, 2013, 2:00:21 AM
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
        <font size="6 pts"> 
    <center>
       
        <%
String st=request.getParameter("RA");
String model=request.getParameter("t1");
int price=0, amt=0;
int Qty1=Integer.parseInt(request.getParameter("t2"));
int qty1=0;
String SQL;
String SQL1="", SQL2="";
int c=0; //For count of no. of same model orders from same account in Adding to mycart


try   //To get the price of the model
{
   
 Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/users","root","root");
Statement stmt=null;
ResultSet rs=null;
 




SQL="select * from mobiles where Model_no='"+model+"'   "    ;
stmt=con.createStatement() ;
rs=stmt.executeQuery(SQL) ;
while(rs.next())
       {
price=Integer.parseInt(rs.getString("Price"));
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
                     







if(st.equals("R"))   //To remove from cart
       {

                      try
{
   
 Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/users","root","root");
Statement stmt=null;
ResultSet rs=null;
 


SQL="select * from mycart where id_num='"+session.getAttribute("id_num1")+"' and Model_no='"+model+"'   "    ;
stmt=con.createStatement() ;
rs=stmt.executeQuery(SQL) ;
while(rs.next())
       {
qty1=Integer.parseInt(rs.getString("Qty"));

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
                     


    if(Qty1<=qty1)  //OK, can remove from cart
       {
    try
{
    
 Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/users","root","root");

Statement stmt=null;
Statement stmt2=null;
ResultSet rs=null;

amt=price*Qty1;
SQL = "update mycart set Qty = Qty - '"+Qty1+"', Amount=Amount-'"+amt+"' where id_num='"+session.getAttribute("id_num1")+"' and Model_no='"+model+"' " ;
 stmt=con.createStatement() ;
 int r=stmt.executeUpdate(SQL) ; 
 
 SQL2 = "update mobiles set Stock=Stock+'"+Qty1+"' where Model_no='"+model+"' " ;
 stmt2=con.createStatement() ;
 int r2=stmt2.executeUpdate(SQL2) ; 
 
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
    
    response.sendRedirect("8view_cart.jsp");
}
          
     else if(Qty1>qty1)
           

 {
%>
     
<p><h1><center>Sorry!!! Please check your cart</center></h1></p>
    <p> 
     <br><br>
 To view your cart <a href="8view_cart.jsp">Click here</a>
 <br><br>To continue shopping<a href="4search.jsp">Click here</a>
    </p>
               
    <%
               }
               
                                           
}




else if(st.equals("A"))             // Adding to myCart
          {
      try
{
   
 Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/users","root","root");
Statement stmt=null;
ResultSet rs=null;
 
SQL="select * from mobiles where Model_no='"+model+"'   "    ;
stmt=con.createStatement() ;
rs=stmt.executeQuery(SQL) ;
while(rs.next())
       {
qty1=Integer.parseInt(rs.getString("Stock"));
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
                     


    if(Qty1<=qty1)   //OK, can add to cart
       {
        
        try
{
   
 Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/users","root","root");
Statement stmt=null;
ResultSet rs=null;
 
SQL="select * from mycart where Model_no='"+model+"' and id_num='"+session.getAttribute("id_num1")+"'  "    ;
stmt=con.createStatement() ;
rs=stmt.executeQuery(SQL) ;
while(rs.next())
       {
    if(rs.getString("Model_no")!="")
c=c+1;
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
        
        
        
        if(c>0)             // If there are more than one case with same id_num and model no.
                       {
            try
{
    
 Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/users","root","root");

Statement stmt1=null;
Statement stmt2=null;
ResultSet rs=null;

amt=price*Qty1;
//could be done using SQL only as is done in removing from cart :  no need of SQL 1 &2 because operation done on same table : update __ set field1=__ set field2=__  where __
SQL1 = "update mycart set Qty = Qty + '"+Qty1+"', Amount = Amount + '"+amt+"' where id_num='"+session.getAttribute("id_num1")+"' and Model_no='"+model+"' " ;
 stmt1=con.createStatement() ;
 int r1=stmt1.executeUpdate(SQL1) ; 
 //Now it's done
 
 
 SQL2 = "update mobiles set Stock=Stock-'"+Qty1+"' where Model_no='"+model+"' " ;
 stmt2=con.createStatement() ;
 int r2=stmt2.executeUpdate(SQL2) ; 
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
        }
        
        
        
else     //if a model is ordered for the first time
{
        
    try
{
    
 Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/users","root","root");

amt=price*Qty1;

SQL = "insert into mycart(id_num,Model_no,Qty,Amount) values('"+session.getAttribute("id_num1")+"','"+model+"','"+Qty1 +"','"+amt+"')";
Statement stmt=null;
int rs;
stmt=con.createStatement() ;
rs=stmt.executeUpdate(SQL) ;

Statement stmt2=null;

 SQL2 = "update mobiles set Stock=Stock-'"+Qty1+"' where Model_no='"+model+"' " ;
 stmt2=con.createStatement() ;
 int r2=stmt2.executeUpdate(SQL2) ; 

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
    
    
    
}
       response.sendRedirect("8view_cart.jsp");
             }        
               else
           {
%>
     
<p><h1><center>Sorry!!! Out of stock !!!</center></h1></p>
    <p>
    <br><br>
 To view your cart <a href="8view_cart.jsp">Click here</a>
 <br><br>To continue shopping<a href="4search.jsp">Click here</a>
    </p>
               
    <%
               }
                                           
}





%>

</center>
    </font>
    </body>
</html>
