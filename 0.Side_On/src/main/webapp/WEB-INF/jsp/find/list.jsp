<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
        
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- image-->
                            <img class="card-img-top" src="../img/teamplay.png" alt="..." />
                            <!-- Message box -->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- title-->
                                    <h5 class="fw-bolder">풀스택 개발자입니다</h5>
                                    <!-- id -->
                                    홍길동
                                </div>
                            </div>
                            <!-- detail link -->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-warning mt-auto" href="detail">더 보러가기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- image -->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- message box -->
                            <div class="card-body p-4">
                                <div class="text-center">
                               <!-- title-->
                               
        	                            <h5 class="fw-bolder">제목</h5>
                                <!-- id -->
                                	id
                                 
                                	</div>
                            </div>
                            <!-- detail link-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-warning mt-auto" href="detail?find_no=">더 보러 가기</a></div>
                            </div>
                        </div>
                    </div>
                    <c:forEach var="find" items="${list}" varStatus="status">
                      <div class="col mb-5">
                        <div class="card h-100">
                            <!-- image -->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- title-->
                            <div class="card-body p-4">
                                <div class="text-center">
                               		${find.find_title}
                                </div>
                            </div>
                            	${find.find_writer}
                            <!-- detail link-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-warning mt-auto" href="detail?find_writer=${find.find_no}">더 보러 가기</a></div>
                            </div>
                        </div>
                    </div>
                        </c:forEach>
                   
               <!-- 글쓰기 버튼 -->
				<div class="text-center1">
				<a href="form"><button type="button" class="btn btn-warning btn-lg">글쓰기</button></a>
				</div>
			</div>

    <!-- test -->                
	<table class="container px-4 px-lg-5 mt-5">
	<tr>
		<th>글번호</th>
		<th>제목</th>
		<th>아이디</th>
		<th>거주지역</th>
		<th>포지션</th>
		<th>내용</th>
		<th>가입일</th>
	</tr>
	
	<c:if test="${not empty message}">
		<tr>
			<th colspan=10>${message}</th>
		</tr>
	</c:if>
	
	<c:forEach items="${list}" var="find" varStatus="status">
		<tr>
			<!-- status.index => 0시작, status.count => 1시작 -->
			<th>${status.count}</th>
			<th><a href="find/detail"> ${find.find_title}</a></th>
			<th>${find.find_writer}</th>
			<th>${find.find_address}</th>
			<th>${find.find_position}</th>
			<th>${find.find_content}</th>
			<th>${find.find_date}</th>
		</tr>
	</c:forEach>
</table>
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