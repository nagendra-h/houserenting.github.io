<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
body{
  background-image: url("https://st3.depositphotos.com/1103339/13209/v/1600/depositphotos_132095056-stock-illustration-abstract-seamless-pattern-in-postmodern.jpg");
}
div{
  margin: 2em 5em 3em 5em;

  padding: 2em 6em 2em 6em;
  background: rgb(2,0,36);
background: linear-gradient(117deg, rgba(2,0,36,1) 0%, rgba(125,129,150,0.9757503221014968) 96%, rgba(222,199,45,1) 98%, rgba(222,199,45,1) 98%, rgba(142,49,242,0.5859143339953169) 98%);
  color: #ffff;
  font-family: cursive;
  border-radius: 1.25rem;
}
#container_1{
  text-align:center;
}
#container_2{
 display: block;

  
}
nav{
	    background-color: rgba(0, 0, 0, 0.905); 
	    padding: 10px;
	    padding-left: 50px;
	    padding-left: 50px;
	    display: flex;
	    box-shadow: 0px 3px 65px 0px rgb(157, 0, 255);
	}
	
.nav_side{
 background-color: rgba(0, 0, 0, 0.905); 
    float: right; 
    width: 60%;

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
</style>
    <link rel="stylesheet" href="table.css">
<title>View Users</title>  
</head>  
<body>  
  
 <%@page import="house_board_corporation_app.*,house_board_corporation_app.tran1.*,java.util.*,house_board_corporation_app.transaction.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
 <%

if(session.getAttribute("name")==null){
	response.sendRedirect("login.jsp");
}
else{ %>
 
 
 <div id="container_1">
 
  <h1 id="title">
  View the data
</h1><!--title-->

  
</div><!---container_1--->


<nav class="nav nav_top">
           	
            <div class="nav_side">
             	 <a href="login.jsp">Back</a>
                  <a  href="c3.jsp">total amount</a>
                  <a  href="c2.jsp">state</a>            
                   <a href="c1.jsp">customer</a>
                    <a href="view.jsp">purchase</a>
                                    
                   
         
            </div>
        </nav>


<div id="q1">
<%
int list=tran1.getAll2();
request.setAttribute("list",list); 

%>  
 <div class="outer-wrapper">
 <h2>Total Customers</h2>
 
  
 
    <div class="table-wrapper"> 
<table border="1" width="100%">  
<tr><th>Count</th>  
<tr><td>${list}</td>
  
</table>  
</div></div>



<%} %>
  </div>
</body>  
</html>  