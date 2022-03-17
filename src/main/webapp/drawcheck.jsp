<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>탈퇴 아이디 체크</title>
</head>
<body>
	<% 
		String m_id=request.getParameter("userId");

		String sql = "delete from members where id = ?";
				
		String driverName = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/address";
		String user = "root";
		String password = "1234";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		

		try {
			Class.forName(driverName);
			conn = DriverManager.getConnection(url, user, password);
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m_id);
			
			int flag = pstmt.executeUpdate(); 
			if(flag ==1){
				out.println("회원탈퇴성공");
				response.sendRedirect("drawSuccess.jsp");
			}else{
				out.println("회원탈퇴실패");
				response.sendRedirect("drawErr.jsp");
			}
			//out.println(conn);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				if(conn != null) {
					conn.close();
				}
			} catch(Exception e2) {
				e2.printStackTrace();}
		}
		
		%>
</body>
</html>