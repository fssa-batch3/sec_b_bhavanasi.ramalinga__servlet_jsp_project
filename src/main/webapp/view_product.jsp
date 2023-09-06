<%@page import="in.fssa.productprice.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Details</title>
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 500px;
  margin: 20px auto; /* Add margin to the top */
  text-align: center;
  background-color: #ffffff;
  padding: 100px;
  
  border-radius: 5px;
}
.card img{
margin-right:20px;
display:flex;
}

.card h1 {
  font-size: 24px;
  margin: 0;
}

.card .title {
  font-size: 18px;
  color: #007BFF;
}

.card p {
  font-size: 16px;
  margin-top: 10px;
}

/* Style for when the product is not found */
p {
  text-align: center;
  font-size: 18px;
  color: red;
  margin-top: 20px;
}


       
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
        div.image{
        display:flex;
        justify-content:space-around;
        }
        
        button[type="submit"] {
  background-color: #4CAF50; 
  color: white; 
  padding: 10px 20px; 
  border: none; 
  border-radius: 5px; 
  cursor: pointer; 
  font-size: 16px; 
}

/* Style the button on hover */
button[type="submit"]:hover {
  background-color: #45a049; 
}
</style>
</head>
<body>
<jsp:include page="seller_header.jsp" />
  <%
Product product = (Product) request.getAttribute("productDetails");
%>

<% if (product != null) { %>
    <div class="card">
        
        <div class="image">
                    <img src="<%=product.getImage_url()%>" alt="<%=product.getName()%>">
                </div>
               
                <h1><%= product.getName() %></h1>
                  <p>Price: <%= product.getPrice() %></p>
                  <div class="description">
                  <h2>Description is there below:</h2>
                  <%=product.getDetails() %>
                  </div>
                  <a href="/productpriceweb/products_list.jsp">
                  <button type="submit">Submit</button>
                   </a>
    </div>
   
<% } else { %>
    <p>Product Not Found.</p>
<% } %>

</body>
</html>