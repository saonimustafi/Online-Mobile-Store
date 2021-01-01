<%-- 
    Document   : choice3
    Created on : 13 Jul, 2013, 8:57:04 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>choice1</title>
        <script language="Javascript" type="text/javascript" ></script>
    </head>
    <body BGCOLOR="FFF66" TEXT="660066">
        <FONT FACE="ALGERIAN" SIZE=5 PTS"> 
    <center>
        
         <%
        String str=request.getParameter("R1");
            
         if(str.toLowerCase().trim().equals("a"))
                       { 
        %>
        <h3>Welcome to register page</h3>
        <form  action="3registered.jsp"> 
                <br> 
                Name :<input type="text" name="t2"> 
                <br>
                Address   :<input type="text" name="t4"> 
                <br> 
                Username<input type="text" name="t5"> 
                <br> 
                Password<input type="password" name="t6">
                <BR>                                  
                <input type="submit" value="Register"> 
            </FORM>
        <%
               }
        else
                       {
            %>
           
        <h2>Welcome to login page</h2> 
            
             <form  action="3checklogin.jsp"> 
                <br> 
                Enter username :<input type="text" name="t7"> 
                <br>
                Enter password :<input type="password" name="t8"> 
                <br> 
                  
                <input type="submit" value="Login"> 
            </form>
                     
             <%
        }
        %>
        </center>
    </font>
        
    </body>
</html>

