<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 체크 | Side-On</title>
  <link href="../css/register_sh.css" rel="stylesheet">
  	<script>
  	function blankCheck(p) {
  		var memberId = p.memberId.value;
  		memberId = memberId.trim();
  		if(memberId.length < 4) {
  			alert("아이디를 6글자 이상 입력해주세요.")
  			return false;
  		}
  		return true;
  	}
	</script>
</head>
<body>
 	<div style="text-align:center;">
 	<h3> 아이디 중복확인 결과 </h3>
 
 <!--  
 		String memberId = request.getParameter("memberId").trim();
		int cnt = dao.duplecateId(memberId);
		out.println("입력 id : " + id);
		if(cnt == 0) {
			out.println("사용가능한 아이디입니다.");
		} else {
			out.println("사용할 수 없는 아이디입니다.");
		}
      -->
                            
                          		<input type="button" value="사용하기" class="btn btn-primary btn-user btn-block" id="useBtn"
                                onclick="sendCheckValue()">
                                <input type="button" value="취소" class="btn btn-danger btn-user btn-block" id="cancelBtn" onclick="window.close()">
                                  
       </div>                      
</body>
</html>