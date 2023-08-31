<%@page import="in.fssa.productprice.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Product Detail</title>
</head>
<body>
 <h1>Hello!</h1>
<% Product product = (Product) request.getAttribute("product"); %>

<form action="update" method="post">

<input type="hidden" name="id" value="<%=product.getId() %>">



   <label for="name">productName</label>
        <input type="text"  name="name"  value="<%=product.getName() %>" required><br><br>
        
        <label for="id">CategoryId</label>
        <input type="text" name="categoryid" value="<%=product.getcategoryId()%>"><br><br>
        
     <button type="submit">Submit</button>
   </form> 

  
</body>
</html>