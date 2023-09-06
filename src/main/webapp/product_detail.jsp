<%@page import="in.fssa.productprice.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
/* Style for the card container */

/* Style for the image */
.card img {
  max-width: 200px; 
  margin-right: 20px; 
}


.card h1 {
  font-size: 34px;
  margin-bottom: 10px;
}

.card p {
  font-size: 24px;
  margin-bottom: 10px;
  color:red;
}


.card .description {
  flex-grow: 1; 
}
.card {
  display: flex;
  flex-direction: row;
  align-items: center;
  padding: 80px;
  border: 1px solid #ccc; 
  margin:300px;
}

/* Style for the button 
.card button {
  background-color:
  color: #fff;
  border: none;
  padding: 10px 20px;
  cursor: pointer;
}

/* Center the button vertically within the card */
.card button {
  align-self: center;
}
.card img {
  max-width: 100%; 
  height: auto; 
  width: 500px; 
  height: 300px; 
}

  background-color: #007bff; 
  color: #fff; 
  border: none; 
  padding: 10px 20px; 
  font-size: 16px; 
  cursor: pointer; 
  border-radius: 5px;
}


button:hover {
  background-color: #0056b3; 
}
.data{
margin-left:200px;
}

button {
  background-color: #007BFF; 
  color: #ffffff; 
  padding: 10px 20px; 
  border: none; 
  border-radius: 5px; 
  cursor: pointer; 
  font-size: 16px; 
  margin-top:20px;
}

/* Style the button on hover */
.book-button:hover {
  background-color: #0056b3; /* Change the background color on hover */
}

</style>
</head>
<body>

<jsp:include page="user_header.jsp" />
 <%
Product product = (Product) request.getAttribute("Details");
%>

<% if (product != null) { %>
    <div class="card">
        
        <div>
                    <img src="<%=product.getImage_url()%>" alt="<%=product.getName()%>">
                </div>
               <div class ="data">
                <h1><%= product.getName() %></h1>
                  <p>Price: <%= product.getPrice() %></p>
                  <div class="description">
                  <h2>Description is there below:</h2>
                  <%=product.getDetails() %>
                     
                  </div>
                   <button type="button" >Book now</button> 
                  </div>
              
    </div>
   
<% } else { %>
    <p>Product Not Found.</p>
<% } %>



</body>
</html>