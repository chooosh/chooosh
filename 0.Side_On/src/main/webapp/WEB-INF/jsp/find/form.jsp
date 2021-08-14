<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
     	<title>팀원찾기 | Side-On</title>
     
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../css/findMember_sh.css" rel="stylesheet" />
    </head>
    <body>
        <!-- navibar -->
       <%@ include file="../inc/header.jsp" %>
    
    
        <!-- Header-->
        <header class="bg-warning py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                <!-- 헤더...어떻게... -->
                <div style="padding-top: 8%;">
                    <h1 class="display-5 fw-bolder">팀원찾기</h1>
                    <p class="lead fw-normal text-white-80 mb-0">직접 프로젝트에 필요한 팀원을 찾아보세요.</p>
				</div>
				</div>
			</div>
        </header>
        <script type="text/javascript">
        function finalCheck() {
        	alret("입력하신 정보로 글을 작성하시겠습니까?");
        }
        </script>
        
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="justify-content-center">
     <form action="/find/formDone" method="post">
  <fieldset>
	<div class="justify-content-center text-center">
	<h2>
	<legend>자신을 소개해주세요!</legend>
    </h2>
	<br>
	<br>
	</div>
	
    <div class="form-group">
      <label for="exampleInputTitle" class="form-label mt-4">제목</label>
      <input type="text" class="form-control" id="find_title" name="find_title" aria-describedby="title" placeholder="목록에 보여질 제목을 작성해주세요."
      maxlength="30" required="required">
    </div>
	
	<div class="form-group">
      <label for="exampleInputWriter" class="form-label mt-4">아이디</label>
      <input type="text" class="form-control" id="find_writer" name="find_writer" aria-describedby="writer" placeholder="본명을 사용해주세요." required="required">
      <small id="writer" class="form-text text-muted"></small>
    </div>
	
   <div class="form-group">
      <label for="exampleInputAdress" class="form-label mt-4">거주지역</label>
      <input type="text" class="form-control" id="find_address" name="find_address" aria-describedby="emailHelp" placeholder="ex) 서울시 강남구" maxlength="20" required="required">
      <small id="adress" class="form-text text-muted"></small>
    </div>
	
    <div class="form-group">
      <label for="examplePosition" class="form-label mt-4" id="find_position" name="find_position" required="required">희망포지션</label>
		<br>
    	<input type="checkbox" id="find_position" name="find_position" value="Front-end(프론트)">
  		<label for="position1">&nbsp;Front-end(프론트)</label><br>
  		<input type="checkbox" id="find_position" name="find_position" value="Back-end(백엔드)">
  		<label for="position1">&nbsp;Back-end(백엔드)</label><br>
  		<input type="checkbox" id="find_position" name="find_position" value="AOS(안드로이드)">
  		<label for="position1">&nbsp;AOS(안드로이드)</label><br>
  		<input type="checkbox" id="find_position" name="find_position" value="IOS(애플)">
  		<label for="position1">&nbsp;IOS(애플)</label><br>
  		<input type="checkbox" id="find_position" name="find_position" value="Server(서버)">
  		<label for="position1">&nbsp;Server(서버)</label><br>
  		<input type="checkbox" id="find_position" name="find_position" value="UI/UX">
  		<label for="position1">&nbsp;UI/UX</label><br>
  		<input type="checkbox" id="find_position" name="find_position" value="기획">
  		<label for="position1">&nbsp;기획</label><br>
  		<input type="checkbox" id="find_position" name="find_position" value="PM(Project Manager)">
  		<label for="position1">&nbsp;PM(Project Manager)</label><br>
    </div>
    
    <div class="form-group">
      <label for="exampleTextarea" class="form-label mt-4">자기소개</label>
      <textarea class="form-control" id="find_content" name="find_content" placeholder="자유롭게 자신을 소개해주세요. (500자 이내로 작성 가능합니다.)" rows="3" maxlength="500" required="required"></textarea>
	   
    </div>
    <div class="form-group">
      <label for="formFile" class="form-label mt-4">대표 이미지</label>
      <input class="form-control" type="file" id="form_imgpath" name="form_imgpath">
	  <small id="imgfile" class="form-text text-muted">대표 이미지는 목록에 보여집니다.</small>
    </div>
    
	<br>
	<br>
	
	<div class="justify-content-center text-center">
    <input type="submit" value="등록" class="btn btn-warning">
	<a href="list"><input type="button" value="취소" class="btn btn-light"></a>
	</div>
  </fieldset>
</form>
	

                           
                        </div>
                    </div>
                </div>
			<br>
			<br>	
			</div>

        </section>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2021</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
