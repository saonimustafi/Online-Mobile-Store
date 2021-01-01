<%-- 
    Document   : search1
    Created on : 13 Jul, 2013, 9:33:40 PM
    Author     : HP
--%>

<%@page session="true" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Page</title>
    </head>
    <body BGCOLOR="FFF66" TEXT="660066">
         <font size="6 pts"> 
        <p> Welcome to Search,<b> Mr <% out.println(session.getAttribute("name1"));%> </b> !!! </p>
    <center>
        
        <form action="5order.jsp" > 
            <BR> 
                    
                Company <select name="company">                                    
           <option value="1"> any
           <option value="SONY"> SONY
           <option value="Samsung"> SAMSUNG
           <option value="Intex"> INTEX
           <option value="Htc"> HTC
           <option value="Micromax"> MICROMAX
           <option value="Nokia"> NOKIA
               
                </select>
            <br> 
            <BR>
            Type <select name="type"> 
           <option value="1"> any           
           <option value="Android"> Android
           <option value="Java"> Java
                          
                </select>
            <br> 
            <br>
            Price<select name="price">                                    
           <option value="1"> any
           <option value="2"> >15,000
           <option value="3"> 10,000-15,000
           <option value="4"> 5000-10,000
           <option value="5"> <5000
           
               
                </select>
            <br> 
            <br>
            <br>
                             
               
            
            <input type="submit" value="click"> 
        </form>
        <br><br>
 To view your cart <a href="8view_cart.jsp">Click here</a>
 
 <br> <br> <br>
        <p align="right">
            
            To log out <a href="1register_or_login.jsp">Click here</a>
            
        </p>
    </center>
    </font>
    </body>
</html>
