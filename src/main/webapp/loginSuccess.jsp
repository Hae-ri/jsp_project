<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ �α���</title>
</head>
<body>
	<h3>Home > ������ �α���</h3><hr>
	<%
		String m_id = request.getParameter("userId");
		String m_pw = request.getParameter("userPw");
		
		if(m_id.equals("admin") && m_pw.equals("123456"))
		{
			session.setAttribute("memberId", m_id);
			//session.setAttribute("memberPw", m_pw);
			
			out.println("������ �α��� ����<br>");
			out.println("������" + m_id + "���� �α��� �ϼ̽��ϴ�.<br>");
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
					<input type="submit" value="�� ��� ȸ�� �����ϱ�">
					</form>
				</td>
				<td>
					<form action="logout.jsp" method="post">
					<input type="submit" value="������ �α׾ƿ� ��">
					</td>
				
			</tr>			
		</table>
</body>
</html>