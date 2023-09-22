<%@page import="in.fssa.productprice.model.OrderStatus"%>
<%@page import="in.fssa.productprice.model.OrderEntity"%>
<%@page import="in.fssa.productprice.model.Order"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Seller Orders </title>
</head>
<style>
/* Reset some default styles */
/* Style the table */
table {
    width: 90%;
    border-collapse: collapse;
    margin-bottom: 20px;
    margin-top:150px;
    border:1px solid;
    margin-left:50px;
}

th{
text-align:center;
}
th, td {
    padding: 10px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

th {
    background-color: #f2f2f2;
}

/* Style the buttons */
button {
    padding: 5px 10px;
    margin-right: 5px;
    cursor: pointer;
}

.accept-button {
    background-color: #4CAF50;
    color: white;
    border: none;
}

.reject-button {
    background-color: #f44336;
    color: white;
    border: none;
}

.accept-button:hover, .reject-button:hover {
    opacity: 0.8;
}
h2{
margin-top: 140px;
    display: flex;
    align-content: flex-end;
    justify-content: center;
}
.deliverd-button{
 background-color: #4CAF50;
    color: white;
    border: none;
}

footer{
margin-top:150px;
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
            <th>Address</th>
            <th>Responce</th>
        </tr>
    </thead>
    <% if (order.isEmpty()) { %>
    <tr>
        <td colspan="6"><h2>No Orders Booked by Users .</h2></td>
    </tr>
    <% } else { %>
    <% for (OrderEntity pr : order) { %>
    <tr>
        <td>
          <img class="product-image" src="<%= pr.getImage() %>" alt="">
        </td>
        <td><%= pr.getName() %></td>
        <td>$<%= pr.getPrice() %></td>
        <td><%= pr.getUserName() %></td>
        <td><%= pr.getPhoneNumber() %></td>
        <td><%=pr.getAddress() %></td>
         <td>
             <a href="accept_order?order_id=<%= pr.getOrderId() %>">
                <button class="accept-button">On the way</button>
            </a>
            
            <a href="order_delivered?order_id=<%= pr.getOrderId()%>">
             <button class="deliverd-button">Order Delivered</button>
            </a>
        </td>
    </tr>
    <% } %>
    <% } %>
</table>
<footer>
<jsp:include page="footer.jsp" /> 
</footer>



</body>
</html>