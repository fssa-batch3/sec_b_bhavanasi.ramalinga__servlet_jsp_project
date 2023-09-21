<%@page import="java.util.List"%>
<%@page import="in.fssa.productprice.model.User"%>
<%@page import="in.fssa.productprice.model.Order"%>
<%@page import="java.util.Set"%>
<%@page import="in.fssa.productprice.model.OrderEntity"%>
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
  Set<OrderEntity> orderAttribute = (Set<OrderEntity>) request.getAttribute("orderList");

  User user = (User) request.getAttribute("userDetails");
%>
<section>
<% if (orderAttribute != null) { %>
  <%
    for (Order ps : orderAttribute) {
  %>
    <div class="item">
      <img src="<%= ps.getImage() %>"> 
    </div>
    <div class="data">
      <h2><%= ps.getName() %></h2>
      <p>Price: <%= ps.getPrice() %></p>
      <p>Quantity: <%= ps.getQuantity() %></p>
       <p>Status: <%= ps.getStatus() %></p>
    </div>
  <%
    }
  %>
<% } else { %>
  <p>No orders found.</p>
<% } %>


 
</section>
   
</body>
</html>