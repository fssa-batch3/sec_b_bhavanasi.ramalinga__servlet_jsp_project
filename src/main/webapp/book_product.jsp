<%@page import="in.fssa.productprice.model.Product"%>
<%@page import="in.fssa.productprice.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
/* Global Styles */
body {
  font-family: Arial, sans-serif;
  background-color: #f0f0f0;
}

.cards {
  display: flex;
  justify-content: center;
  align-items: center;
  margin: 40px;
  border:1px solid;
  
}

.product {
  background-color: #fff;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  border-radius: 5px;
  padding: 20px;
  max-width:50%;
}

.productImage img {
 
  height: 30vh;
  width: 35vh;
 
 
}

.data {
  padding: 10px;
}

h4 {
  margin: 0;
  color: #333;
}

.description p {
  color: #555;
}

/* User Details Form */
.userdetails {
  margin-top: 20px;
  padding: 40px;
  background-color: #fff;
  border-radius: 5px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

h3 {
  margin: 0;
  color: #333;
  text-align: center;
  padding: 10px;
}

label {
  color: #333;
  font-weight: bold;
}

input[type="text"],
input[type="number"],
textarea {
  width: 100%;
  padding: 5px;
  margin: 5px 0;
  border: 1px solid #ccc;
  border-radius: 5px;
}

.quantity {
  display: flex;
  align-items: center;
}

input[type="number"] {
  flex: 1;
}

/* Hidden Fields */
input[type="hidden"] {
  display: none;
}

button[type="submit"] {
  display: block;
  width: 100%;
  background-color: #007bff;
  color: #fff;
  border: none;
  border-radius: 5px;
  padding: 10px;
  margin-top: 10px;
  cursor: pointer;
}

/* Error Message */
 p {
 
  text-align: center;
  margin: 10px;
}
.name{
display:flex;
}
.names{
display:flex;


}
form{
padding:20px;
}
.names p{
margin-botton:50px;
}
.name h4{
margin-left:8px;
}

 <body>
<header>
<jsp:include page="user_header.jsp" />
</header>


   <% User user = (User) request.getAttribute("userDetails"); 

	Product pdt = (Product) request.getAttribute("productDetails");

%>
 <% if (pdt != null) { %>
    <div class="cards">
    <div class="product">
      
            <div class="productImage">
                    <img src="<%=pdt.getImageurl()%>" name="image" alt="<%=pdt.getName()%>" height="80%", width="100px">
                </div>
                 <div class ="data">
                 <div class="name">
                 <h4>Name:</h4>
                 <h4><%= pdt.getName()%></h4>
                 </div>
                 <div class="name">
                   <h4>Price:</style>
                  <h4>Rs: <%= pdt.getPrice() %></h4>
                  </div>
                     <div class="names">
                  <h4>Description:</h4>
                <p><%=pdt.getDetails() %></p>
                     
                  </div>
                  
               
          </div>
          </div>
          
     <form action="buy_now" method="post" >   
     <div class="userdetails">
    
     <h3>User Details</h3>
     <label for="name">Name:</label>
    <input type="text" id="name" name="name" required value="<%= user.getName() %>">
    <label for="phoneNumber">Phone number:</label>
    <input type="number" id="phoneNumber" name="phoneNumber"   pattern="[6-9]{1}[0-9]{9}"  required  value="<%= user.getPhoneNumber() %>">
      <div class="quantity">
				<label> Quantity: </label> <input type="number"
					id="product_quantity" name="quantity" required="true"
					placeholder="1" value="1" min="1" max="10">
			</div>
               
    <label for="address">Address:</label>
    <textarea id="add" name="add" required><%= user.getAddress() %></textarea>
     <label for="pincode">Pincode:</label>
    <input type="text" id="pincode" name="pincode"  required value="<%=user.getPincode() %>">
    
     <input type="hidden" name="pdtid" value="<%= pdt.getId() %>">
   <input type="hidden" name="sellerid" value="<%= pdt.getUserId() %>">
   <input type="hidden" name="price" value="<%= pdt.getPrice() %>">
   <input type="hidden" name="userId" value="<%= user.getId() %>">
    <input type="hidden" name="image" value="<%=pdt.getImageurl() %>"/>
    <input type="hidden" name="productName" value=<%=pdt.getName() %>/>
    <input type="hidden" name="username" value=<%=user.getName() %>/>
    
      <button type="submit">Order</button>
    </div>
    </div>
    </form>
   
  <% } else { %>
    <p>Product Not Found.</p>
<% } %>
 
<footer>
<jsp:include page="footer.jsp" />
</footer>
</body>
</html>