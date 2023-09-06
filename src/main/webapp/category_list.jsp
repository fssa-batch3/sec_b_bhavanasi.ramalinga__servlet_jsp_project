<%@page import="in.fssa.productprice.model.Category"%>
<%@page import="in.fssa.productprice.service.CategoryService"%>
<%@page import="java.util.Set"%>
<%@page import="in.fssa.productprice.model.CategoryEntity"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.thumbnails{
display:flex;
}
.thumbnails {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
}

.product {
    width: 30%; /* Adjust the width as needed */
    margin-bottom: 20px;
    text-align: center;
}

.product img {
    width: 200%;
    height:30vh;
}

.break {
    width: 100%;
    margin: 0;
    padding: 0;
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
        section {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between; /* Adjust this property for spacing between items */
}

.product_cart {
    flex: 0 0 calc(33.333% - 10px); /* 33.333% width for three items per row with some spacing */
    margin-bottom: 20px; /* Adjust this for vertical spacing between rows */
    box-sizing: border-box;
    border: 1px solid #ddd; /* Add a border around each product card */
    padding: 10px;
    text-align: center;
}

.product_cart img {
    max-width: 100%;
    height: auto;
}

.product_cart h3 {
    margin: 10px 0;
}
        

</style>
</head>
<body>
<jsp:include page="user_header.jsp" />


<h2> Category List </h2> 

<% Set<CategoryEntity> category =(Set<CategoryEntity>) request.getAttribute("categoryList"); %>

<section>
   <% CategoryService sr = new CategoryService(); %>
<% Set<Category> categoriesList = sr.listAllCategory(); %>

<section>
    <% for (Category ps : categoriesList) { %>
        <a href="UserList/Products?id=<%=ps.getId()%>">
            <div class="product_cart">
            
                <div>
                    <img src="<%=ps.getImageURL()%>" alt="<%=ps.getName()%>">
                </div>
                <div>
                    <a href="product/userlist?id=<%=ps.getId() %>"><h3><%=ps.getName()%></h3>
                </div>
            </div>
        </a>
    <% } %>
</section>



</body>
</html>