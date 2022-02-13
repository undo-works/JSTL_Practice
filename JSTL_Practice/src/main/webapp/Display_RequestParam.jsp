<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>paramの取得</title>
</head>
<body>
	<!-- http://localhost:8080/JSTL_Practice/Display_RequestParam.jsp?id=123 -->
	<p>id:<c:out value="${ param.id }"/></p>
	<br/>
	
</body>
</html>