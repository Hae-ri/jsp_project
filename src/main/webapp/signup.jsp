<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원 가입</title>
<script type="text/javascript">
	function checkFun()
		{
		
		var f = document.user_info;
		
		
		if(f.userId.value.length < 4 || f.userId.value.length > 14) // 4~14자까지 아이디 허용
		{
			alert("아이디는 4~14자 이내로만 입력하세요.");
			f.userId.focus();
			return false;
		}
		else if(f.userPw.value.length < 6) // 비밀번호는 6자 이상 입력
		{
			alert("비밀번호는 6자 이상으로 입력하세요.");
			f.userPw.focus();
			return false;
		}
		else if(f.userMail.value == "") // 이메일 칸이 비어있으면
		{
			alert("이메일은 반드시 입력해야 합니다.");
			f.userMail.focus();
			return false;
		}
		else
			return true;
		}
</script>
</head>
<body>
	<h3>Home > 회원가입</h3><hr>
	<form action="insertDB.jsp" method="post" name="user_info" onsubmit="return checkFun()">
		아이디 : <br><input type="text" size="16" name="userId"><br><br>
		비밀번호 : <br><input type="password" size="16" name="userPw"><br><br>
		이메일 : <br><input type="email" size="30" name="userMail"><br><br>
		<hr>
		<input type="submit" value="가입하기"> &nbsp;&nbsp;&nbsp;
		<input type="reset" value="다시작성">
		
	
	</form>
</body>
</html>