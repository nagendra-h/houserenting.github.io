<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error1.jsp"  %>
    <%@page import="java.sql.*,java.util.*,java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Watch shop</title>
<style>
body{
	background-color:black;
	}
	.di1{
		margin:3px;
		background:url("images/logo.png"),
			radial-gradient(red,purple);
		background-attachment:fixed;
		background-position:top top;
		background-repeat:no-repeat;
		margin-bottom:50px;
		width:auto;
		height:500px;
		text-align:center;
	}
	.di1 h1{
		padding-top:80px;
	}
	.di1 h2:hover{
		opacity:0.5;
		font-weight:bold;
		text-decoration:underline;
	}
	nav{
	    background-color: rgba(0, 0, 0, 0.705);    
	    padding: 10px;
	    padding-left: 50px;
	    padding-left: 50px;
	    display: flex;
	    box-shadow: 0px 3px 65px 0px rgb(157, 0, 255);
	}
	
.nav_side{
    float: right; 
    width: 90%;

}
.nav_side a{
    float:right;
    text-decoration: none;
    margin-right: 30px;
    padding-top: 20px;
    font-weight: bold;
    font-family: serif;
    font-size: 20px;
    color:white;
    justify-content: center;
    align-items: center;
    align-content: center;
    text-align: center;
}
.nav_side a:hover{
    color: rgb(157, 0, 255);
    text-decoration: underline;
    transition:  0.5s ease ;
}
	#logo{
		float:left;
		width:250px;
		color:orange;
		font-size:30px;
		text-shadow:2px 2px 5px green;
		}
	
	.tv{
    padding-bottom: 50px;
}
.tv h2{
    color: white;
    font-size: 30px;
    text-align: center;
    padding: 20px;
   
}
.tv .tv_container{
    display: flex;
    margin-left: 5%;
    margin-right: 5%;
}
.tv .tv_container .item{
	width: 33.33%;
	margin: 20px;
	height: auto;
	border: 1px solid  rgb(157, 0, 255);
}
.tv .tv_container .item:hover{
	box-shadow: 0px 3px 65px 0px rgb(17, 0, 255);
	transition: all 0.5s ease;
	transform:scale(1.1);

}

.tv .tv_container .item .item_img{
    width: 100%;
    height: 200px;
    overflow: hidden;
    
}
.tv .tv_container .item .item_img img{
    width: 100%;
    height: 200px;
}
.tv .tv_container .item .item_content{
    text-align: center;
    color: white;

}
.tv .tv_container .item .item_content h3{
    padding: 10px;
    font-size: 25px;
    font-family: serif;

}
.tv .tv_container .item .item_content p.button{
    padding: 10px;
    font-size: 20px;
    font-family: serif;
    display: none;

}
.tv .tv_container .item:hover p.button{
    display: block;
    transition: all 0.5s ease;
}

	
	</style>
	</head>
<body>


<%PrintWriter pc=response.getWriter();

if(session.getAttribute("name")==null){
	response.sendRedirect("login.jsp");
}
else{ %>
	<!-- Navigation -->
	
		<header>
	<div class="di1">
		<h1> MAGIC FLOOR </h1>
		<h2>Bengaluru </h2>
	<div>
	</header>
	 <nav class="nav nav_top">
           	 <div id="logo">
			<marquee behavior="scroll">House Boarding </marquee>            	
			</div>
            <div class="nav_side">
                 <a href="first.jsp" class="w3-bar-item w3-button">About</a>
       <a href="login.jsp" class="w3-bar-item w3-button">Logout</a>
              
            </div>
        </nav>


  <div class="tv">
         	 <h2><b>Checkout the best </b></h2>
              		<div class="tv_container">
                  			<div class="item">
                 				<div class="item_img">
              						<img src="images/magic.png" >
                 				</div>
                 	<div class="item_content">
                     		<h3>MHN apartment</h3>
                     		<p>
                     		 <form action="1.jsp">
         					    <button type="submit" >Click me</button>
      						</form>
                     		</p>
                   	</div>
        	</div>
                  <div class="item">
                 <div class="item_img">
                     <img src="images/magic.png">
                 </div>
                 <div class="item_content">
                     <h3>Sai Nandana Apartment </h3>
                    <p>
                     		 <form>
         					    <button type="submit" formaction="2.jsp">Click me</button>
      						</form>
                  	</p>
               
                 </div>
             </div>
     
             <div class="item">
                 <div class="item_img">
                     <img src="images/house3.jpg">
                 </div>
                 <div class="item_content">
                     <h3>Basappa Layout</h3>
                	<p>
                     	 <form>
         					    <button type="submit" formaction="3.jsp">Click me</button>
      						</form>
                    </p>
               
               
                 </div>
             </div>
              </div>

 <hr style="color:purple">
              <div class="tv">
                    <div class="tv_container">
           
                   <div class="item">
                       <div class="item_img">
                           <img src="images/3.jpg">
                       </div>
                       <div class="item_content">
                           <h3>Redux</h3>
                           <p>
                     		 
         					   <form>
         					    <button type="submit" formaction="4.jsp">Click me</button>
      						</form>
      						
                     		</p>
               
                        
                       </div>
                   </div>
                        <div class="item">
                       <div class="item_img">
                           <img src="images/2.jpg">
                       </div>
                       <div class="item_content">
                           <h3>Silicone </h3>
                           <p>
                     		 
         					   <form>
         					    <button type="submit" formaction="5.jsp">Click me</button>
      						</form>
      						
                     		</p>
               
                       
                       </div>
                   </div>
           
                   <div class="item">
                       <div class="item_img">
                           <img src="images/house2.jpg">
                       </div>
                       <div class="item_content">
                           <h3>Rolex</h3>
                          <p>
                     		 
         					   <form>
         					    <button type="submit" formaction="6.jsp">Click me</button>
      						</form>
      						
                     		</p>
               
                     
                       </div>
                   </div>
                    </div>
	
<!-- 
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
  <div class="container">
    <a class="navbar-brand" href="#">Watch shop</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item active">
          <a class="nav-link" href="dealer.jsp">DEALER DETAIL</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="worker.jsp">WORKER DETAIL</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="purchase.jsp">PURCHASE DETAIL</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="billing.jsp">BILLING</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">VIEW</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<header>

  <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <%-- <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>--%>  
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active" style="background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJykHmvvbfX_V5Ean70lEvhSWYmzpyWdJCSg&usqp=CAU')">
        <div class="carousel-caption">
          <h5>Pierce Brosnan</h5>
          <P>I have some wonderful suits in my closet, a lovely car, some refined watches.</p>
        </div>
      </div>
    <%--<div class="carousel-item" style="background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRvX0buU0kRCgs9IzFUbxvLZjtqrkOO--4Aw&usqp=CAU')">
        <div class="carousel-caption">
          <h5>Second slide label</h5>
          <p>Some representative placeholder content for the second slide.</p>
        </div>
      </div>
      <div class="carousel-item" style="background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLr7S4dM952oU8jujDzhvRf9XLxOwSzWOxRw&usqp=CAU')">
        <div class="carousel-caption">
          <h5>Third slide label</h5>
          <p>Some representative placeholder content for the third slide.</p>
        </div>
      </div>
    </div> 
    
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>--%>

<!-- </header>
Page Content 
<section class="py-5">
  <div class="container">
    <h1 class="fw-light"> John Mayer</h1>
    <p class="lead">A man’s got two shots for jewelry: a wedding ring and a watch. The watch is a lot easier to get on and off than a wedding ring.</p>
  </div>
</section>
-->

<%}%>



</body>
</html>

