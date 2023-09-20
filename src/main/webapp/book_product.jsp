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
.cards{
display:flex;
margin-top:100px;


}
 .cards {
    display: flex;
    padding: 10px;
  }

  .product {
   
    padding: 10px;
    border-right: 1px solid #ccc;
  }

  .userdetails {
    flex: 1;
    padding: 10px;
  }
  /* Style the form container */
.userdetails {
  max-width: 400px;
  margin: 0 auto;
  padding: 20px;
  background-color: #f4f4f4;
  border: 1px solid #ccc;
 
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

/* Style the form heading */
.userdetails h3 {
  font-size: 24px;
  margin-bottom: 20px;
}

/* Style form labels */
.userdetails label {
  display: block;
  font-weight: bold;
  margin-bottom: 5px;
}

/* Style form input fields and textarea */
.userdetails input[type="text"],
.userdetails input[type="number"],
.userdetails textarea {
  width: 90%;
  padding: 10px;
  margin-bottom: 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
}

/* Style the submit button (if you have one) */
.userdetails input[type="submit"] {
  background-color: #4caf50;
  color: white;
  border: none;
  padding: 10px 20px;
  border-radius: 4px;
  cursor: pointer;
}

/* Style the submit button on hover */
.userdetails input[type="submit"]:hover {
  background-color: #45a049;
}



/* Style any error messages (if you have any) */
.error-message {
  color: red;
  font-size: 14px;
}
.data{
display:flex;
width:450px;
flex-direction:column;
}
  
</style>

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
       
            <div>
                    <img src="<%=pdt.getImageurl()%>" alt="<%=pdt.getName()%>">
                </div>
                 <div class ="data">
                 <h2><%= pdt.getName() %></h2>
                  <p>Price: <%= pdt.getPrice() %></p>
                     <div class="description">
                  <h2>Description is there below:</h2>
                  <%=pdt.getDetails() %>
                     
                  </div>
                  
               
          </div>
          </div>
          
     <form action="buy_now" method="post">   
     <div class="userdetails">
    
     <h3>User Details</h3>
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required value="<%= user.getName() %>">
    <label for="phoneNumber">Phone number:</label>
    <input type="number" id="phoneNumber" name="phoneNumber"  value="<%= user.getPhoneNumber() %>">
      <div class="quantity">
				<label> Quantity: </label> <input type="number"
					id="product_quantity" name="quantity" required="true"
					placeholder="1" value="1" min="1" max="10">
			</div>
               
    <label for="address">Address:</label>
    <textarea id="add" name="add" required><%= user.getAddress() %></textarea>
     <label for="pincode">Pincode:</label>
    <input type="text" id="pincode" name="pincode" value="">
    
     <input type="hidden" name="pdtid" value="<%= pdt.getId() %>">
   <input type="hidden" name="userId" value="<%= pdt.getUserId() %>">
   <input type="hidden" name="price" value="<%= pdt.getPrice() %>">
    <input type="hidden" name="id" value="<%= user.getId() %>">
    
    
      <button type="submit">Order</button>
    </div>
    </div>
    </form>
   
<% } else { %>
    <p>Product Not Found.</p>
<% } %>
 

</body>
</html>