<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageName" value="게시물 추가" />
<%@ include file="../part/head.jspf"%>	
	<script>
	
	$(function(){
		
	$('#btn_submit').click(function(){
		
			if($.trim($("#title").val())== ""){
				alert('제목을 입력해주세요.');
				$('#title').focus();
				return false;
			}
			
			if($.trim($("#body").val())== ""){
				alert('내용을 입력해주세요.');
				$('#body').focus();
				return false;
			}
			
		  $('#AddForm').submit();
		});
	});
	
	</script>

	<form class="con common-form" action="./doAdd" method="POST" id="AddForm" >	
		<div>
			<span>
				제목
			</span>
			<div>
				<input type="text" name="title" id="title" placeholder="제목" autofocus="autofocus">
			</div>
		</div>
		<div>
			<span>
				내용
			</span>
			<div>
				<textarea name="body" id="body" placeholder="내용"></textarea>
			</div>
		</div>
		
		<div>
			<span>
				작성
			</span>
			<div>
			<button type="submit" id="btn_submit" >작성</button>
				<input type="reset" value="취소" onclick="history.back();">	
			</div>
		</div>
	
		
	</form>
	
	<%@ include file="../part/foot.jspf"%>
