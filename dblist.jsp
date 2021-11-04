<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="empDelete.jsp" method="post">
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","thdud103");
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery("SELECT empnum, name, address, dept, year from emp");
%><table align=center border="1">
<tr><td colspan=5 align=center height=40><b>사원정보 목록 페이지</b></td></tr>
<tr>
<td>사번</td>
<td>이름</td>
<td>주소</td>
<td>부서명</td>
<td>입사년도</td>
</tr>
<%
while(rs.next()) {
%><tr>
	<td id="empno"><%=rs.getString("empnum")%></td>
	<td><%=rs.getString("name")%></td>
	<td><%=rs.getString("address")%></td>
	<td><%=rs.getString("dept")%></td>
	<td><%=rs.getString("year")%></td>
	</tr>
	<%
}
%></table>
<%
rs.close();
stmt.close();
conn.close();
%>
<input type="submit" id="delbtn" value="삭제">
</form>
</body>
</html>