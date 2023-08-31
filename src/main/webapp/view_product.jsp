<%@page import="in.fssa.productprice.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	Product product = (Product) request.getAttribute("productDetails");
	System.out.println(product);
	if (product != null) {
	%>
	<div class="card">
		<h1><%=product.getName()%></h1>
		<p class="title"><%=product.getcategoryId() %></p>
		<p><%= product.getIsActive() %>></p>
	</div>
	<%
	} else {
	%>
	<p>Product Not Found.</p>
	<%
	}
	%>
</body>
</html>