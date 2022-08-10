<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageName" value="게시물 수정"/>
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


	<form class="con common-form" action="./doModify" method="POST" id="AddForm" >	
		<div>
			<input type="hidden" name="id" value="${article.id}">
			<span>수정</span>
			<div>
				<input type="text" name="title" id="title" placeholder="제목" value="${article.title}" autofocus="autofocus">
			</div>
		</div>
		<div>
			<span>
				내용
			</span>
			<div>
				<textarea name="body" id="body" placeholder="내용">${article.body}</textarea>
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
		
		<div class="con">
		<a href="./list" style="background-color: pink;">게시물 리스트</a>
		<a href="./add" style="background-color: pink;">게시물 추가</a>
		<a onClick="if(confirm('삭제하시겠습니까?') == false) return false;" href="./doDelete?id=${article.id}" style="background-color: pink;">게시물 삭제</a>
		</div>
		
<%@ include file="../part/foot.jspf"%>	