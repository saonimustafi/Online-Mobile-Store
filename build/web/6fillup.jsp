<%-- 
    Document   : add_to_cart
    Created on : 15 Jul, 2013, 1:45:28 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script language="JavaScript" type="text/javascript">
</script>
    </head>
    <body BGCOLOR="FFF66" TEXT="660066">
         <font size="6 pts"> 
    <center>
        <form  action="7add_remove_cart.jsp"> 
                <br> 
                Model_No    :&nbsp;&nbsp;<input type="text" name="t1"> 
                <br> 
                Quantity   :&nbsp;&nbsp;<input type="text" name="t2"> 
                <br> 
                <INPUT TYPE="RADIO" NAME="RA" value="A"> Add to cart
                <INPUT TYPE="RADIO" NAME="RA" value="R"> Remove from cart
                <br>  
                <input type="submit" value="click"> 
                
            </FORM>
        
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
