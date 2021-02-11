<%-- 
    Document   : orderform
    Created on : Feb 10, 2021, 8:23:18 PM
    Author     : tania
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
            crossorigin="anonymous"
            />
       <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/style.css" />
        <title>JSP Page</title>
    </head>
    <body>

                <div class="container my-container">
                    <div class="row">
                        <div class="col align-self-center">
                            <h1 >Choose Your Pizza</h1> 
                         
                                <form:form action="pizza/createorder" method="POST" modelAttribute="order">
                                    <div class="form-group">   
                                        <p>Choose Bread Size</p>
                                        <div class="radio">
                                            Large <form:radiobutton path="breadSize" value="Large"/>
                                        </div>
                                        <div class="radio">
                                            Medium <form:radiobutton path="breadSize" value="Medium"/>
                                        </div>
                                        <div class="radio">
                                            Small <form:radiobutton path="breadSize" value="Small"/>
                                        </div>
                                    </div>
                                    </br>

                                    <div class="form-group">    
                                        <p>Choose Ingredients:</p>
                                        <div class="checkbox">
                                            Potatoes  <form:checkbox path="ingredients" value="potatoes" />
                                        </div>
                                        <div class="checkbox">
                                            Tomatoes  <form:checkbox path="ingredients" value="tomatoes" />
                                        </div>
                                        <div class="checkbox">
                                            Sausage <form:checkbox path="ingredients" id="sausage" value="sausage" />
                                        </div>
                                    </div>
                                    </br>
                                    <div class="form-group">
                                        <label  for="paymentMethod">Choose Payment Method</label>
                                        <form:select path="paymentMethod" id="paymentMethod" class="form-control">
                                            <form:option value="CreditCard">Credit Card</form:option>
                                            <form:option value="DebitCard">Debit Card</form:option>
                                            <form:option value="PayPal">PayPal</form:option>  
                                            <form:option value="Cash">Cash</form:option>
                                        </form:select>
                                    </div> </br>
                                    <div class="form-group">
                                        <label for="name">Name:</label>
                                        <form:input type="text" id="name" path="name" class="form-control"/>
                                    </div> </br>
                                    <div class="form-group">
                                        <label for="age">Age:</label>
                                        <form:input type="number" id="age" path="age" class="form-control"/>
                                    </div> </br>
                                    <div class="form-group">
                                        <label  for="dateOfDelivery">Date of Delivery</label>
                                        <form:input type="date" id="dateOfDelivery" path="dateOfDelivery" class="form-control"/>
                                    </div> </br>

                                    <button type="submit" class="btn  btn-primary">Submit</button>
                                </form:form>
                            </div>     
                        </div>  
                    </div>  
            


        <script
            src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"
            integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU"
            crossorigin="anonymous"
        ></script>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js"
            integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj"
            crossorigin="anonymous"
        ></script>
    </body>
</html>
