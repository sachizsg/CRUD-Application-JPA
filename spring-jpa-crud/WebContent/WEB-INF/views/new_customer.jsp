<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<title>New Customer</title>
</head>
<body>
<br>
<div align="center">
<h2>New Customer</h2>
<br>

<div class="container">
<form:form action="save" method="post" modelAttribute="customer">

<table border="0" cellpadding="10">
 <tr>
   <td>Name : </td>
   <td><form:input path="name"  class="form-control" placeholder="Name"/> </td>
 </tr>
 
  <tr>
   <td>E-mail : </td>
   <td><form:input path="email" class="form-control"  placeholder="Email"/> </td>
 </tr>
 
  <tr>
   <td>Address : </td>
   <td><form:input path="address" class="form-control" placeholder="Address" /> </td>
 </tr>
 
  <tr>
  <td colspan="2"><input type="submit" value="Save" class="btn btn-primary">
 </tr>

</table>
</form:form>
</div>


</body>
</html>