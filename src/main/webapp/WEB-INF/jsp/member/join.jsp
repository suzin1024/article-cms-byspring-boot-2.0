<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageName" value="회원가입" />
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
			
			if($.trim($("#loginPwComfirm").val())== ""){
				alert('비밀번호 확인을 입력해주세요.');
				$('#loginPwComfirm').focus();
				return false;
			}
			
			if($.trim($("#loginPwComfirm").val()) != $.trim($("#loginPw").val())){
				alert('비밀번호가 일치하지 않습니다.');
				$('#loginPwComfirm').focus();
			}
			
			
			
		  $('#JoinForm').submit();
		});
	});
	

		
		
	</script>


<form class="con common-form" action="./doJoin" method="POST"
	id="JoinForm">
	<div>
		<span>ID</span>
		<div>
			<input type="text" name="loginId" id="loginId" placeholder="아이디"
				autofocus="autofocus" maxlength="30">
		</div>
	</div>
	<div>
		<span>PW</span>
		<div>
			<input type="password" name="loginPw" id="loginPw" placeholder="비밀번호"
				autofocus="autofocus" maxlength="30">
		</div>
	</div>
	<div>
		<span>PW 확인</span>
		<div>
			<input type="password" name="loginPwComfirm" id="loginPwComfirm" placeholder="다시 비밀번호"
				autofocus="autofocus" maxlength="30">
		</div>
	</div>
	
	<div>
			<span>
				가입
			</span>
			<div>
			<button type="submit" id="btn_submit" >가입</button>
				<input type="reset" value="취소" onclick="history.back();">	
			</div>
		</div>
	

</form>



<div class="btns con">
	<a href="/article/list" style="background-color: #ccc;">메인페이지</a>
</div>

<%@ include file="../part/foot.jspf"%>
