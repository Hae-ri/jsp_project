<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>관리자 로그인</title>
</head>
<body>
	<h3>Home > 관리자 로그인</h3><hr>
	<%
		String m_id = request.getParameter("userId");
		String m_pw = request.getParameter("userPw");
		
		if(m_id.equals("admin") && m_pw.equals("123456"))
		{
			session.setAttribute("memberId", m_id);
			//session.setAttribute("memberPw", m_pw);
			
			out.println("관리자 로그인 성공<br>");
			out.println("관리자" + m_id + "님이 로그인 하셨습니다.<br>");
		}
		else
		{
			response.sendRedirect("loginErr.jsp");
		}	
	%>

	<table border="0">
			<tr>
				<td>
					<form action="membersList.jsp" method="post">
					<input type="submit" value="◀ 등록 회원 관리하기">
					</form>
				</td>
				<td>
					<form action="logout.jsp" method="post">
					<input type="submit" value="관리자 로그아웃 ▶">
					</td>
				
			</tr>			
		</table>
</body>
</html>