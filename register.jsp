<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
		
	String uempnum=request.getParameter("empno");
	String uname=request.getParameter("name");
	String uaddress=request.getParameter("address");
	String udept=request.getParameter("dept");
	String uyear=request.getParameter("year");
	
	String sql="INSERT INTO emp(empnum,name,address,dept,year) VALUES";
	sql+="('"+uempnum+"', '"+uname+"', '"+uaddress+"', '"+udept+"', '"+uyear+"')";
	out.println(sql);
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","thdud103");
	Statement stmt=conn.createStatement();
	
	int flag=stmt.executeUpdate(sql);
	//if(flag==1) {
	//	out.print("등록되었습니다.");
	//} else {
	//	out.print("등록 중 오류가 발생했습니다.");
	//}
	stmt.close();
	response.sendRedirect("dblist.jsp");
	conn.close();
	
	
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>