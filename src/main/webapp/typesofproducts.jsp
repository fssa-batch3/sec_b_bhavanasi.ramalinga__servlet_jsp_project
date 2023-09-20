<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--Changing the number in the column_# class changes the number of columns-->
<!DOCTYPE style PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
	*{
  box-sizing:border-box;
  -moz-box-sizing:border-box;
}
body {
	background: url(//subtlepatterns.com/patterns/scribble_light.png);
  font-family: Calluna, Arial, sans-serif;
  min-height: 1000px;
}
#wrap{
	width: 90%;
	margin: 50px auto;
	margin-top:200px;
}
.columns_2 figure{
   width:49%;
   margin-right:1%;
}
.columns_2 figure:nth-child(2){
	margin-right: 0;
}
.columns_3 figure{
   width:32%;
   margin-right:1%;
}
.columns_3 figure:nth-child(3){
	margin-right: 0;
}
.columns_4 figure{
   width:24%;
   margin-right:1%;
}
.columns_4 figure:nth-child(4){
	margin-right: 0;
}
.columns_5 figure{
   width:19%;
   margin-right:1%;
}
.columns_5 figure:nth-child(5){
	margin-right: 0;
}
#columns figure:hover{
	-webkit-transform: scale(1.1);
	-moz-transform:scale(1.1);
	transform: scale(1.1);

}
#columns:hover figure:not(:hover) {
	opacity: 0.4;
}
div#columns figure {
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

div#columns figure img {
	width: 100%;
	border-bottom: 1px solid #ccc;
	padding-bottom: 15px;
	margin-bottom: 5px;
}

div#columns figure figcaption {
  font-size: .9rem;
  color: #444;
  line-height: 1.5;
  height:60px;
  font-weight:600;
  text-overflow:ellipsis;
}

a.button{
  padding:10px;
  background:#002266;
  margin:10px;
  display:block;
  text-align:center;
  color:#fff;
  transition:all 1s linear;
  text-decoration:none;
  text-shadow:1px 1px 3px rgba(0,0,0,0.3);
  border-radius:3px;
  border-bottom:3px solid #ff6536;
  box-shadow:1px 1px 3px rgba(0,0,0,0.3);
}
a.button:hover{
  background:#ff6536;
  border-bottom:3px solid salmon;
  color:#f1f2f3;
}
div.images  img{
margin-top:70px;
height:400px;
width:1500px;

}
@media screen and (max-width: 960px) { 
  #columns figure { width: 24%; }
}
@media screen and (max-width: 767px) {
  #columns figure { width:32%;}
}
@media screen and (max-width: 600px) {
  #columns figure { width: 49%;}
}
@media screen and (max-width: 500px) {
  #columns figure { width: 100%;}
}
</style>
<body>

<jsp:include page="user_header.jsp" />


</div>
	<div id="wrap">
	<div id="columns" class="columns_4">
  <figure>
  <img src="https://i.imgur.com/ruU04I6.jpg">
	<figcaption>Green Checkered Shirt</figcaption>
    <span class="price">$44</span>
    <a class="button" href="#">Book Now</a>
	</figure>
	
	<figure>
	<img src="https://i.imgur.com/sPxEkEI.jpg">
	<figcaption>Green and Black Flowers</figcaption>
    <span class="price">$44</span>
    <a class="button" href="#">Book Now</a>
	</figure>
	
  <figure>
	<img src="https://i.imgur.com/S3Umfmb.jpg">
	<figcaption>Black Dots</figcaption>
    <span class="price">$44</span>
    <a class="button" href="#">Book Now</a>
	</figure>
  
	<figure>
	<img src="https://i.imgur.com/x1IZjjy.jpg">
	<figcaption>Red Flowy</figcaption>
    <span class="price">$44</span>
    <a class="button" href="#">Book Now</a>
	</figure>
	
   <figure>
	 <img src="https://i.imgur.com/Jv8IWKQ.jpg">
	<figcaption>Yellow Button-Up</figcaption>
    <span class="price">$44</span>
    <a class="button" href="#">Book Now</a>
	</figure>
	
   <figure>
	 <img src="https://i.imgur.com/MpLejRu.jpg">
	<figcaption>Put a Bird On It</figcaption>
     <span class="price">$44</span>
     <a class="button" href="#">Book Now</a>
	</figure>
  
	<figure>
	<img src="https://i.imgur.com/SZmPJ7W.jpg">
	<figcaption>Polka Dots</figcaption>
    <span class="price">$44</span>
    <a class="button" href="#">Book Now</a>
	</figure>	
  
   <figure>
	<img src="https://i.imgur.com/OiEMgMx.jpg">
	<figcaption>Blue Spots</figcaption>
     <span class="price">$44</span>
     <a class="button" href="#">Book Now</a>
	</figure>
  
    <figure>
	<img src="https://i.imgur.com/HolvggB.jpg">
    <figcaption>Pink Dots</figcaption>
      <span class="price">$44</span>
      <a class="button" href="#">Book Now</a>
	</figure>	
</div>

</body>
</html>