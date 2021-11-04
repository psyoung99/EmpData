<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>사원정보 등록 페이지</title>
</head>
<body>
<form action="register.jsp" method="post">
<table align=center border="1">
<tr><td colspan=2 align=center height=40><b>사원정보 등록 페이지</b></td></tr>
<tr>
	<td align=right>사번</td>
	<td><input type="text" name="empno" required></td>
</tr>
<tr>
	<td align=right>이름</td>
	<td><input type="text" name="name" required></td>
</tr>
<tr>
	<td align=right>주소</td>
	<td><input type="text" name="address" required></td>
</tr>
<tr>
	<td align=right>부서</td>
	<td><input type="text" name="dept" required></td>
</tr>
<tr>
	<td align=right>입사년도</td>
	<td><input type="text" name="year" required></td>
</tr>
<tr>
	<td colspan=2 align=center height=50>
		<input type="submit" value="저장"><input type="reset" value="취소"></td>
</tr>
</table>
</form>
</body>
</html>