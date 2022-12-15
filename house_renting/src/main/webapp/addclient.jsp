<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error1.jsp" %>
    <%@page import="house_board_corporation_app.clientwork"%>  
<jsp:useBean id="u" class="house_board_corporation_app.client"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


123
<%
int i=clientwork.save(u);  
if(i>=1){  
response.sendRedirect("first.jsp");  
}else{  
response.sendRedirect("error1.jsp");  
}  
%>  
</body>
</html>