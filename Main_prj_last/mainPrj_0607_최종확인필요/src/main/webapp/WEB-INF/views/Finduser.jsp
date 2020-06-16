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


<script>

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
							<strong style="font-size: calc(15px + 0.75vw);">비밀번호찾기</strong>
						</h2>
						<form action="Findpass" method="post">
							<div class="user-box1">
								<input type="text" name="id" id="id" required> <label>id</label>
							</div>
							<div class="user-box1">
								<input type="text" name="mail" id="mail" required> <label>e-mail</label>
							</div>
							<div class="d-flex justify-content-end">
								<input type="submit" id="submit" class="btn btn-link mt-4" value="찾기">
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