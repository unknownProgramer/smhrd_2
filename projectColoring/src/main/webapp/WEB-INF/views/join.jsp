<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${cpath}/resources/css/style1.css">
<link href="https://fonts.googleapis.com/earlyaccess/notosanskr.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>coloring : 회원가입</title>
</head>
<script type="text/javascript">
function checkBtn(){
	var userEmail=$("#userEmail").val();
    if(userEmail==""){
       alert("이메일은 필수 입력사항입니다.");
       $("#userEmail").focus();
       return false;
    }
    var userId=$("#userId").val();
    if(userId==""){
       alert("아이디는 필수 입력사항입니다.");
       $("#userId").focus();
       return false;
    }
    var userPwd=$("#userPwd").val();
    if(userPwd==""){
       alert("비밀번호는 필수 입력사항입니다.");
       $("#userPwd").focus();
       return false;
    }
    var userName=$("#userName").val();
    if(userName==""){
       alert("이름은 필수 입력사항입니다.");
       $("#userName").focus();
       return false;
    }
    var userPhone=$("#userPhone").val();
    if(userPhone==""){
       alert("전화번호는 필수 입력사항입니다.");
       $("#userPhone").focus();
       return false;
    }
     $("#frm").submit();
     
     $('#myModal').on('shown.bs.modal', function () {
    	  $('#myInput').focus()
    	})
     
}
</script>
<body>
	<div class="login-form">
		<form action="${cpath}/register.do" method="post" id="frm">
			<div style="text-align: center; margin-bottom: 10%;">
				<img src="${cpath}/resources/images/colorLogo.png"
					style="width: 50%; height: 50%;"> <img
					src="${cpath}/resources//images/coloringLogo_small.png"
					style="width: 50%; height: 50%;">
			</div>
			<input type="text" name="userEmail" class="text-field"
				placeholder="Email" id="userEmail"> <input type="text"
				name="userId" class="text-field" placeholder="아이디" id="userId">
			<input type="password" name="userPwd" class="text-field"
				placeholder="비밀번호" id="userPwd"> <input type="text"
				name="userName" class="text-field" placeholder="이름" id="userName">
			<input type="text" name="userPhone" class="text-field"
				placeholder="핸드폰번호" id="userPhone">
			<button type="button" class="submit-btn" onclick="checkBtn()">가입</button>
		</form>
	</div>
</body>
</html>