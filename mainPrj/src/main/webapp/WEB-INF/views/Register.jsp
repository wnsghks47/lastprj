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
	margin-top: 20px;
	margin-bottom: 30px;
	border: none;
	border-bottom: 1px solid black;
	outline: none;
	background: transparent;
}

.login-box .user-box label {
	position: absolute;
	top: 20px;
	left: 0;
	padding: 10px 0;
	font-size: 16px;
	pointer-events: none;
	transition: .5s;
}

.login-box .user-box input:focus ~label, .login-box .user-box input:valid
	 ~label {
	top: 0;
	left: 0;
	color: darkgray;
	font-size: 12px;
}

label.btn {

	font-size: calc(12px + 0.25vw);
}

form p {

	font-size: calc(7px + 0.25vw);

}
</style>

<script type="text/javascript">
$(document).ready(function(){
	/* alert("hi") */
	var idck = 0;
	$("#id").on("keyup",function(){
	var id=$("#id").val();
	var idPattern = /^[A-Za-z0-9]{6,16}$/;
        $.ajax({
            type : 'POST',
            data : {"id":id},
            url : "idcheck",
            success : function(data) {
                if (data==1) {
                    
                    /* alert("아이디가 존재합니다. 다른 아이디를 입력해주세요."); */  
                    $("#checktext").text("중복된 아이디입니다.");
                    $("#checktext").css("color","red");
                    
                    
                
                } else if(data==0){
                    /* alert("사용가능한 아이디입니다.");  */   
                    $("#checktext").text("사용가능한 아이디입니다.");
                    $("#checktext").css("color","blue");
                    
                }
            },
            error : function(error) {
                
                alert("error : " + error);
            }
        });
		
	});
	
	
});
/* 
var text = "";
var count = 0;
function check() {
  count++; // 배열 비우기 위한 변수
  // DOM 객체 찾기
  var id = document.getElementById("id");
  var pass = document.getElementById("pass");
  var mail = document.getElementById("mail");
  var phone = document.getElementById("phone");

  // 정규 표현식
  var idPattern = /^[A-Za-z0-9]{6,16}$/;
  var pwPattern = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$/;
  var emailPattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
  var phonePattern = /(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/g;


/* $(document).ready(function(){
	var id = document.getElementById("id");
	var idPattern = /^[A-Za-z0-9]{8,16}$/;
	$("#id").on("keyup",function(){
		 // 아이디
	 if(idPattern.test(id.value) == true){
	 $("#checktext9").text("아이디 체크완료.");
	 $("#checktext9").css("color","blue");
	 }
	 else{ 
	 $("#checktext9").text("입력양식에 맞지 않습니다.");
     $("#checktext9").css("color","red");
	 }	
		
	});
}); */
$(document).ready(function(){
	var pass = document.getElementById("pass");
	var passPattern = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$/;
	$("#pass").on("keyup",function(){
		 // 아이디
	 if(passPattern.test(pass.value) == true){
	 $("#checktext1").text("비밀번호 체크완료.");
	 $("#checktext1").css("color","blue");
	 
	 }
	 else{ 
	 $("#checktext1").text("입력양식에 맞지 않습니다.");
     $("#checktext1").css("color","red");
	 }	
		
	});
});
$(document).ready(function(){
	var mail = document.getElementById("mail");
	var mailPattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	$("#mail").on("keyup",function(){
		 // 아이디
	 if(mailPattern.test(mail.value) == true){
	 $("#checktext2").text("이메일 체크완료.");
	 $("#checktext2").css("color","blue");
	 }
	 else{ 
	 $("#checktext2").text("입력양식에 맞지 않습니다.");
     $("#checktext2").css("color","red");
	 }	
		
	});
});
$(document).ready(function(){
	var phone = document.getElementById("phone");
	var phonePattern = /^01[0179][0-9]{7,8}$/;
	$("#phone").on("keyup",function(){
		 // 아이디
	 if(phonePattern.test(phone.value) == true){
	 $("#checktext3").text("전화번호 체크완료.");
	 $("#checktext3").css("color","blue");
	 }
	 else{ 
	 $("#checktext3").text("입력양식에 맞지 않습니다.");
     $("#checktext3").css("color","red");
	 }	
		
	});
});



</script>
<br />
<br />
<div class="container-xl" id="wrap">
	<div class="row justify-content-center">
		<div class="col-10 col-md-8 col-lg-6 col-xl-6 mt-3">
			<div class="login-box">
				<h2>
					<strong style="font-size: calc(15px + 0.75vw);">회원가입</strong>
				</h2>
				<form action="registergo" method="post" autocomplete="off">
					<div class="user-box">
						<input type="text" name="id" id="id" required> <label>ID</label>
						<!-- <button class="btn btn-link" id="checkbt" style="float: right;">중복확인</button>
						<div class="clearfix"></div> -->
						<p id="checktext" class="mt-n3 mb-3">
						* 아이디는 8~16자, 영문 숫자, 특수문자가 포함되어야 합니다.</p>
						<p id="checktext9" class="mt-n3"></p>
					</div>
					<div class="user-box mt-2">
						<input type="password" name="pass" id="pass" required> <label>Password</label>
						<p id="checktext1" class="mt-n3"></p>
						<p class="mb-3">* 비밀번호는 8~16자, 영문, 숫자, 특수문자가
							포함되어야 합니다.</p>
					</div>
					<div class="user-box">
						<input type="text" name="mail" id="mail" required> <label>e-mail</label>
						<p id="checktext2" class="mt-n3"></p>
					</div>
					<div class="user-box">
						<input type="text" name="phone" id="phone" required> <label>전화번호</label>
						<p id="checktext3" class="mt-n3"></p>
					</div>
					<div class="user-box">
						<input type="date" name="birth" id="birth" required>
					</div>
					
					<div class="btn-group mb-3" data-toggle="buttons">
					<div><label>피부타입</label><br />
					
						<label class="btn btn-primary">
						    <input type="radio" name="skintype" id="skin1" value="건성"> 건성
						</label>
						<label class="btn btn-primary">
						    <input type="radio" name="skintype" id="skin2" value="지성"> 지성
						</label>
						<label class="btn btn-primary">
						    <input type="radio" name="skintype" id="skin3" value="중성"> 중성
						</label>
						<label class="btn btn-primary">
						    <input type="radio" name="skintype" id="skin4" value="복합성"> 복합성
						</label>
						<label class="btn btn-primary">
						    <input type="radio" name="skintype" id="skin5" value="민감성"> 민감성
						</label>
					</div>
					</div>
					
					<div class="btn-group mb-3" data-toggle="buttons">
					<div><label>성별</label><br />
						<label class="btn btn-primary" >
						    <input type="radio" name="gender" id="gender1" value="♂"> 남성
						</label>
						<label class="btn btn-primary">
						    <input type="radio" name="gender" id="gender2" value="♀"> 여성
						</label>
					</div>
					</div>
					

						<p>
							개인 데이터는 이 웹사이트 전체에서 사용자 경험을 지원하고, 사용자 계정에 대한 액세스를 관리하며, <strong
								style="color: firebrick">개인정보 보호정책</strong>에 설명한 기타 목적을 이행하는 데
							사용됩니다.
						</p>
					<div class="d-flex justify-content-end">
						<input type="submit" class="btn btn-link mt-4" id="creat" onclick="creat();" value="회원가입">
					</div>
				</form>
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