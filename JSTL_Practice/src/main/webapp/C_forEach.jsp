<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>C_forEach.jsp</title>
</head>
<body>
<%
	List<String> list = Arrays.asList("a","b","c","d","e");
	request.setAttribute("list",list);
%>

	<!-- items：ループして取り出す対象の配列またはコレクション -->
	<!-- var:itemsから取り出した配列の要素を格納する変数名 -->
	<!-- varStatus:現在のループ時の状態を示す情報が変数に格納される -->
	<c:forEach items="${list}" var="aTOe" varStatus="status">
		<!-- indexでループ番号を取得できる -->
		<c:out value="${status.index}" />
		<c:out value="${aTOe}"/>
	</c:forEach>
	
	
</body>
</html>