<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 체크 | Side-On</title>
  <link href="../css/register_sh.css" rel="stylesheet">
  	<script>
		function pValue() {
			document.getElementById("memberId").value = opener.document.register.value;
		}
		
		function idCheck() {
			var memberId = document.getElementById("memberId").value;
			
			if(!memberId) {
				alert("아이디를 입력해주세요.")
				return false;
			}
			else {
				var param ="아이디 : " + memberId;
				
			}
	
			}
		}
	</script>
</head>
<body onload="pValue()">
 	<div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-login-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                         <div class="col-sm-8 mb-3 mb-sm-0">
                                    <input type="text" class="form-control form-control-user" id="memberId" name="memberId"
                                        placeholder="아이디" pattern="[A-Za-z0-9]{1,20}" maxlength="20" required="required">>
                               		<input type="button" value="중복확인" onclick="idCheck()"> 
                                </div>
                        <br>
                        <br>
                            
                          		<input type="submit" value="사용하기" class="btn btn-primary btn-user btn-block" 
                                onclick="sendValue()">
                                <input type="button" value="취소" class="btn btn-danger btn-user btn-block" onclick="window.close()">
                                  
                               
</body>
</html>