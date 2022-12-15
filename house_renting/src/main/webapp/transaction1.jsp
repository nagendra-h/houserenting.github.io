<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>


.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #04AA6D;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (and change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}

</style>
</head>
<body>


<div class="row">
  <div class="col-75">
    <div class="container">
      <form action="trans.jsp">

        <div class="row">
          <div class="col-50">
            <h3>Advance Payment</h3>
            <label for="fname"><i class="fa fa-user"></i> Name</label>
            <input type="text" id="name" name="name" placeholder="John M. Doe">
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="email" placeholder="john@example.com">
            
            <label for="fname"><i class="fa fa-user"></i> Country </label>
            <input type="text" id="name" name="country" >
            <label for="fname"><i class="fa fa-user"></i> State </label>
            <input type="text" id="name" name="state" >
            
            <label for="fname"><i class="fa fa-user"></i> District </label>
            <input type="text" id="name" name="district" >
            
            <label for="fname"><i class="fa fa-user"></i> total number of people  </label>
            <input type="text" id="tot" name="tot" >
            
          
            
            
            <label for="city"><i class="fa fa-institution"></i> Advance Payment</label>
			  <input type="text" id="pay" name="pay" value="1000">
               <form>
         		   <button type="submit" id="l1" formaction="#scan">Payment</button>
      			</form>
      		<br><br>Note:Please add your registered email id during the payment after the payment you will get the customer id and use it below.
           <br><br> <label for="id">ID</label>
            <input type="text" id="cid" name="cid" placeholder="c101">
          </div>
		
          <div class="col-50">
            

        </div>
       
        <input type="submit" value="submit" class="btn">
      </form>
    </div>
    
    
  </div>
       
       
       <center><img class="demo cursor" id="scan" src="images/scan1.jpeg" style="width:20;height:25" onclick="currentSlide(4)" alt="Northern Lights" /></center>
  

  </body>
</html>