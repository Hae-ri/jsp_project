<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원 리스트 관리</title>
</head>
<body>
	<%
		String driverName = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/address";
		String user = "root";
		String password = "1234";
		Connection conn = null;
		
		String sql = "select * from members";
		
		try {
			Class.forName(driverName);
			conn = DriverManager.getConnection(url, user, password);
			Statement stmt = conn.createStatement(); // sql을 실행시켜주는 객체 생성(statement)
			ResultSet rs = stmt.executeQuery(sql); // select 실행 결과를 ResultSet으로 받음		
			
			String memberList = "";
			
			while(rs.next()){
				memberList = memberList + rs.getString("id") + " / " + rs.getString("passwd") + " / "+ rs.getString("email") + " / " + rs.getString("signuptime") + "<br>";	
			}
			out.println("<h2>회원 리스트 관리</h2>");
			out.println(memberList);
		} catch(ClassNotFoundException e) {
			out.println("jdbc 드라이버 오류");
		} catch(SQLException e) {
			out.println("SQL 오류");
		} finally {
			try {
				if(conn != null) {
					conn.close();
				}
			} catch(SQLException e) {}
		}
	%>
	
	<table border="0">
			<tr>
			<td>
					<form action="main.jsp" method="post">
					<input type="submit" value="◀ 메인화면">
					</form>
				</td>
				<td>
					<form action="withdraw.jsp" method="post">
					<input type="submit" value="회원 탈퇴 화면 실행">
					</form>
				</td>				
			</tr>			
		</table>
</body>
</html>