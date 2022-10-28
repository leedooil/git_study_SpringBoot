<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="<%= request.getContextPath() %>"></c:set>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정창</title>
</head>
<body>
	<form action="${contextPath}/member/modMember.do" method="get">
		<h1 style="text-align: center">회원 정보 수정창</h1>
		<table align="center">
			<tr>
				<td width="200"><p align="right">아이디</td>
				<td width="400"><input type="text" name="id" value="${member.id}" readonly="readonly"></td>
			</tr>
			<tr>
				<td width="200"><p align="right">비밀번호</td>
				<td width="400"><input type="password" name="pwd" value="${member.pwd}"></td>
			</tr>
			<tr>
				<td width="200"><p align="right">이름</td>
				<td width="400"><p><input type="text" name="name" value="${member.name}"></td>
			</tr>
			<tr>
				<td width="200"><p align="right">이메일</td>
				<td width="400"><p><input type="email" name="email" value="${member.email}"></td>
			</tr>
			<tr>
				<td width="200"><p>&nbsp;</p></td>
				<td width="400">
				<input type="submit" value="수정하기">
				<input type="reset" name="다시입력">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>