<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String uempnum=request.getParameter("empnum");
	String uname=request.getParameter("name");
	String uaddress=request.getParameter("address");
	String udept=request.getParameter("dept");
	String uyear=request.getParameter("year");
	
	Connection conn=null;
	PreparedStatement pstmt=null;
	try {
		String sql="DELETE FROM emp WHERE empnum=?";
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","thdud103");
		pstmt=conn.prepareStatement("DELETE FROM emp WHERE empnum=?");
		
		pstmt.setString(1,uempnum);
		
		pstmt.executeUpdate();
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		if(pstmt!=null) {
			try {
				pstmt.close();
			} catch (Exception e) {}
		}
		if(conn!=null) {
			try {
				conn.close();
			} catch (Exception e) {}
		}
	}
	//if(flag==1) {
	//	out.print("등록되었습니다.");
	//} else {
	//	out.print("등록 중 오류가 발생했습니다.");
	//}	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form name="form1" action="dblist.jsp" method="post">
	<b>해당 사번 데이터 삭제</b>
	<input type="submit" name="rechk" value="데이터 확인">
</form>
</body>
</html>