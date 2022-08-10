<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageName" value="로그인" />
<%@ include file="../part/head.jspf"%>
<script>
	
	$(function(){
		
	$('#btn_submit').click(function(){
		
			if($.trim($("#loginId").val())== ""){
				alert('아이디를 입력해주세요.');
				$('#loginId').focus();
				return false;
			}
			
			if($.trim($("#loginPw").val())== ""){
				alert('비밀번호를 입력해주세요.');
				$('#loginPw').focus();
				return false;
			}
			
			
		  $('#JoinForm').submit();
		});
	});
	

		
		
	</script>


<form class="con common-form" action="./doLogin" method="POST"
	id="JoinForm">
	<div>
		<span>로그인ID</span>
		<div>
			<input type="text" name="loginId" id="loginId" placeholder="로그인ID"
				autofocus="autofocus" maxlength="30">
		</div>
	</div>
	<div>
		<span>로그인PW</span>
		<div>
			<input type="password" name="loginPw" id="loginPw" placeholder="로그인PW"
				autofocus="autofocus" maxlength="30">
		</div>
	</div>
	<div>
			<span>
				로그인
			</span>
			<div>
			<button type="submit" id="btn_submit" >로그인</button>
				<input type="reset" value="취소" onclick="history.back();">	
			</div>
		</div>
	

</form>

<%@ include file="../part/foot.jspf"%>
