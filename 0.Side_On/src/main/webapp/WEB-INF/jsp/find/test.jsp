<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form method="post">
<table>
	<tr>
		<th>count</th>
		<th>글번호</th>
		<th>제목</th>
		<th>아이디</th>
	</tr>
	
	<c:forEach var="dto" items="${testList}" varStatus="status">
		<tr>
			<!-- status.index => 0시작, status.count => 1시작 -->
			<th>${status.count}</th>
			<th><c:out value="${dto.find_no}"></c:out></th>
			<th><a href="find/detail"> 어엉? ${dto.find_title}</a></th>
			<th>${dto.find_writer}</th>
		</tr>
	</c:forEach>
</table>
</form>
</body>
</html>