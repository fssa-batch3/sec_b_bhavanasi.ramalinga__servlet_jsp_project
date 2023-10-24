<%@page import="java.util.List"%>
<%@page import="java.awt.Button"%>
<%@page import="java.util.Set"%>
<%@page import="in.fssa.productprice.service.ProductService"%>
<%@page import="in.fssa.productprice.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products </title>

<style>
.project {
    display: flex;
    width: 90%;
    margin: 50px auto;
    margin-top: 200px;
    flex-wrap:wrap;
   
   
}
button {
  padding: 10px;
  background: #002266;
  margin: 10px;
  display: block;
  text-align: center;
  color: #fff;
  transition: all 1s linear;
  text-decoration: none;
  text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.3);
  border-radius: 3px;
  box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.3);
  width: 200px; 
}

.product {
    width: calc(33.33% - 20px);
    margin: 20px;
    border: 1px solid #ccc;
    padding: 20px;
    margin-top:100px;
    
}

.product-infosis {
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-bottom:30px;

}

.product img {
    max-width: 100%;
    height: auto;
    height:300px;
    idth: 100%;
    border-bottom: 1px solid #ccc;
    padding-bottom: 15px;
    margin-bottom: 5px;
}


.product p {
    color: #888;
}
h3{
display:flex;
justify-content: center;
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
        
        
   .product{   
    display: inline-block;
    background: #FEFEFE;
    border: 2px solid #FAFAFA;
    box-shadow: 0 1px 2px rgba(34, 25, 25, 0.4);
    margin: 0 0px 15px;
    -webkit-column-break-inside: avoid;
    -moz-column-break-inside: avoid;
    column-break-inside: avoid;
    padding: 15px;
    padding-bottom: 5px;
    background: -webkit-linear-gradient(45deg, #FFF, #F9F9F9);
    opacity: 1;
    -webkit-transition: all .3s ease;
    -moz-transition: all .3s ease;
    -o-transition: all .3s ease;
    transition: all .3s ease;
    }
    
    .product product-info div{
    font-size: .9rem;
    color: #444;
    line-height: 1.5;
    height: 60px;
    font-weight: 600;
    text-overflow: ellipsis;
    }
    .product product-info img{
    width: 100%;
    border-bottom: 1px solid #ccc;
    padding-bottom: 15px;
    margin-bottom: 5px;
}
.product-info a{
margin-bottom:20px;
}

.no-products{
margin-left:350px;
margin-bottom:50px;
}
.no-products h2{
  margin:205px;
}



</style>

</head>
<body>

  <jsp:include page="user_header.jsp" />
  
  
 
  <sections>
       
<% ProductService sr = new ProductService(); %>
<% List<Product> products = (List<Product>) request.getAttribute("prodByCate"); %>

<div class="project">
    <%
    if (products != null && !products.isEmpty()) {
        for (Product ps : products) {
    %>
    <div class="product">
        <div class="product-infosis">
            <div>
                <img src="<%= ps.getImageurl() %>" alt="<%= ps.getName() %>">
            </div>
            <div>
                <h2><%= ps.getName() %></h2>
                <h3>Rs. <%= ps.getPrice() %></h3>
            </div>
            <a href="detail?id=<%= ps.getId() %>"><button>View Details</button></a>
        </div>
    </div>
    <%
        }
    } else {
    %>
    <div class="no-products">
        <h2>Products are not available now.</h2>
    </div>
    <%
    }
    %>
</div>
</sections>

<footer>
<jsp:include page="footer.jsp" />
</footer>
</body>
</html>