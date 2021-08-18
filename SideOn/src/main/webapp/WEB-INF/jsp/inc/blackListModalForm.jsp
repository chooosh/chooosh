<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
	$(document).ready(function(){
		
		$('#memberModalBtn').click(function () {
			$('#blackList').modal('show')		
		});
		
		$('#submit').click(function () {
			var memberId = $('input[name=memberId]').val();
			
			if(memberId != null){		
				alert(memberId +' 회원이 강제 탈퇴되었습니다.');
				console.log(memberId + ' ');
				
			} else {
				alert('처리 방식을 하나 이상 선택해 주세요');
				location.history();
			}
		});
	});					
</script>
<!-- Modal Form -->
<div id="blackList" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
    <form action="/member/blackList" method="post">
      <div class="modal-header">
          <h4 class="modal-title" id="mySmallModalLabel">Black List Member<a class="anchorjs-link" href="#mySmallModalLabel"><span class="anchorjs-icon"></span></a></h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
      </div>
      <div class="modal-body">
      	  USER ID : <input type="text" name="memberId" placeholder="insert Id..." style=" width: 100px;"/>
          <br>
      </div>
	  <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal" id="reset">취소</button>
          <button type="submit" class="btn btn-warning" id="submit">강제탈퇴</button>
      </div>
    </form>
    </div>
  </div>
</div>