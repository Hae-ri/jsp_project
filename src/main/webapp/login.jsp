<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ �α��� ȭ��</title>
<script type="text/javascript">
	function checkFun()
		{		
		var f = document.user_info;
		
		
		if(f.userId.value == "") // ���̵� �������� Ȯ��
		{
			alert("���̵� �Է����ּ���.");
			f.userId.focus();
			return false;
		}
		else if(f.userPw.value == "") // ��й�ȣ�� �������� Ȯ��
		{
			alert("��й�ȣ�� �Է����ּ���.");
			f.userPw.focus();
			return false;
		}
		else
			return true;
		}
</script>
</head>
<body>
	<h3>Home > ������ �α���</h3><hr>
	<form action="loginSuccess.jsp" method="post" name="user_info" onsubmit="return checkFun()">
		���̵� : <br><input type="text" size="16" name="userId"><br><br>
		��й�ȣ : <br><input type="password" size="16" name="userPw"><br><br>
		<hr>
		<input type="submit" value="������ �α���">	
	
	</form>
</body>
</html>