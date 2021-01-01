<%-- 
    Document   : order1
    Created on : 14 Jul, 2013, 5:11:59 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order </title>
        <script language="JavaScript" type="text/javascript">
</script>
    </head>
    <body BGCOLOR="FFF66" TEXT="660066">
         <font size="6 pts"> 
         
        <p> Welcome to Order,<b> Mr <%out.println(session.getAttribute("name1"));%> </b> !!! </p>
    <center>
        
        <%
String company="";
String type="";
String price="";
String SQL="";
int n;

        
        try
{
 Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/users","root","root");
 %>
<br>
<%
Statement stmt=null;
ResultSet rs=null;

company=request.getParameter("company");
type=request.getParameter("type");
price=request.getParameter("price");

//company=company.toLowerCase().trim();



if(company.equals("1"))
       {
    if(type.equals("1"))
               {
        if(price.equals("1"))                       
            n=1; //Company=any, type=any,price=any                       
        else
            n=2; //Company=any, type=any,price!=any
               }
    else
               {
        if(price.equals("1"))                       
            n=3; //Company=any, type!=any,price=any                       
        else
            n=4; //Company=any, type!=any,price!=any
               }
       }
else
       {
     if(type.equals("1"))
               {
           if(price.equals("1"))                       
                n=5; //Company!=any, type=any,price=any                       
           else
                n=6; //Company!=any, type=any,price!=any
               }
     else
               {
           if(price.equals("1"))                       
                n=7; //Company!=any, type!=any,price=any                       
           else
                n=8; //Company!=any, type!=any,price!=any
               }
       }
switch(n){
          case 1: SQL = "select * from mobiles order by Company,Price" ;
       break;
       
          case 2: 
           if(price.equals("2"))
           SQL = "select * from mobiles where Price >15000 order by Price ";
                     else if(price.equals("3"))
           SQL = "select * from mobiles where Price between 10000 and 15000 order by Price";
                     else if(price.equals("4"))
           SQL = "select * from mobiles where Price between 5000 and 10000 order by Price";
                     else if(price.equals("5"))
           SQL = "select * from mobiles where Price<5000 order by Price";
           
       break;
       
          case 3:
              SQL = "select * from mobiles where type='"+type+"' order by Price";
              break;
              
          case 4:    
              if(price.equals("2"))
           SQL = "select * from mobiles where Type='"+type+"' and Price >15000 order by Price ";
                     else if(price.equals("3"))
           SQL = "select * from mobiles where Type='"+type+"' and Price between 10000 and 15000 order by Price";
                     else if(price.equals("4"))
           SQL = "select * from mobiles where Type='"+type+"' and Price between 5000 and 10000 order by Price";
                     else if(price.equals("5"))
           SQL = "select * from mobiles where Type='"+type+"' and Price<5000 order by Price";
           
       break;
              
             case 5:
                  SQL = "select * from mobiles where Company='"+company+"' order by Price";
                  break;
             
             case 6:
                 if(price.equals("2"))
           SQL = "select * from mobiles where Company='"+company+"' and Price >15000 order by Price";
                     else if(price.equals("3"))
           SQL = "select * from mobiles where Company='"+company+"' and Price between 10000 and 15000 order by Price ";
                     else if(price.equals("4"))
           SQL = "select * from mobiles where Company='"+company+"' and Price between 5000 and 10000 order by Price";
                     else if(price.equals("5"))
           SQL = "select * from mobiles where Company='"+company+"' and Price<5000 order by Price";
           
       break;
                 
             case 7:
                  SQL = "select * from mobiles where Company='"+company+"' and Type='"+type+"' order by Price";
                  break;
                
             case 8:
                  if(price.equals("2"))
           SQL = "select * from mobiles where Company='"+company+"' and Type='"+type+"' and Price >15000 order by Price ";
                     else if(price.equals("3"))
           SQL = "select * from mobiles where Company='"+company+"' and Type='"+type+"' and Price between 10000 and 15000 order by Price";
                     else if(price.equals("4"))
           SQL = "select * from mobiles where Company='"+company+"' and Type='"+type+"' and Price between 5000 and 10000 order by Price";
                     else if(price.equals("5"))
           SQL = "select * from mobiles where Company='"+company+"' and Type='"+type+"' and Price<5000 order by Price";
                  break;
}

/*{

    String SQL = "select * from mobiles where company=''" ;
   stmt=con.createStatement() ;
rs=stmt.executeQuery(SQL) ;
}
else
{
 
    String SQL = "select * from book where author='S.C. CHATTERJEE'" ;
   stmt=con.createStatement() ;
rs=stmt.executeQuery(SQL) ;   
} */


stmt=con.createStatement() ;
rs=stmt.executeQuery(SQL) ;
%>


<table border="3" bordercolor="white"> 
    <tr> 
        <td colspan="24">COMPANY</td> <td colspan="24">MODEL_NO</td> <td colspan="24">TYPE</td> 
        <td colspan="24">PRICE</td> <td colspan="24">STOCK</td> 
    </tr>
    <tr>    
        
        <%
while(rs.next())
{
 
    %>  
 <td colspan="24"> <% out.println(rs.getString("Company")) ;%></td>
 <td colspan="24"> <% out.println(rs.getString("Model_no")) ;%> </td> 
 <td colspan="24"> <% out.println(rs.getString("Type")) ;%></td> 
 <td colspan="24"> <% out.println(rs.getString("Price")) ;%></td>
 <td colspan="24"> <% out.println(rs.getString("Stock")) ;%></td>
 
 </tr>
     <%
 
 
         }
%>   
</table> 

<%

con.close();
        }    // end of try
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
<br>
<br>
<form action="6fillup.jsp">
    <input type="submit" value="Add/Remove from cart?">
</form>
<br><br>
 To view your cart <a href="8view_cart.jsp">Click here</a>
 
 <br> <br> <br>
        <p align="right">
            To go to user homepage <a href="4search.jsp">Click here</a>
            <br>To log out <a href="1register_or_login.jsp">Click here</a>
            
        </p>
    </center>
    </font>
    
    </body>
</html>
