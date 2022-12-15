<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<style>
body {font-family: "Times New Roman", Georgia, Serif;}
h1, h2, h3, h4, h5, h6 {
  font-family: "Playfair Display";
  letter-spacing: 5px;
}



* {
  box-sizing: border-box;
}

/* Position the image container (needed to position the left and right arrows) */
.container {
  position: relative;
}

/* Hide the images by default */
.mySlides {
  display: none;
}

/* Add a pointer when hovering over the thumbnail images */
.cursor {
  cursor: pointer;
}

/* Next & previous buttons */
.prev,
.next {
  cursor: pointer;
  position: absolute;
  top: 40%;
  width: auto;
  padding: 16px;
  margin-top: -50px;
  color: white;
  font-weight: bold;
  font-size: 20px;
  border-radius: 0 3px 3px 0;
  user-select: none;
  -webkit-user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover,
.next:hover {
  background-color: rgba(0, 0, 0, 0.8);
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* Container for image text */
.caption-container {
  text-align: center;
  background-color: #222;
  padding: 2px 16px;
  color: white;
}

.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Six columns side by side */
.column {
  float: left;
  width: 16.66%;
}

/* Add a transparency effect for thumnbail images */
.demo {
  opacity: 0.6;
}

.active,
.demo:hover {
  opacity: 1;
}


</style>
</head>
<body>

<script>


let slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("demo");
  let captionText = document.getElementById("caption");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
  captionText.innerHTML = dots[slideIndex-1].alt;
}

</script>

<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-padding w3-card" style="letter-spacing:4px;">
    <a href="#home" class="w3-bar-item w3-button">Herle Rental Corporation</a>
    <!-- Right-sided navbar links. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
     <a href="first.jsp" class="w3-bar-item w3-button">About</a>
          <a href="home1.jsp" class="w3-bar-item w3-button">Home</a>
     
       <a href="login.jsp" class="w3-bar-item w3-button">Logout</a>
    </div>
  </div>
</div>




<!-- Container for the image gallery -->
 <div class="mySlides">
    <div class="numbertext">1 / 6</div>
      <img src="images/n7.jpg" style="width:100%">
  </div>

  <div class="mySlides">
    <div class="numbertext">2 / 6</div>
      <img src="images/n8.jpg" style="width:100%">
  </div>

  <div class="mySlides">
    <div class="numbertext">3 / 6</div>
      <img src="images/n9.jpg" style="width:100%">
  </div>

  <div class="mySlides">
    <div class="numbertext">4 / 6</div>
      <img src="images/n10.jpg" style="width:100%">
  </div>

  <div class="mySlides">
    <div class="numbertext">5 / 6</div>
      <img src="images/n11.jpg" style="width:100%">
  </div>

  <div class="mySlides">
    <div class="numbertext">6 / 6</div>
      <img src="images/n12.jpg" style="width:100%">
  </div>

  <!-- Next and previous buttons -->
  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>

  <!-- Image text -->
  <div class="caption-container">
    <p id="caption"></p>
  </div>

  <!-- Thumbnail images -->
 <div class="row">
    <div class="column">
      <img class="demo cursor" src="images/n7.jpg" style="width:100%" onclick="currentSlide(1)" alt="photo1">
    </div>
    <div class="column">
      <img class="demo cursor" src="images/n8.jpg" style="width:100%" onclick="currentSlide(2)" alt="photo2">
    </div>
    <div class="column">
      <img class="demo cursor" src="images/n9.jpg" style="width:100%" onclick="currentSlide(3)" alt="photo3">
    </div>
    <div class="column">
      <img class="demo cursor" src="images/n10.jpg" style="width:100%" onclick="currentSlide(4)" alt="photo4">
    </div>
    <div class="column">
      <img class="demo cursor" src="images/n11.jpg" style="width:100%" onclick="currentSlide(5)" alt="photo5">
    </div>
    <div class="column">
      <img class="demo cursor" src="images/n12.jpg" style="width:100%" onclick="currentSlide(6)" alt="photo6">
    </div>
  </div>
</div>






  <hr>
  
  <!-- Menu Section -->
  
  <div class="w3-row w3-padding-64" id="menu">
   <div class="w3-col l6 w3-padding-large">
      <img src="images/3.jpg" class="w3-round w3-image w3-opacity-min" alt="Menu" style="width:100%">
    </div>
    <div class="w3-col l6 w3-padding-large">
      <h1 class="w3-center">Rolex Appartment</h1><br>
      <h4>Rental Value: ₹30,000</h4>
    
      <h4>Security Deposit: ₹2.0 Lac</h4>
    
      <h4>Address: 72,BHEL 2nd Stage, Bangalore - West, Karnataka</h4>
    
      <h4>Landmarks: Basappa Layout, Near Rajarajeshwari Temple, RR Nagar, Bangalore.</h4>
    
      <h4>Furnishing: Semi-Furnished</h4>
      
      <h4>Flooring: Ceramic Tiles</h4>
      
	  <h4>Overlooking Main Road</h4>
		
	  <span style="color:black;font-size:30px;" >Carpet Area: 800 sqft( ₹19/sqft) ||</span> &nbsp&nbsp&nbsp&nbsp
	  	  <span style="color:black;font-size:30px;" >Floor:Ground (Out of 1 Floors) ||</span>      
	  	  <span style="color:black;font-size:30px;" >Status:Immediately ||</span>      &nbsp&nbsp&nbsp&nbsp
	  	  <span style="color:black;font-size:30px;" >Facing:North ||</span>    &nbsp&nbsp&nbsp&nbsp  
	  	  <span style="color:black;font-size:30px;" >Furnished Status:Semi-Furnished ||</span>&nbsp&nbsp&nbsp&nbsp
		  <span style="color:black;font-size:30px;" >Car Parking:1 Open ||</span>
		<span style="color:black;font-size:30px;" >Age Of Construction:10 to 15 years ||</span>
		
	<form action="https://www.magicbricks.com/propertyDetails/2-BHK-1000-Sq-ft-Residential-House-FOR-Rent-Rajarajeshwari-Nagar-in-Bangalore-r1&id=4d423235393333393035">
	
	  <button type="submit" style="font-size:24px">View Location <i class="material-icons">add_location</i></button>
	</form>   
	  
	 <form action="transaction1.jsp">
	
	  <button type="submit" style="font-size:24px">Payment</button>
	</form>   
	       
    </div>
    
    
   
  </div>

  <hr>

 
  
<!-- End page content -->


<!-- Footer -->
<footer class="w3-center w3-light-grey w3-padding-32">
  <p>Powered by Magic Floor</p>
</footer>

</body>
</html>