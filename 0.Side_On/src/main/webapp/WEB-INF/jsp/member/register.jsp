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
function idCheck(){
    $.ajax({
        url : "/member/register",
        type : "post",
        dataType : "json",
        data : {"memberId" : $("#memberId").val()},
        success : function(data){
          if(data == 1){
            alert("중복된 아이디입니다.");
            console.log("### 중복된 아이디");
          }else if(data == 0){
            $("#memberIdCheck").attr("value", "Y");
            alert("사용가능한 닉네임입니다.");
          }
        }
      })
    }

    </script>


</head>

<body class="bg-gradient-warning">
   <!-- navibar -->
       <%@ include file="../inc/header.jsp" %>
    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-login-image"></div>
                    <div class="col-lg-7">
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
                                        placeholder="아이디" pattern="[A-Za-z0-9]{1,20}" maxlength="20" required="required">
                                </div>
                                
                                <!-- onclick 함수 -->
                                <div class="col-sm-4 mb-3 mb-sm-0">
                                   <input type="button" value="중복확인" id="memberIdCheck" name="memberIdCheck" class="btn btn-outline-warning btn-user btn-block" 
                                   onclick="idCheck()" value="N">
                                   
                                </a>
                                </div>
                                </div>
                                
                                <!-- 비밀번호 -->
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-user"
                                            id="memberPw" name="memberPw" placeholder="비밀번호" maxlength="30" required="required">
                                   	</div>
                                   <div class="form-group">
                                        <input type="password" class="form-control form-control-user"
                                            id="memberPwCheck" name="memberPwCheck" placeholder="비밀번호 확인" maxlength="30" required="required">
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
                                onclick="Check(); finalCheck();">
                                
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