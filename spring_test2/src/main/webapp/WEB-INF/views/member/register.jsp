<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<jsp:include page="../layout/header.jsp"/>
<div class="container-md">
    <h2>회원가입</h2>
    
<form action="/member/register" method="post">
<!-- name이 중요하다 -->
	<div class="mb-3">
	  <label for="email" class="form-label">이메일</label>
	  <input type="email" name="email" class="form-control" id="email" placeholder="test@test.com...">
	</div>
	<div class="mb-3">
	  <label for="pwd" class="form-label">비밀번호</label>
	  <input type="password" name="pwd" class="form-control" id="pwd" placeholder="PassWord...">
	</div>
	<div class="mb-3">
	  <label for="nickName" class="form-label">닉네임</label>
	  <input type="text" name="nickName" class="form-control" id="nickName" placeholder="nick_name...">
	</div>
    
    <button type="submit" class="btn btn-primary">회원가입</button>
</form>
</div>
<jsp:include page="../layout/footer.jsp"/>