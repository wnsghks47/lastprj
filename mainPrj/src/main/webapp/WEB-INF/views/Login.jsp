<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="./header.jsp"%>

<style>
.login-box {
	padding: 40px;
	background: white;
	box-sizing: border-box;
	box-shadow: 0 4px 10px rgba(0, 0, 0, .4);
	border-radius: 10px;
}

.login-box h2 {
	margin: 0 0 30px;
	padding: 0;
	text-align: center;
}

.login-box .user-box {
	position: relative;
}

.login-box .user-box input {
	width: 100%;
	padding: 10px 0;
	font-size: 16px;
	color: black;
	margin-bottom: 30px;
	border: none;
	border-bottom: 1px solid black;
	outline: none;
	background: transparent;
}

.login-box .user-box label {
	position: absolute;
	top: 0;
	left: 0;
	padding: 10px 0;
	font-size: 16px;
	pointer-events: none;
	transition: .5s;
}

.login-box .user-box input:focus ~label, .login-box .user-box input:valid
	 ~label {
	top: -20px;
	left: 0;
	color: darkgray;
	font-size: 12px;
}

#creat_sm {
	position: relative;
	display: inline-block;
	padding: 10px 20px;
	color: black;
	font-size: 16px;
	text-decoration: none;
	text-transform: uppercase;
	overflow: hidden;
	transition: .5s;
	margin-top: 40px;
	letter-spacing: 4px
}

#creat_sm:hover {
	background: darkgray;
	color: #fff;
	border-radius: 5px;
	box-shadow: 0 0 5px darkgray, 0 0 25px darkgray, 0 0 50px darkgray,
}

.login-box1 {
	padding: 40px;
	background: white;
	box-sizing: border-box;
	box-shadow: 0 4px 10px rgba(0, 0, 0, .4);
	border-radius: 10px;
}

.login-box1 h2 {
	margin: 0 0 30px;
	padding: 0;
	text-align: center;
}

.login-box1 .user-box1 {
	position: relative;
}

.login-box1 .user-box1 input {
	width: 100%;
	padding: 10px 0;
	font-size: 16px;
	color: black;
	margin-bottom: 30px;
	border: none;
	border-bottom: 1px solid black;
	outline: none;
	background: transparent;
}

.login-box1 .user-box1 label {
	position: absolute;
	top: 0;
	left: 0;
	padding: 10px 0;
	font-size: 16px;
	pointer-events: none;
	transition: .5s;
}

.login-box1 .user-box1 input:focus ~label, .login-box1 .user-box1 input:valid
	 ~label {
	top: -20px;
	left: 0;
	color: darkgray;
	font-size: 12px;
}


</style>


<script type="text/javascript">

$(document).ready(function(){

	var key=getCookie("key");
	$("#id").val(key);

	if($("#id").val() !=""){
		$("#idSaveCheck").attr("checked", true);
	}
	$("#idSaveCheck").change(function(){ // 체크박스에 변화가 있다면,
        if($("#idSaveCheck").is(":checked")){ // ID 저장하기 체크했을 때,
            setCookie("key", $("#id").val(), 7); // 7일 동안 쿠키 보관
        }else{ // ID 저장하기 체크 해제 시,
            deleteCookie("key");
        }
    });
     
    // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
    $("#id").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
        if($("#idSaveCheck").is(":checked")){ // ID 저장하기를 체크한 상태라면,
            setCookie("key", $("#id").val(), 7); // 7일 동안 쿠키 보관
        }
    });
	
});

function setCookie(cookieName, value, exdays){
    var exdate = new Date();
    exdate.setDate(exdate.getDate() + exdays);
    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
    document.cookie = cookieName + "=" + cookieValue;
}
 
function deleteCookie(cookieName){
    var expireDate = new Date();
    expireDate.setDate(expireDate.getDate() - 1);
    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
}
 
function getCookie(cookieName) {
    cookieName = cookieName + '=';
    var cookieData = document.cookie;
    var start = cookieData.indexOf(cookieName);
    var cookieValue = '';
    if(start != -1){
        start += cookieName.length;
        var end = cookieData.indexOf(';', start);
        if(end == -1)end = cookieData.length;
        cookieValue = cookieData.substring(start, end);
    }
    return unescape(cookieValue);
}
</script>
<br />
<br />
<div class="container-fluid" id="wrap">
	<div class="row justify-content-center">
		<div class="col-10 mt-5">
			<div class="row justify-content-center">
				<div class="col-md-4 mt-3">
					<div class="login-box1">
						<h2>
							<strong style="font-size: calc(15px + 0.75vw);">로그인</strong>
						</h2>
						<form action="logingo" method="post" style="font-size: calc(10px + 0.25vw);">
							<div class="user-box1">
								<input type="text" name="id" id="id" required> <label>ID</label>
							</div>
							<div class="user-box1">
								<input type="password" name="pass" id="pass" required> <label>Password</label>
							</div>
							<c:if test="${msg == false }">
								<p style="color: red;">아이디와 비밀번호를 확인해주세요</p>
							</c:if>
							<c:if test="${stop == false }">
								<p style="color: red;">관리자에 의해 사용정지된 계정입니다.</p>
							</c:if>
								<p>회원이 아니신가요? <a href="Agree"><b style="color: red;">여기</b></a>를 눌러주세요.</p>
								<a href="Finduser">비밀번호 찾기</a> <br /><br />
							<label><b>아이디 저장</b></label>
							<input type="checkbox" id="idSaveCheck" />
							<div class="d-flex justify-content-end">
								<input type="submit" id="submit" onclick="login();" class="btn btn-link mt-4" value="로그인">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<br />
<br />
<br />
<br />
<br />
<%@include file="./footer.jsp"%>