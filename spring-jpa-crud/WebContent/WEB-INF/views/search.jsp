<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<title>Search Result</title>
</head>
<body>
<br>
<div align = "center">
<h1>Search Result</h1>
 <br>

 <div class="container">
  <table class="table table-striped">

   <tr>
     <th>Id</th>
     <th>Name</th>
     <th>E-mail</th>
     <th>Address</th>
     </tr>
   
     <c:forEach var="customer" items="${result}">
 <tr>
   <td>${customer.id}</td>
   <td>${customer.name}</td>
   <td>${customer.email}</td>
   <td>${customer.address}</td>
  
   </tr>

        </c:forEach>
  
 
 </table>


</div>
</body>
</html>