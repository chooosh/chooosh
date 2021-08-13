<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>회원가입 | Side-On</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../css/register_sh.css" rel="stylesheet">


<script type="text/javascript">

function checkForm() {
	// 아이디 입력 데이터 가져오기 : id
	var memberId = document.getElementById("memberId").value;
	console.log("memberId: ", memberId.length);
	// 데이터 검증
	if (memberId == "" || memberId.trim().length == 0) {
		document.getElementById("memberId").focus();
		document.getElementById("memberIdMsg").innerHTML = "아이디를 입력하세요";
		document.getElementById("memberIdMsg").style.color = "red";
		document.getElementById("memberId").value = ""; // 사용자 입력데이터를 공백문자열 초기화
		return false; // input type="submit"
	}
	memberId = memberId.trim();	// 사용자 입력데이터에 있는 공백제거 
	console.log("memberId: ", memberId.length);

	// 비밀번호 입력 데이터 가져오기 : name
	var memberPw = document.register.memberPw.value;
	console.log("memberPw: ", memberPw);
	
	if (memberPw == "" || memberPw.trim().length == 0) {
		document.getElementById("memberPw").focus();
		document.getElementById("memberPwMsg").innerHTML = "비밀번호를 입력하세요";
		document.getElementById("memberPwMsg").style.color = "red";
		document.getElementById("memberPw").value = "";
		//return false; // input type="submit"
		return;
	}
	memberPw = memberPw.trim();
	
	// 비밀번호 확인 입력 데이터 가져오기 :
	var memberPw2 = document.getElementById("memberPw2").value;
	console.log("memberPw2: ", memberPw2);
	
	if (memberPw2 == "" || memberPw2.trim().length == 0) {
		document.getElementById("memberPw2").focus();
		document.getElementById("memberPwConfirmMsg").innerHTML = "비밀번호확인을 입력하세요";
		document.getElementById("memberPwConfirmMsg").style.color = "red";
		document.getElementById("memberPw").value = "";
		//return false; // input type="submit"
		return;
	}
	memberPw2 = memberPw2.trim();
	
	// 실습 : 비밀번호와 비밀번호확인 매칭 검증
	if (memberPw != memberPw2) {
		document.getElementById("memberPw").focus();
		document.getElementById("memberPwMsg").innerHTML = "비밀번호와 비밀번호 확인이 동일하지 않습니다.";
		document.getElementById("memberPwMsg").style.color = "red";
		//return false;
		return;
	}
	
	</script>


</head>

<body class="" style="background-color: #FFD026" >
   <!-- navibar -->
       <%@ include file="../inc/header.jsp" %>
    <div class="container" >

	<!-- Outer Row -->
        <div class="row justify-content-center" >

            <div class="col-xl-8 col-lg-6 col-md-8">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block"></div>
                    <div class="col-lg-12">
                        <div class="p-5">
                        
                        <br>
                        <br>
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">환영합니다!</h1>
                            </div>
                            
                            <!-- 회원가입 폼 -->
                            <form action='/member/registerDone' method="post" class="user" id="register">
                               
                               <!-- 이미지어케바꾸냐.. -->
                                <div class="form-group row">
                               
                               <!-- 아이디 -->
                                <div class="col-sm-8 mb-3 mb-sm-0">
                                    <input type="text" class="form-control form-control-user" id="memberId" name="memberId"
                                        placeholder="아이디" pattern="[A-Za-z0-9]{1,20}" maxlength="20" required="required" onkeydown="clearMsg()">
                               		<span id="memberIdMsg"></span>
                                </div>
                                
                                <!-- onclick 함수 -->
                                <div class="col-sm-4 mb-3 mb-sm-0">
                                   <input type="button" value="중복확인" id="memberIdCheck" name="memberIdCheck" class="btn btn-outline-warning btn-user btn-block" 
                                   onclick="idCheck()">
                                </div>
                                
                                </div>
                                
                                <!-- 비밀번호 -->
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-user"
                                            id="memberPw" name="memberPw" placeholder="비밀번호" pattern="[a-z0-9]{6,30}" maxlength="30" required="required" onchange="pwCheck()">
                                   		<span id="memberPwMsg"></span>
                                   	</div>
                                   	
                                   <div class="form-group">
                                        <input type="password" class="form-control form-control-user"
                                            id="memberPw2" name="memberPw2" placeholder="비밀번호 확인" pattern="[a-z0-9]{6,30}" maxlength="30" required="required" onblur="checkMappingMemberPw()">
                                    <span id="memberPwConfirmMsg"></span>
                                    </div>
                					
                				<!-- 이름 -->
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" id="name" name="name"
                                        placeholder="이름" pattern="[a-zA-Z가-힣]{1,10}" maxlength="10" required="required">
                                </div>
                                
                                <!-- 이메일 / 이메일 인증 pattern ? -->
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" id="email" name="email"
                                        placeholder="이메일 ex)id@mail.com" pattern="[a-zA-z_-@.]{1,40}" maxlength="40" required="required">
                                </div>
                                
                                <!-- 핸드폰번호 -->
                                  <div class="form-group row">
                                <div class="col-sm-8 mb-3 mb-sm-0">
                                    <input type="tel" class="form-control form-control-user" id="mobile" name="mobile"
                                        placeholder="핸드폰번호 ex)010-0000-0000" pattern="\d{3}-\d{3,4}-\d{4}" maxlength="13" required="required">
                                </div>
                                 <div class="col-sm-4 mb-3 mb-sm-0">
                                   <a href="#" class="btn btn-outline-warning btn-user btn-block">
                                   인증
                                </a>
                                </div>
                                </div>
                              	
                              	
                                <input type="submit" value='완료' class="btn btn-primary btn-user btn-block" 
                                onclick="return checkForm();">
                                
                                <a href="/" class="btn btn-danger btn-user btn-block">
                                   취소
                                </a>
                              
                            </form>
                            <hr>
                            <div class="text-center">
                                <a class="small" href="loginForm">이미 회원가입이 되어 있어요!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

</body>

</html>