<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ�� ����Ʈ ����</title>
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
			Statement stmt = conn.createStatement(); // sql�� ��������ִ� ��ü ����(statement)
			ResultSet rs = stmt.executeQuery(sql); // select ���� ����� ResultSet���� ����		
			
			String memberList = "";
			
			while(rs.next()){
				memberList = memberList + rs.getString("id") + " / " + rs.getString("passwd") + " / "+ rs.getString("email") + " / " + rs.getString("signuptime") + "<br>";	
			}
			out.println("<h2>ȸ�� ����Ʈ ����</h2>");
			out.println(memberList);
		} catch(ClassNotFoundException e) {
			out.println("jdbc ����̹� ����");
		} catch(SQLException e) {
			out.println("SQL ����");
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
					<input type="submit" value="�� ����ȭ��">
					</form>
				</td>
				<td>
					<form action="withdraw.jsp" method="post">
					<input type="submit" value="ȸ�� Ż�� ȭ�� ����">
					</form>
				</td>				
			</tr>			
		</table>
</body>
</html>