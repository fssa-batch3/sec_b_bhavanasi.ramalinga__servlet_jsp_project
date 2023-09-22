<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
 header {
    background-color: #002266; 
    color: #fff; 
   height:80px;
   width:100%;
    display:flex;
    justify-content:space-between;
    align-items:center;
     position: fixed;
    top: 0;
    left: 0;
    width: 100%;
}


#logo img {
    max-width: 100px; 
}

/* Style for the menu */
#menu ul {
    list-style-type:
    margin: 0;
    padding: 0;
}

#menu ul li {
    display: inline-block; 
    margin-right: 20px;
}

#menu ul li a {
    color: #fff; 
    text-decoration: none;
    font-size: 16px; 
}


#menu ul li i {
    font-size: 24px; 
    vertical-align: middle; 
    margin-right: 5px; 
}
div#logo{
display:flex;
}
 div#logo h3{
 margin-top:25px;
 color:white;
 }

</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
<header>
 <div id="logo">
         <a href="/productpriceweb/products_list"> <img src="https://iili.io/J9zJZCX.png" alt="Logo"></a>
        <a href="/productpriceweb/products_list"> <h3>SoundMart</h3></a>
        </div>
            <div id="menu">
            <ul>
               
                <li><a href="seller_order">Orders</a></li>
                 <li> <a href="add_product.jsp">Create Product</a></li>
              <li><a href="profile"><i class="fa fa-user" style="font-size:36px"></i></a></li>

            </ul>
        </div>
       
    </header>

</body>
</html>