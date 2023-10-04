<%@page import="java.util.List"%>
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
.details{
display: flex;
justify-content: space-around;

}
button{
color: white;
 background-color:#002266;
 
}
.status{
display: flex;
justify-content: space-around;
}

</style>
<body>
<jsp:include page="seller_header.jsp" />
<%
List<OrderEntity> order = (List<OrderEntity>) request.getAttribute("orderList");
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
            <th>Response</th>
        </tr>
    </thead>
    <% if (order.isEmpty()) { %>
        <tr>
            <td colspan="7"><h2>No Orders Booked by Users.</h2></td>
        </tr>
    <% } else { %>
        <tbody>
            <% for (OrderEntity pr : order) { %>
                <tr>
                    <td>
                        <img class="product-image" src="<%= pr.getImage() %>" alt="">
                    </td>
                    <td><%= pr.getName() %></td>
                    <td>Rs.<%= pr.getPrice() %></td>
                    <td><%= pr.getUserName() %></td>
                    <td><%= pr.getPhoneNumber() %></td>
                    <td><%= pr.getAddress() %></td>
                   <td>
   <% if (pr.getStatus() == OrderStatus.ORDERED_SUCCESSFULLY) { %>
   <div class="status">
    <a href="accept_order?order_id=<%=pr.getOrderId()%>">
        <button class="ontheway" style="display: block">On the Way</button>
    </a>
    <a href="cancel_order?order_id=<%= pr.getOrderId() %>">
        <button class="cancel" style="display: block">DELIVERED</button>
    </a>
    </div>
      <% } else if (pr.getStatus() == OrderStatus.DELIVERED) { %>
      <a href="/productpriceweb/order_delivered?order_id=<%= pr.getOrderId() %>">
        <button class="delivered" style="display: block">Delivered</button>
      </a>
      <a href="accept_order?order_id=<%=pr.getOrderId()%>">
        <button class="ontheway" style="display: none">On the Way</button>
    </a>
    <% } else if (pr.getStatus() == OrderStatus.ON_THE_WAY) { %>
    <a href="accept_order?order_id=<%=pr.getOrderId()%>">
        <button class="ontheway" style="display: none">On the Way</button>
    </a>
    <a href="/productpriceweb/order_delivered?order_id=<%= pr.getOrderId() %>">
        <button class="delivered" style="display: block">Delivered</button>
        
<% } else if (pr.getStatus() == OrderStatus.CANCEL_ORDER) { %>
    <a href="cancel_order?order_id=<%=pr.getOrderId()%>">
        <button class="ontheway" style="display: none">CANCELED ORDER </button>
    </a>
<% } %>
</td>




                </tr>
            <% } %>
        </tbody>
    <% } %>
</table>

<footer>
  <jsp:include page="footer.jsp" />
</footer>

</body>
</html>