<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������� ��� ������</title>
</head>
<body>
<form action="register.jsp" method="post">
<table align=center border="1">
<tr><td colspan=2 align=center height=40><b>������� ��� ������</b></td></tr>
<tr>
	<td align=right>���</td>
	<td><input type="text" name="empno" required></td>
</tr>
<tr>
	<td align=right>�̸�</td>
	<td><input type="text" name="name" required></td>
</tr>
<tr>
	<td align=right>�ּ�</td>
	<td><input type="text" name="address" required></td>
</tr>
<tr>
	<td align=right>�μ�</td>
	<td><input type="text" name="dept" required></td>
</tr>
<tr>
	<td align=right>�Ի�⵵</td>
	<td><input type="text" name="year" required></td>
</tr>
<tr>
	<td colspan=2 align=center height=50>
		<input type="submit" value="����"><input type="reset" value="���"></td>
</tr>
</table>
</form>
</body>
</html>