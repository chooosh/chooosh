<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 체크 | Side-On</title>
  <link href="../css/register_sh.css" rel="stylesheet">
<script>
/* 회원들의 아이디 정보를 배열 선언 및 저장 구조 */
 // 배열 바꿔야지 
var memberIdArray = ["user01", "user02", "user03"];

/* 윈도우 로드 이벤트 */
window.onload = function() {
	// 부모창의 아이디객체 가져오기
	var parentMemberIdElement = window.opener.document.getElementById("memberId");
	
	// 자식창의 아이디객체 가져오기
	var childMemberIdElement = document.getElementById("memberId");
	
	// 부모창의 입력아이디를 자식창의 입력아이디로 초기화 변경
	childMemberIdElement.value = parentMemberIdElement.value;
	
	// 자식창의 아이디 포커스
	childMemberIdElement.focus();
	
	// 아이디 사용하기 버튼 비활성화
	document.getElementById("btn_use_memberId").disabled = true;
}

/* 아이디 중복여부 검증 */
function idCheck() {
	// 아이디 입력데이터 가져오기
	var memberId = document.getElementById("memberId").value;
	
	// 메세지 출력객체 가져오기
	var memberIdMsgElement = document.getElementById("memberIdMsg");
	
	// memberIdArray 크기만큼 반복 비교하면서 아이디 존재유무 체킹
	for (index = 0; index < memberIdArray.length; index++) {
		if (memberIdArray[index] == memberId) {
			memberIdMsgElement.innerHTML = "사용불가 아이디입니다.";
			memberIdMsgElement.style.color = "red";
			document.getElementById("memberId").focus();
			
			// 입력데이터 선택
			document.getElementById("memberId").select();
			return;
		}
	}
	
	memberIdMsgElement.innerHTML = "사용가능 아이디입니다.";
	memberIdMsgElement.style.color = "green";
	
	// 아이디 사용하기 버튼 활성화
	document.getElementById("btn_use_memberId").disabled = false;
	
}

/* 아이디 입력시 아이디중복검증 메세지 지우기 */
function clearMsg() {
	// 메세지 출력객체 가져오기
	document.getElementById("memberIdMsg").innerHTML = "";
	
	// 아이디 사용하기 버튼 비활성화
	document.getElementById("btn_use_memberId").disabled = true;
}

/* 아이디 사용하기 버튼 이벤트 
	-- 자식창에서 검증받은 아이디 정보를
	-- 부모창에 아이디로 초기화시켜주고
	-- 부모창에 아이디를 읽기전용으로 변경해주고
	-- 자식창 닫기
*/
function useMemberId() {
	// 부모창의 아이디객체 가져오기
	var parentMemberIdElement = window.opener.document.getElementById("memberId");
	
	// 자식창의 아이디객체 가져오기
	var childMemberIdElement = document.getElementById("memberId");
	
	// 자식창의 검증받은 입력아이디를 부모창의 입력아이디로 변경 설정
	parentMemberIdElement.value = childMemberIdElement.value;
	
	// 부모창의 멤버아이디를 검증받은 아이디를 변경할수없도록 읽기전용으로 변경
	parentMemberIdElement.readOnly = "readOnly";
	
	// 부모창의 아이디 중복체크 완료 설정
	window.opener.document.getElementById("checkMemberId").value = "SUCCESS";
	
	window.close();
}

</script>

</head>
<body>
<div class="text-center" >
<form action="result.html" method="post" name="idCheckForm" id="idCheckForm">
	<div class="col-xl-5 col-lg-5 col-md-5">
	 <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
       <!-- Nested Row within Card Body -->
        <div class="row">
       <div class="col-lg-5 d-none d-lg-block"></div>
 	    <div class="col-lg-12">
		<div class="p-5">
                        
	<div>
		<div class="input_title">아이디 중복 확인</div>
		<div>
			<input type="text" class="" name="memberId" id="memberId" onkeydown="clearMsg()">
		</div>
		<br>
		<div>
			<input type="button" class="btn btn-light btn-sm" value="확인" onclick="idCheck()">
		</div>
		
		<div id="memberIdMsg"></div>
	</div>
	
	<br>
	<br>
	<div>
		<input type="button" id="btn_use_memberId"  class="btn btn-primary btn-sm" value="아이디 사용하기" onclick="useMemberId()">
		<input type="button" value="창닫기"  class="btn btn-danger btn-sm" onclick="window.close();">
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	
</form>
</div>
</body>
</html>
