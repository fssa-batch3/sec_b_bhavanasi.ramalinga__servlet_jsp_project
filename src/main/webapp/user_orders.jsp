<%@page import="in.fssa.productprice.model.OrderStatus"%>
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
<title>User Orders </title>
</head>
<style>
.products{
display:flex;
margin-top:90px;
border: 1px solid;
max-width:800px;
margin-bottom:150px;
margin-left:60px;
}
.item img{
max-width:250px;
max-height:200px;
  width: 200px;
}
.item, .datadetails {
    margin: 40px;
    display: flex;
    flex-direction: column;
    align-content: center;
    justify-content: space-around;
    }
.names{
margin-top:100px;
margin-left:60px;
}
.status h3{
color:green;
}
.message{
margin: 200px;
display: flex;
justify-content: center;
margin-bottom:20%;
}

.cancel {
    display: block;
    color: red; 
    font-size: 16px; 
    font-weight: bold;
    font-size:25px; 
}
.canceled{
display: block;
 color: white;
 background: #002266;
}
</style>
<body>
<header>
<jsp:include page="user_header.jsp" />
</header>
    
 <%  
  List<OrderEntity> orderAttribute = (List<OrderEntity>) request.getAttribute("orderList");

  User user = (User) request.getAttribute("userDetails");
%>

<sections>
<% if (orderAttribute == null || orderAttribute.isEmpty()) { %>
   <div class="message">
        <h2>Sorry, You did not order products.</h2>
   </div>
<% } else { %>
   <div class="names">
      <h2>My Orders</h2>
   </div>
   
   <%
      for (Order ps : orderAttribute) {
   %>
   <div class="products">
      <div class="item">
         <img src="<%= ps.getImage() %>">
      </div>
      <div class="datadetails">
       <h2><%= ps.getName()%></h2>
         <h3>Price: <%= ps.getPrice()%></h3>
          <h3>Quantity: <%= ps.getQuantity() %></h3>
         <h3>Total Amount : <%= ps.getPrice()*ps.getQuantity()%></h3>
        
        
         
         
    <% if (ps.getStatus() == OrderStatus.CANCEL_ORDER) {
%>
        <p class="cancel" style="display: block"   >CANCELED  ORDER</p>
<%
    } else if (ps.getStatus() == OrderStatus.ON_THE_WAY || ps.getStatus() == OrderStatus.ORDERED_SUCCESSFULLY) { %>
    	
    	 <h3>Status:</h3>
         <div class="status">
            <h3> <%= ps.getStatus() %></h3>
         </div>
   <a href="/productpriceweb/cancel_order?order_id=<%= ps.getOrderId() %>" onclick="return confirm('Are you sure you want to cancel this order?')">
    <button class="canceled" style="display: block">CANCEL ORDER</button>
</a>

<%
    }
%>
         
        
          
      </div>
   </div>
   <%
      }
   %>
<% } %>
</sections>

<footer>
<jsp:include page="footer.jsp" />
</footer> 

  
</body>
</html>