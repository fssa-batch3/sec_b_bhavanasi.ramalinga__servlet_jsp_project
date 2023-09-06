<!DOCTYPE html>
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
    
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <header>
        <div id="logo">
          <img src="https://iili.io/J9zJZCX.png" alt="Logo">
        </div>
        <div id="menu">
            <ul>
                
                
                <li><i class="fas fa-shopping-cart" style="font-size: 36px"></i></li>
                <li><i class="far fa-heart" style="font-size: 36px"></i></li>
                <li><a href="">My Orders</a></li>
              <li><a href="user/edit"><i class="fa fa-user" style="font-size:36px"></i></a></li>

            </ul>
        </div>
    </header>
    <!-- Rest of your page content goes here -->
</body>
</html>
