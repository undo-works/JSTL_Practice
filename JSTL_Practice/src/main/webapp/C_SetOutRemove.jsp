<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CのSet,Out,Removeを試す</title>
</head>
<body>
	<!-- シンプルな文字列を格納 -->
	<!-- スコープのsessionはクライアントごとに情報を格納する -->
	<c:set var="name" value="undoworks" scope="session"/>
	
	<!-- JavaScriptのコードをオブジェクトとして格納 -->
	<c:set var="script" value="<script>alert('XSSの危険があります！')</script>"/>
	
	<!-- c:outで出力できる -->
	<c:out value="${name}"/>
	
	<!-- 変数がnullのときに出力するデフォルト値を設定できる -->
	<c:out value="${param1}" default="nullでした。"/>
	
	<!-- c:outだけでエスケープ処理がなされている -->
	<c:out value="${ script }" />
	
	<!-- 一応エスケープをキャンセルすることもできる -->
	<c:out value="${script}" escapeXml="false"/>
	
	<!-- 変数の削除 -->
	<c:remove var="name" scope="session"/>
	
	<!-- 変数の確認 -->
	<c:out value="${ name }" default="削除されてました！"/>
</body>
</html>