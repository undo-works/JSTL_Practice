<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>C_Branches.jsp</title>
</head>
<body>
<%
	//ランダムな1万未満の数字を作成
	Random random = new Random();
	int randomValue = random.nextInt(10000);
%>
	<!-- 作成したランダムな数字を格納 -->
	<c:set value="<%= randomValue %>" var="random"/>
	
	<!-- こんな感じでif文が使える -->
	<c:if test="${random < 5000}">
		<c:out value="${random}"/>
		<br/>
		5000未満です。
	</c:if>	
	
	<!-- elseみたいなのは使えないので、2つ目 -->
	<c:if test="${random >= 5000}">
		<c:out value="${random}"/>
		<br/>
		5000以上です。
	</c:if>
	
	<br/>
	
	<!-- 条件分岐は以下のようにする -->
	<c:choose>
		<c:when test="${random<2000}">2000未満です</c:when>
		<c:when test="${random<=4000}">2000~4000です</c:when>
		<c:when test="${random<=6000}">4001~6000です</c:when>
		<c:when test="${random<=8000}">6001~8000です</c:when>
		<c:otherwise>8001以上のようです</c:otherwise>
	</c:choose>	
</body>
</html>