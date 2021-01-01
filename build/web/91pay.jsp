<%-- 
    Document   : pay
    Created on : 15 Jul, 2013, 10:22:21 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Details</title>
   
    <script language="JavaScript" type="text/javascript">

</script>
 </head>
    <body BGCOLOR="FFF66" TEXT="660066">
         <font size="5 pts"> 
        <p> Welcome <b> Mr. <%out.println(session.getAttribute("name1"));%> </b> , This is your order details !!! </p>
        <br><br>
    <center>
        <%   out.print("\n\nName : "+session.getAttribute("name1")); %>
        <br><%    out.print("id_num : "+session.getAttribute("id_num1")); %>
        <br><%    out.print("Total amount : "+session.getAttribute("tot_amt1")); %>
        
        <form  action="92pay_now.jsp"> 
                <br> 
                <br>
                BANK :<select name="bank"> 
                    <option value="1"> SBI </option> 
                    <option value="2"> UBI </option> 
                </select> 
                <br>   
                <br>
                CARD NUMBER   :<input type="text" name="t1"> 
                <br> 
                Cardholder's name :<input type="text" name="t2"> 
                <br> 
                Enter pin<input type="password" name="t3"> 
                <br> 
                
                
                                 
                <input type="submit" value="Pay"> 
            </FORM>
        
        <br> <br> <br>
        <p align="right">
            To go to user homepage <a href="4search.jsp">Click here</a>
            <br>To log out <a href="1register_or_login.jsp">Click here</a>
            
        </p>
    </center>
    </font>
    
        
    </body>
</html>
