<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<title>Customer Manager</title>
</head>
<body>
<br>
<div align = "center">
<h1>Customer Manager</h1>
 <br>
 <div class="container">
 <form class="form-inline my-2 my-lg-0" method = "get" action = "search">
 
      <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search" name="keyword">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>  
 <br>
 <h3><a href="new">New Customer</a></h3>
 <br>
 </div>
 <div class="container">
  <table class="table table-striped">

   <tr>
     <th>Id</th>
     <th>Name</th>
     <th>E-mail</th>
     <th>Address</th>
     <th>Action</th>
     </tr>
   
     <c:forEach var="customer" items="${listCustomer}">
 <tr>
   <td>${customer.id}</td>
   <td>${customer.name}</td>
   <td>${customer.email}</td>
   <td>${customer.address}</td>
   <td>
    <a href="edit?id=${customer.id}">Edit</a>
    &nbsp;&nbsp;&nbsp;
     <a href="delete?id=${customer.id}">Delete</a>
    </td>
   </tr>

        </c:forEach>
  
 
 </table>


</div>
</body>
</html>