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
<title>Insert title here</title>

<style>
.project {
    display: flex;
   
   
}
button {
  background-color:blue;
  color: #fff; 
  padding: 10px 20px; 
  border: none; 
  border-radius: 5px; 
  cursor: pointer;
  font-size: 16px;
  }
.product {
    width: calc(33.33% - 20px); /* Adjust the width as needed */
    margin: 20px;
    border: 1px solid #ccc;
    padding: 20px;
    margin-top:100px;
}

.product-info {
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-top:100px;
}

.product img {
    max-width: 100%;
    height: auto;
    height:300px;
}

.product h3 {
    margin: 10px 0;
}

.product p {
    color: #888;
}
 

        /* CSS for the body */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 1200px;
            margin: 20px auto;
            padding: 0 20px;
            margin-left:1000px;
            display:flex;
            justify-content:space-evenly;
        }

</style>

</head>
<body>

  <jsp:include page="user_header.jsp" />
       
<% ProductService sr = new ProductService();%>
<% Set<Product> products = (Set<Product>) request.getAttribute("prodByCate"); %>

<div class="project">
    <%
    for (Product ps : products) {
    %>
    <div class="product">
        <div class="product-info">
            <div>
                <img src="<%= ps.getImageurl() %>" alt="<%= ps.getName() %>">
            </div>
            <div>
                <h3><%= ps.getName() %></h3>
                <p>Price: <%= ps.getPrice() %></p>
            </div>
           <a href="detail?id=<%=ps.getId()%>"><button>View Details</button></a>

        </div>
         
    </div>
   
    <%	
    }
    %>
   
</div>







</body>
</html>