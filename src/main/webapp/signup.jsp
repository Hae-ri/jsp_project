<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ�� ����</title>
<script type="text/javascript">
	function checkFun()
		{
		
		var f = document.user_info;
		
		
		if(f.userId.value.length < 4 || f.userId.value.length > 14) // 4~14�ڱ��� ���̵� ���
		{
			alert("���̵�� 4~14�� �̳��θ� �Է��ϼ���.");
			f.userId.focus();
			return false;
		}
		else if(f.userPw.value.length < 6) // ��й�ȣ�� 6�� �̻� �Է�
		{
			alert("��й�ȣ�� 6�� �̻����� �Է��ϼ���.");
			f.userPw.focus();
			return false;
		}
		else if(f.userMail.value == "") // �̸��� ĭ�� ���������
		{
			alert("�̸����� �ݵ�� �Է��ؾ� �մϴ�.");
			f.userMail.focus();
			return false;
		}
		else
			return true;
		}
</script>
</head>
<body>
	<h3>Home > ȸ������</h3><hr>
	<form action="insertDB.jsp" method="post" name="user_info" onsubmit="return checkFun()">
		���̵� : <br><input type="text" size="16" name="userId"><br><br>
		��й�ȣ : <br><input type="password" size="16" name="userPw"><br><br>
		�̸��� : <br><input type="email" size="30" name="userMail"><br><br>
		<hr>
		<input type="submit" value="�����ϱ�"> &nbsp;&nbsp;&nbsp;
		<input type="reset" value="�ٽ��ۼ�">
		
	
	</form>
</body>
</html>