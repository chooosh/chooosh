<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/member/registerDone" method="post">
아이디 <input type="text" id="memberId" name="memberId" size="30">
비밀번호 <input type="text" id="memberPW" name="memberPw" size="30">
이메일 <input type="text" id="email" name="email" size="30">
이름 <input type="text" id="name" name="name" size="30">
핸드폰번호 <input type="text" id="mobile" name="mobile" size="30">
가입일 <input type="text" id="entryDate" name="entryDate" size="30">
경고횟수 <input type="text" id="restCount" name="restCount" size="30">
포인트 <input type="text" id="reward" name="reward" size="30">
<input type="submit" value="작성하기"> 
</form>
</body>
</html>
