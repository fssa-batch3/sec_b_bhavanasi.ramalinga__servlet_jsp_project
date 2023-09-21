<%@page import="in.fssa.productprice.model.OrderEntity"%>
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
<style>
/* Reset some default styles */
body, h1, h2, h3, p, ul, li {
    margin: 0;
    padding: 0;
}

body {
    font-family: Arial, Helvetica, sans-serif;
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px;
}

.product-card {
    display:flex;

     margin:150px;
    border-radius: 5px;
    padding: 20px;
 
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    text-align: center;
    transition: transform 0.2s;
}

.product-card:hover {
    transform: translateY(-5px);
}

.product-image {
    max-width: 100%;
    height: auto;
}

h2 {
    font-size: 1.5rem;
    margin-top: 10px;
}

h3 {
    font-size: 1.2rem;
    color: #555;
}

p {
    margin-top: 10px;
}

/* Responsive styles for smaller screens */
@media (max-width: 768px) {
    .product-card {
        width: 100%;
        margin: 10px 0;
    }
}

</style>
<body>

<jsp:include page="seller_header.jsp" /> 
 <%
    Set<OrderEntity> order = (Set<OrderEntity>) request.getAttribute("orderList");
   %>
     
    <table>
    <thead>
        <tr>
            <th>Product Image</th>
            <th>Product Name</th>
            <th>Price</th>
            <th>Username</th>
            <th>Phone Number</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <% for (OrderEntity pr : order) { %>
        <tr>
            <td>
                <img class="product-image" src="<%= pr.getImage() %>" alt="<%= pr.getName() %>">
            </td>
            <td><%= pr.getName() %></td>
            <td>$<%= pr.getPrice() %></td>
            <td><%= pr.() %></td>
            <td><%= pr.getPhoneNumber() %></td>
            <td>
                <button class="accept-button">Accept</button>
                <button class="reject-button">Reject</button>
            </td>
        </tr>
        <% } %>
    </tbody>
</table>

</body>
</html>