<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<%@ include file="../inc/adminHeadLink.jsp" %>
    <title>Member Management</title>
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar (사이드바) -->
        <%@ include file="../inc/adminSideNav.jsp" %>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar (상단바) -->
                <%@ include file="../inc/adminTopNav.jsp" %>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="card shadow mb-4">
                	<!-- content header 제목 -->
                	<div class="card-header py-3">
                	Member LIST
                	<a data-toggle="modal" data-target="#blackList" style="float: right;"><i class="fas fa-fw fa-cog"></i></a>
                	</div>
                	<!-- content body 내용 -->
                	<div class="card-body">
                		<div class="container">
                			<div class="row">
                				<table class="table" style="text-align: center; border: 1px solid #dddddd;">
                					<thead>
                						<tr>
                							<th style="background-color: #eeeeee; text-align: center;">ID</th>
                							<th style="background-color: #eeeeee; text-align: center;">email</th>
                							<!-- 
                							<th style="background-color: #eeeeee; text-align: center;">내용</th>
                							<th style="background-color: #eeeeee; text-align: center;">글번호</th>
                							 -->
                							<th style="background-color: #eeeeee; text-align: center;">name</th>
                							<th style="background-color: #eeeeee; text-align: center;">entry date</th>                							 
                							<th style="background-color: #eeeeee; text-align: center;">rest count</th>
                							<th style="background-color: #eeeeee; text-align: center;">reward</th>                							 
                						</tr>
                					</thead>
                					<tbody>
                					<c:forEach var="dto" items="${memberList}" varStatus="status">
	               						<tr>
	                						<th>${dto.memberId}</th>
	               							<th>${dto.email}</th>
	                						<th>${dto.name}</th>
	                						<th>${dto.entryDate}</th>
	                						<th>
	                							<c:choose>
	                								<c:when test="${dto.restCount >= 10}"><div style="color:red;">${dto.restCount}</div></c:when>
	                								<c:when test="${dto.restCount < 10}"><div>${dto.restCount}</div></c:when>	                							
	                							</c:choose>
	                						</th>
	                						<th>${dto.reward}</th>
	                					</tr>
                					</c:forEach>
                					</tbody>
                				</table>
                			</div>
                		</div>
                	</div>
                	
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Team2 Project 2021</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

	<%@ include file="../inc/adminBodyLink.jsp" %>

</body>
<%@ include file="../inc/blackListModalForm.jsp" %>
</html>