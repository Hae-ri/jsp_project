<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.Enumeration" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ �α׾ƿ�</title>
</head>
<body>

	<h3>Home > ������ �α׾ƿ�</h3><hr>
	<%
		//session.invalidate();//��� ���� ���� ����
		Enumeration enumer = session.getAttributeNames();
		while(enumer.hasMoreElements())
		{
			String sName = enumer.nextElement().toString();
			String sValue = session.getAttribute(sName).toString();
			
			if(sValue.equals("admin"))
			{				
				session.removeAttribute(sName);
				out.println("�α׾ƿ��� �����ϼ̽��ϴ�.");
			}
			else
			{
				out.println("�α׾ƿ� ����! �ٽ� Ȯ���� �ּ���.");
			}			
		}
		%>
		
   <table border="0">
			<tr>
				<td>
					<form action="main.jsp" method="post">
					<input type="submit" value="���� ȭ�� �̵� ��">
					</form>
				</td>				
			</tr>			
		</table>
</body>
</html>