<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="errortrans.jsp" %>
    <%@page import="house_board_corporation_app.tran1"%>  
<jsp:useBean id="u" class="house_board_corporation_app.transaction"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
int i=tran1.save(u);
if(i>=1){  
response.sendRedirect("success.jsp");  
}else{  
response.sendRedirect("errortrans.jsp");  
}  
%>  
</body>
</html>