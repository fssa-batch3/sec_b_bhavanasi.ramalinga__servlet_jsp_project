<%@page import="in.fssa.productprice.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Detail </title>
<style>
/* Style for the card container */

/* Style for the image */
.cards img {
  max-width: 200px; 
  margin-right: 20px; 
}


.cards h1 {
  font-size: 34px;
  margin-bottom: 10px;
}

.cards p {
  font-size: 24px;
  margin-bottom: 10px;
  color:red;
}


.cards .description {
  flex-grow: 1; 
}
.cards {
  display: flex;
  flex-direction: row;
  align-items: center;
  padding: 80px;
  border: 1px solid #ccc; 
  margin:250px;
}



/* Center the button vertically within the card */
.cards button {
  align-self: center;
}
.cards img {
  max-width: 100%; 
  height: auto; 
  width: 1500px; 
  height: 300px; 
}

 
.book{
margin-top:30px;
}


button:hover {
  background-color: #0056b3; 
}
.data{
margin-left:100px;
}


button {
  background-color: #007BFF; 
  color: #ffffff; 
  padding: 10px 20px; 
  border: none; 
  border-radius: 5px; 
  cursor: pointer; 
  font-size: 16px; 
  margin-top:60px;
}
.rating p{
color:green;
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
    <div class="cards">
        
        <div>
                 <img src="<%=product.getImageurl()%>" alt="<%=product.getName()%>">
                </div>
               <div class ="data">
                <h2><%= product.getName() %></h2>
                  <p>Price: <%= product.getPrice() %></p>
                 <div class="rating">
                    <p>25% OFF</p>
                <p> 1200 ratings & 564 reviews</p>
               </div>
                  <div class="description">
                  <h3>Description is there below:</h3>
                  <%=product.getDetails() %>
                     
                  </div>
                  <div class="book">
                 <a href="/productpriceweb/BookProduct?id=<%=product.getId()%>"><button type="button">Book now</button></a>
                 </div>
                </div> 
    </div>
   
<% } else { %>
    <p>Product Not Found.</p>
<% } %>


<footer>
<jsp:include page="footer.jsp" />
</footer>

</body>
</html>