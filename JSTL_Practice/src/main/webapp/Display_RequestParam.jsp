<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>paramの取得</title>
</head>
<body>
	<p>id:<c:out value="${ param.id }"/></p>
	<br/>
	
</body>
</html>