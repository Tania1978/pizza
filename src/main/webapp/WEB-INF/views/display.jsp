<%-- 
    Document   : display
    Created on : Feb 10, 2021, 8:56:30 PM
    Author     : tania
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                width:60%;
                margin:auto;
             
            }
        </style>
    </head>
    <body>
        
        <h1>${minima}</h1>
        
        <h3>Size: ${order.breadSize}</h3>
        <h3>Ingredients:</h3>
           <c:forEach items="${order.ingredients}" var = "ingredient">
               <ul>
                   <li>${ingredient}</li>
               </ul>
                </c:forEach>
           <h3>Payment Method: ${order.paymentMethod}</h3>
           <h3>Your Name: ${order.name}</h3>
           <h3>Your Age: ${order.age}</h3>
             <h3>Date of Delivery: ${order.dateOfDelivery}</h3>
    </body>
</html>
