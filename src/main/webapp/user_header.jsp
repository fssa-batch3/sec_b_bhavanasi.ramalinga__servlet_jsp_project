<!DOCTYPE html>
<%@page import="in.fssa.productprice.service.UserService"%>
<%@page import="in.fssa.productprice.model.UserEntity"%>
<%@page import="in.fssa.productprice.model.User"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Your Page Title</title>
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
div#logo {
display:flex;
flex-direction: row;
  align-items: center;
  
 
}
.logo a{
color:white;
}
 .logo h3{
 margin:0px;
 }  
 .name a {
 text-decoration:none;
 }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
<header>

<%
UserEntity user = null;
if(request.getSession().getAttribute("userId") == null){
	user = null;
}else{
	int userId=(Integer) request.getSession().getAttribute("userId");
	
	 user = (UserEntity) new UserService().findById(userId);
}


if (user == null) {
%>

    <div class="sign-in">
        <p><a href="/globalfuncityweb/login" id="loginUser"> Sign In </a> | <a href="/globalfuncityweb/register"> Create Account</a>  
    </div>

<%
} else {
%>

<div class="logo" id="logo">
         <a href="/productpriceweb/category_list.jsp"><img src="https://iili.io/J9zJZCX.png" alt="Logo"></a>
           <a href="user_dashboard"> <h3><%= user.getName()  %></h3> </a>
        </div>
          <div id="menu">
            <ul>
                
                
                <li><i class="fas fa-shopping-cart" style="font-size: 36px"></i></li>
                <li><i class="far fa-heart" style="font-size: 36px"></i></li>
                <li><a href="">My Orders</a></li>
         <li><a href="/productpriceweb/profile?id=<%= user.getId() %>"><i class="fa fa-user" style="font-size:36px"></i></a></li>
   
            </ul>
        </div>
        
<%
}
%>

        
    </header>
</body>
</html>
