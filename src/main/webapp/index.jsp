<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="Shop" content="FrontPage.By.Ruben.Vardanyan">
    <meta name="Furniture" content="FrontPage.By.Ruben.Vardanyan">
    
    <meta charset="utf-8">




    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
      html{
        scroll-behavior: smooth;
        -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
      }
      .b25{
        background: #252525;
      }
      .b1{
        background: #1b1b1b;
      }
      .outlineNone{
        outline: none !important;
        border:none;
        
      }
      .a:hover img{
        transition: 0.3s ease-in-out;
          transform: scale(1.05,1.05);
          border: 1px solid #1b1b1b !important;
      }
      .aBord-none:hover img{
        transition: 0.3s ease-in-out;
          transform: scale(1.05,1.05);
         
      }
      .gotopbtn{
        position: fixed;
        width: 50px;
        height: 50px;
        bottom: 4.5%;
        right: 5%;
        text-decoration: none;
        text-align: center;
        line-height: 50px;
        z-index: 15
      }
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
----css-----------------------------------------------------
@import url(https://fonts.googleapis.com/css?family=Raleway:400,500,600,700);  
/** /!!! core css Should not edit !!!/**/

body{
  background: -webkit-linear-gradient(45deg, #0BBDE5 0%, rgba(11, 189, 229, 0) 70%), -webkit-linear-gradient(315deg, #EC0432 10%, rgba(236, 4, 50, 0) 80%), -webkit-linear-gradient(225deg, #2305CC 10%, rgba(35, 5, 204, 0) 80%), -webkit-linear-gradient(135deg, #B4DC04 100%, rgba(180, 220, 4, 0) 70%);
background: linear-gradient(45deg, #0BBDE5 0%, rgba(11, 189, 229, 0) 70%), linear-gradient(135deg, #EC0432 10%, rgba(236, 4, 50, 0) 80%), linear-gradient(225deg, #2305CC 10%, rgba(35, 5, 204, 0) 80%), linear-gradient(315deg, #B4DC04 100%, rgba(180, 220, 4, 0) 70%);
  height: 100%;
  width: 100%;
}

.csSlideOuter {
	overflow: hidden;
}
.lightSlider:before, .lightSlider:after {
	content: " ";
	display: table;
}
.csSlideWrapper > .lightSlider:after {
	clear: both;
}
.csSlideWrapper .csSlide {
	-webkit-transform: translate(0px, 0px);
	-ms-transform: translate(0px, 0px);
	transform: translate(0px, 0px);
	-webkit-transition: all 1s;
	transition: all 1s;
	-webkit-transition-duration: inherit;
	transition-duration: inherit;
	-webkit-transition-timing-function: inherit;
	transition-timing-function: inherit;
}
.csSlideWrapper .csFade {
	position: relative;
}
.csSlideWrapper .csFade > * {
	position: absolute !important;
	top: 0;
	left: 0;
	z-index: 9;
	margin-right: 0;
	width: 100%;
}
.csSlideWrapper.usingCss .csFade > * {
	opacity: 0;
	-webkit-transition-delay: 0s;
	transition-delay: 0s;
	-webkit-transition-duration: inherit;
	transition-duration: inherit;
	-webkit-transition-property: opacity;
	transition-property: opacity;
	-webkit-transition-timing-function: inherit;
	transition-timing-function: inherit;
}
.csSlideWrapper .csFade > *.active {
	z-index: 10;
}
.csSlideWrapper.usingCss .csFade > *.active {
	opacity: 1;
}
/** /!!! End of core css Should not edit !!!/**/

/* Pager */
.csSlideOuter .csPager.cSpg {
	margin: 10px 0 0;
	padding: 0; 
	text-align: center;
}
.csSlideOuter .csPager.cSpg > li {
	cursor: pointer;
	display: inline-block;
	padding: 0 5px;
  list-style-type: none;
}
.csSlideOuter .csPager.cSpg > li a {
	background-color: #222222;
	border-radius: 30px;
	display: inline-block;
	height: 8px;
	overflow: hidden;
	text-indent: -999em;
	width: 8px;
	position: relative;
	z-index: 99;
	-webkit-transition: all 0.5s linear 0s;
	transition: all 0.5s linear 0s;
}
.csSlideOuter .csPager.cSpg > li:hover a, .csSlideOuter .csPager.cSpg > li.active a {
	background-color: #428bca;
}
.csSlideOuter .media {
	opacity: 0.8;
}
.csSlideOuter .media.active {
	opacity: 1;
}
/* End of pager */

/** Gallery */
.csSlideOuter .csPager.cSGallery {
	list-style: none outside none;
	padding-left: 0;
	margin: 0;
	-webkit-touch-callout: none;
	-webkit-user-select: none;
	-khtml-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}
.csSlideOuter .csPager.cSGallery li {
	opacity: 0.7;
	-webkit-transition: opacity 0.35s linear 0s;
	transition: opacity 0.35s linear 0s;
}
.csSlideOuter .csPager.cSGallery li.active, .csSlideOuter .csPager.cSGallery li:hover {
	opacity: 1;
}
.csSlideOuter .csPager.cSGallery img {
	display: block;
	height: auto;
	max-width: 100%;
}
.csSlideOuter .csPager.cSGallery:before, .csSlideOuter .csPager.cSGallery:after {
	content: " ";
	display: table;
}
.csSlideOuter .csPager.cSGallery:after {
	clear: both;
}
/* End of Gallery*/

/* slider actions */
.csAction > a {
	width: 32px;
	display: block;
	top: 50%;
	height: 32px;
	background-image: url('../img/controls.png');
	cursor: pointer;
	position: absolute;
	z-index: 99;
	margin-top: -16px;
	opacity: 0.5;
	-webkit-transition: opacity 0.35s linear 0s;
	transition: opacity 0.35s linear 0s;
}
.csAction > a:hover {
	opacity: 1;
}
.csAction > .csPrev {
left: 10px;
font-size: 30px;
color: #FFF;
background: #000;
text-align: center;

}
.csAction > .csNext {
font-size: 30px;
color: #FFF;
background: #000;
text-align: center;
	right: 10px;
}
.cS-hidden {
	height: 1px;
	opacity: 0;
	filter: alpha(opacity=0); 
	overflow: hidden;
}

ul{
  
  list-style-type: none;
}

.center {
max-width: 650px;
width: 100%;
margin: auto; 
display: block;
margin-top: 1rem;;
} 
h1 {color: #fff; font-size: 38px;
font-family: raleway;
text-transform: uppercase;
font-weight: 800;
font-size: 29px;
text-shadow: 3px 3px rgba(0, 0, 0, 0.25);
} 

#lightSlider {
padding: 0;
margin: 0 0 9px 0;
}
.slide-show {
  width: 300px; /* Adjust this to match your image width */
  height: 200px; /* Adjust this to match your image height */
  overflow: hidden;
  position: relative;
}

.slide-show img {
  width: 100%;
  height: auto;
  display: block;
  position: absolute;
  top: 0;
  left: 100%; /* Initially, move the image outside the container to the right */
  animation: slide 4s linear infinite; /* Adjust animation duration as needed */
}

@keyframes slide {
  0%, 100% {
    left: 100%; /* Start and end position */
  }
  25%, 75% {
    left: 0; /* Middle position (fully visible) */
  }
}

      
    </style>
    <title>Home Page</title>
  </head>

  <body id="body-start">

<header>
        <div id="logo">
          <img src="https://iili.io/J9zJZCX.png" alt="Logo">
        </div>
        <div id="menu">
            <ul>
                 <li><a href="user/new">Register</a></li>
             <li><a href="user/login">Login</a></li>

            </ul>
        </div>
    </header>
    
    <div class="center">
  <h1>Shop Elecronics </h1>

  </div> 
  
  
  <!-- content start-->
 <div class="container" id="depart">
  <h3 class=" d-flex  justify-content-center  justify-content-sm-start mt-5 mb-3">Shop by Department</h3>
  <div class="row  justify-content-center">
   <div class="col-12 col-sm-4 col-lg">
      <a href="#" class="a text-secondary nav-link ">
       <div class="card border-0">
          <img src="https://iili.io/J95TFuR.jpg" alt="J95TFuR.jpg" class="card-img-top border  border-warning rounded-circle" alt="..." >
          <div class="card-body">
            <h5 class="card-title text-center">Camera</h5>   
          </div>
      </div>
    </a> 
    </div>
     <div class="col-12 col-sm-4 col-lg">
      <a href="#" class="a text-secondary nav-link ">
       <div class="card border-0">
          <img src="https://iili.io/J95lSHP.png" alt="J95lSHP.png" alt="..." >
          <div class="card-body">
            <h5 class="card-title text-center">Mobile Chargers</h5>   
          </div>
      </div>
    </a> 
    </div>
     <div class="col-12 col-sm-4 col-lg">
      <a href="#" class="a text-secondary nav-link ">
       <div class="card border-0">
          <img src="https://iili.io/J95lmOX.jpg" class="card-img-top border  border-warning rounded-circle" alt="..." >
          <div class="card-body">
            <h5 class="card-title text-center">Electric Wires</h5>   
          </div>
      </div>
    </a> 
    </div>
     <div class="col-12 col-sm-4 col-lg">
      <a href="#" class="a text-secondary nav-link ">
       <div class="card border-0">
          <img src="https://iili.io/J950fJS.jpg" alt="..." >
          <div class="card-body">
            <h5 class="card-title text-center">Laptops</h5>   
          </div>
      </div>
    </a> 
    </div>
     <div class="col-12 col-sm-4 col-lg">
      <a href="#" class="a text-secondary nav-link ">
       <div class="card border-0">
          <img src="https://iili.io/J950eXs.jpg" class="card-img-top border  border-warning rounded-circle" alt="..." >
          <div class="card-body">
            <h5 class="card-title text-center">EarPhones</h5>   
          </div>
      </div>
    </a> 
    </div>
      <!-- new -->
    <div class="d-none d-lg-block w-100"></div>
    <!-- new -->
     <div class="col-12 col-sm-4 col-lg">
      <a href="#" class="a text-secondary nav-link ">
       <div class="card border-0">
          <img src="https://iili.io/J95MnYQ.jpg" alt="..." >
          <div class="card-body">
            <h5 class="card-title text-center">Mobiles</h5>   
          </div>
      </div>
    </a> 
    </div>
  
    <div class="col-12 col-sm-4 col-lg">
      <a href="#" class="a text-secondary nav-link ">
       <div class="card border-0">
          <img src="https://iili.io/J95Efte.jpg" class="card-img-top border  border-warning rounded-circle" alt="..." >
          <div class="card-body">
            <h5 class="card-title text-center">TV</h5>   
          </div>
      </div>
    </a> 
    </div>
    <div class="col-12 col-sm-4 col-lg">
      <a href="#" class="a text-secondary nav-link ">
       <div class="card border-0">
          <img src="https://iili.io/J95EXDX.jpg" alt="..." >
          <div class="card-body">
            <h5 class="card-title text-center">Laptop Chargers</h5>   
          </div>
      </div>
    </a> 
    </div>
    <div class="col-12 col-sm-4 col-lg">
      <a href="#" class="a text-secondary nav-link ">
       <div class="card border-0">
          <img src="https://iili.io/J95EmOP.jpg" class="card-img-top border  border-warning rounded-circle" alt="..." >
          <div class="card-body">
            <h5 class="card-title text-center">Ipads</h5>   
          </div>
      </div>
    </a> 
    </div>
    <div class="col-12 col-sm-4 col-lg">
      <a href="#" class="a text-secondary nav-link ">
       <div class="card border-0">
          <img src="https://iili.io/J95GCbt.jpg" class="card-img-top border  border-warning rounded-circle" alt="..." >
          <div class="card-body">
            <h5 class="card-title text-center">Mobile Covers</h5>   
          </div>
      </div>
    </a> 
    </div>


  </div>
</div>

  <!-- content part 1 about start -->
  <div class="container" id="weTogether">
      <h3 class=" d-flex  justify-content-center  justify-content-sm-start mt-5">We are in this together</h3>
      <div class="row">
         <div class="col-12 col-sm-6 col-lg-3">
           
               <div class="card border-0">
                  <img src="https://www.ashleyfurniture.com/on/demandware.static/-/Library-Sites-AshcommSharedLibrary/default/dw7febee45/images/homepage/footer/20200512/MDS_N1b_Footer_DK.jpg" class="card-img-top border-0" alt="..." >
                  <div class="card-body"> 
                  </div>
              </div>
            
         </div>
         <div class="col-12 col-sm-6 col-lg-3">
           <a href="#" class=" text-secondary nav-link ">
               <div class="card border-0">
                  <img src="https://www.ashleyfurniture.com/on/demandware.static/-/Library-Sites-AshcommSharedLibrary/default/dwa6370a3f/images/homepage/footer/20200512/MDS_N1c_Footer_DK.jpg" class="card-img-top border-0" alt="..." >
                  <div class="card-body"> 
                  </div>
              </div>
            </a>
         </div>
         <div class="col-12 col-sm-6 col-lg-3">
           <a href="#" class=" text-secondary nav-link ">
               <div class="card border-0">
                  <img src="https://www.ashleyfurniture.com/on/demandware.static/-/Library-Sites-AshcommSharedLibrary/default/dw6f39ef25/images/homepage/footer/20200512/MDS_N1a_Footer_DK.jpg" class="card-img-top border-0" alt="..." >
                  <div class="card-body"> 
                  </div>
              </div>
            </a>
         </div>
          <div class="col-12 col-sm-6 col-lg-3">
           <a href="#" class=" text-secondary nav-link ">
               <div class="card border-0">
                  <img src="https://www.ashleyfurniture.com/on/demandware.static/-/Library-Sites-AshcommSharedLibrary/default/dw2ce0442b/images/homepage/footer/20200512/MDS_N1d_Footer_DK.jpg" class="card-img-top border-0" alt="..." >
                  <div class="card-body"> 
                  </div>
              </div>
            </a>
         </div>
      </div>
</div>

 









<!-- footer start -->
<div class="container-fluid">
    <div class="row text-center b25 text-light text-uppercase pt-1">
      <div class="col-12 col-md">
        <a href="" class="nav-link  text-light h5">contact us</a> 
      </div>
      <div class="col-12 col-md">
        <a href="" class="nav-link  text-light h5">Live chat</a> 
      </div>
       <div class="col-12 col-md ">
          <a href="" class="nav-link text-light h5">shipping</a>
      </div>
       <div class="col-12 col-md ">
          <a href="" class="nav-link text-light h5">term & conditions</a> 
      </div>
       
    </div>

    <div class="row b25 text-center">
     
     
     
      
       <div class="col d-none d-md-block">
        <ul class="list-group list-group-flush rounded-bottom">
          <li class="list-group-item text-light bg-dark font-weight-bold"><a href="#body-start" class="text-decoration-none text-light">Home</a></li>
          <li class="list-group-item text-light bg-dark"><a href="#depart" class="text-decoration-none text-light">Shop by Department</a></li>
          <li class="list-group-item text-light bg-dark"><a href="#special" class="text-decoration-none text-light">Special Offers</a></li>
          <li class="list-group-item text-light bg-dark"><a href="#newOffers" class="text-decoration-none text-light">New</a></li>
          <li class="list-group-item text-light bg-dark"><a href="#weTogether" class="text-decoration-none text-light">We're in this together</a></li>
        </ul>
      </div>
       <div class="col d-none d-md-block">
        <ul class="list-group list-group-flush rounded-bottom">
          <li class="list-group-item text-light bg-dark font-weight-bold"><a href="" class="text-decoration-none text-light">Group</a></li>
          <li class="list-group-item text-light bg-dark"><a href="" class="text-decoration-none text-light">link1</a></li>
          <li class="list-group-item text-light bg-dark"><a href="" class="text-decoration-none text-light">link2</a></li>
          <li class="list-group-item text-light bg-dark"><a href="" class="text-decoration-none text-light">link3</a></li>
          <li class="list-group-item text-light bg-dark"><a href="" class="text-decoration-none text-light">link4</a></li>
        </ul>
      </div>
       <div class="col d-none d-md-block">
        <ul class="list-group list-group-flush rounded-bottom">
          <li class="list-group-item text-light bg-dark font-weight-bold"><a href="" class="text-decoration-none text-light">Group</a></li>
          <li class="list-group-item text-light bg-dark"><a href="" class="text-decoration-none text-light">link1</a></li>
          <li class="list-group-item text-light bg-dark"><a href="" class="text-decoration-none text-light">link2</a></li>
          <li class="list-group-item text-light bg-dark"><a href="" class="text-decoration-none text-light">link3</a></li>
          <li class="list-group-item text-light bg-dark"><a href="" class="text-decoration-none text-light">link4</a></li>
        </ul>
      </div>
       <div class="col d-none d-md-block">
        <ul class="list-group list-group-flush rounded-bottom">
          <li class="list-group-item text-light bg-dark font-weight-bold"><a href="" class="text-decoration-none text-light">Group</a></li>
          <li class="list-group-item text-light bg-dark"><a href="" class="text-decoration-none text-light">link1</a></li>
          <li class="list-group-item text-light bg-dark"><a href="" class="text-decoration-none text-light">link2</a></li>
          <li class="list-group-item text-light bg-dark"><a href="" class="text-decoration-none text-light">link3</a></li>
          <li class="list-group-item text-light bg-dark"><a href="" class="text-decoration-none text-light">link4</a></li>
        </ul>
      </div>
       <div class="col d-none d-md-block">
        <ul class="list-group list-group-flush rounded-bottom">
          <li class="list-group-item text-light bg-dark font-weight-bold"><a href="" class="text-decoration-none text-light">Group</a></li>
          <li class="list-group-item text-light bg-dark"><a href="" class="text-decoration-none text-light">link1</a></li>
          <li class="list-group-item text-light bg-dark"><a href="" class="text-decoration-none text-light">link2</a></li>
          <li class="list-group-item text-light bg-dark"><a href="" class="text-decoration-none text-light">link3</a></li>
          <li class="list-group-item text-light bg-dark"><a href="" class="text-decoration-none text-light">link4</a></li>
        </ul>
      </div>

    </div>

    <div class="row b25 text-light">
      <div class="col-12 text-center pt-3 pb-1">
        <a href="#"> <img  class=" mr-2 ml-2" src="https://seeklogo.com/images/F/facebook-icon-circle-logo-09F32F61FF-seeklogo.com.png" loading="lazy" width="30" height="30"></a>
       <a href="#"><img  class=" mr-2 ml-2" src="https://i1.wp.com/www.fashionrevolution.org/wp-content/uploads/2019/07/kisspng-social-media-marketing-youtube-instagram-photograp-instagram-logo-icon-png-5b875849ea5482.8768584615355966179598.png?fit=512%2C512&ssl=1" loading="lazy" width="30" height="30"></a>
        <a href="#"><img  class=" mr-2 ml-2" src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/YouTube_social_white_circle_%282017%29.svg/1200px-YouTube_social_white_circle_%282017%29.svg.png"  loading="lazy" width="30" height="30"></a>
        <a href="#"><img class=" mr-2 ml-2" src="https://3.bp.blogspot.com/-NxouMmz2bOY/T8_ac97cesI/AAAAAAAAGg0/e3vY1_bdnbE/s1600/Twitter+logo+2012.png" loading="lazy" width="30" height="30"></a>
        
      </div>
      <div class="col-12 text-center pt-1 pb-3">
        &copy; Bishal roy
      </div>
    </div>
  </div>
<!-- footer -->
<!-- scroll go top start -->
<a id="myBtn" class="gotopbtn" href="#body-start"><img src="https://cdn3.iconfinder.com/data/icons/road-sign/154/road-sign-top-arrow-yellow-attention-512.png" width="50" height="50" loading="lazy"></a>
<!-- scroll end -->
 <!-- by Ruben Vardanyan -->
<!-- loading start -->
<div class="loader-wrapper"  >
  <div class="loader-inner">
     <div class="st1"></div>
     <div class="st2"></div>
     <div class="st3"></div>
  </div>
</div>
<!-- loading end -->

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript">
      $(window).on("load",function(){
     $(".loader-wrapper").fadeOut("slow");
});
      //  by Ruben Vardanyan 
      //scroll Top 
      //Get the button
      var mybutton = document.getElementById("myBtn");
       mybutton.style.display = "none";
      // When the user scrolls down 20px from the top of the document, show the button
      window.onscroll = function() {scrollFunction()};

      function scrollFunction() {
        if (document.body.scrollTop > 500 || document.documentElement.scrollTop > 500) {
          mybutton.style.display = "block";
        } else {
          mybutton.style.display = "none";
        }
      }
    </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  </body>
</html>