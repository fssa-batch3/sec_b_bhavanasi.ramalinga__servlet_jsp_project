<%@page import="java.util.List"%>
<%@page import="java.awt.Button"%>
<%@page import="java.util.Set"%>
<%@page import="in.fssa.productprice.service.ProductService"%>
<%@page import="in.fssa.productprice.model.Product"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Product List </title>
<style>
.header{
display:flex;
margin-left:900px;
margin-right:20px;

}
h2{
margin:10px;
}





 body {
            font-family: Arial, sans-serif;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

 .product-card {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
            width: 400px;
            margin: 10px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
            text-align: center;
            margin-top:100px;
        }
          .product-card  h3{
          color:green;
          }

        .product-image {
            max-width: 100%;
            max-height:200px;
        }


        h2 {
            margin: 10px 0;
        }

        .action-buttons {
            display: flex;
            justify-content: space-around;
            margin-top: 10px;
        }

        .action-button {
            padding: 5px 10px;
            text-align: center;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            text-decoration: none;
        }
       
footer{
margin-top:100px;
width:100%;
}
.message{
margin-top:200px;
margin-bottom:170px;
}

</style>
</head>

<body>
<jsp:include page="seller_header.jsp" /> 

   <%
    List<Product> product = (List<Product>) request.getAttribute("productDetails");
   %>

    
                
      <% if (product.isEmpty()) { %>
      <div class="message">
     <h2>No products added by the seller.</h2>
    </div>
<% } else { %>
    <% for (Product pr : product) { %>
        <div class="product-card">
            <img class="product-image" src="<%= pr.getImageurl() %>" alt="<%= pr.getName() %>">
            <h2><%= pr.getName() %></h2>
            <h3> Rs.<%= pr.getPrice() %></h3>
            <p><%= pr.getDetails() %></p>
            <hr>
            <div class="action-buttons">
               <a href="product/edit?id=<%= pr.getId() %>" class="btn btn-primary">Edit</a>
      <a href="product/delete?id=<%= pr.getId() %>" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this product?')">Delete</a>

            </div>
        </div>
    <% } %>
<% } %>
    
 <footer>
<jsp:include page="footer.jsp" />
</footer>


</body>
</html>