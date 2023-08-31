<%@page import="java.awt.Button"%>
<%@page import="java.util.Set"%>
<%@page import="in.fssa.productprice.service.ProductService"%>
<%@page import="in.fssa.productprice.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products</title>
</head>
<body>
<% ProductService sr = new ProductService();%>
<% Set<Product> products= sr.listAllProduct();%>
 <table border = 1>
   <tr>
	   <th>Id</th>
	  <th>Name</th>
	  <th>CategoryId</th>
	  <th>IsActive</th>
	  <th>Action</th>
 </tr>
 <% for(Product product : products) { %>
<tr>
<td><%= product.getId()%></td>
<td><%= product.getName()%></td>
<td><%=product.getcategoryId()%></td>
<td><%=product.getIsActive() %></td>
<td><a href="product/view?id=<%=product.getId() %>"><button  type="submit">View</button></a></td>	
<td><a href="product/edit?id=<%=product.getId() %>"><button type="submit">Update</button></a></td>
<td><a href="product/delete?id=<%=product.getId() %>"><button type="submit">Delete</button></a></td>
</tr>
 <% } %>
 
</table>


</body>
</html>