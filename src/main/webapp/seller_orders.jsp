<%@page import="in.fssa.productprice.model.Order"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="seller_header.jsp" /> 
 <%
    Set<Order> product = (Set<Order>) request.getAttribute("sellerorders");
   %>

    
                
      <% for (Order pr : product) { %>
    <div class="product-card">
        <img class="product-image" src="<%= pr.getName() %>">
        <h2><%= pr.getName() %></h2>
        <h3>Price: $<%= pr.getPrice() %></h3>
        <p><%= pr.getPhoneNumber() %></p>
       
    </div>
    <% } %>
</body>
</html>