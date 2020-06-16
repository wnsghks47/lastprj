<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="./header.jsp"%>

<style>
#wrap {
	background-color: white;
}

aside {
	width: 100%;
	height: 100%;
	margin-top: 2rem;
}

section {
	margin-bottom: 7rem;
	max-width: 1200px;
	margin-top: 3rem;
}

.bodytop {

}

@media ( max-width :1024px) {
	#wrap {
		width: 100%;
	}
	header {
		width: 100%;
	}
	aside {
		width: 100%;
	}
	section {
		width: 100%;
	}
	footer {
		width: 100%;
	}
}

#top_img {
	width: 100%;
}

#sidelist:hover {
	color: white;
	background-color:#0f4c81;
}

#hi {
	font-size: calc(18px + 0.2vw);
}

.card {
	transition: transform .3s;
}

.card:hover {
	transform: scale(1.03);
}
</style>
<script>
$(document).ready(function(){
	
	var value1="${member.id}";
	var value2="${member.pass}";
	var value3="${member.mail}";
	var value4="${member.phone}";
	var value5="${member.birth}";
	var value6="${member.skintype}";
	var value7="${member.gender}";
	
	
	
	$('input[name=id]').val(value1);
	$('input[name=pass]').val(value2);
	$('input[name=mail]').val(value3);
	$('input[name=phone]').val(value4);
	$('input[name=birth]').val(value5);
	$('input[name=skintype]').val(value6);
	$('input[name=gender]').val(value7);
	
	})
	function delinfo(){
	
	 if (confirm("정말로?") == true){    //확인

		 location.replace("DelInfo");

	 }else{   //취소

	     return false;

	 }
	
	}
	
	
	

</script>



<div style="height:150px;"></div>
<div class="container-fluid " id="wrap">
	<div class="row justify-content-center">
		<div class="col-10 mt-5">
			<div class="row justify-content-around">
				<aside class="col-md-2">
					<div class="list-group col-12 mt-3">
						<a href="MyPage" class="list-group-item list-group-item-action" id="sidelist">마이리뷰</a> 
						<a href="MyWishList" class="list-group-item list-group-item-action" id="sidelist">위시리스트</a> 
						<a href="MyInfo" class="list-group-item list-group-item-action" id="sidelist">회원정보수정</a>
					</div>
				</aside>
				<section class="col-md-8">
					<div class="row">
						<div class="container-fluid">
							<div class="row">
								<div class="col-md-12">
									<form role="form" action="updateInfo" method="post">
										<div class="form-group">
											 
											<label for="exampleInputEmail1">아이디
											</label><br />
											<input type="text" class="form-control" name="id"  readonly/>
										</div>
										<div class="form-group">										 
											<label for="exampleInputPassword1">
												현재 비밀번호
											</label><br />
											<input type="password" class="form-control"  name="pass" />
										</div>
										<div class="form-group">										 
											<label for="exampleInputPassword1">
												변경 비밀번호
											</label><br />
											<input type="password" class="form-control"  name="pass1" />
										</div>
										<div class="form-group">
											 
											<label for="exampleInputPassword1">
												이메일
											</label><br />
											<input type="text" class="form-control"  name="mail" />
										</div>
										<div class="form-group">
											 
											<label for="exampleInputPassword1">
												전화번호
											</label><br />
											<input type="text" class="form-control"  name="phone" />
										</div>
										<div class="form-group">
											 
											<label for="exampleInputPassword1">
												생년월일
											</label><br />
											<input type="text" class="form-control"  name="birth"  disabled/>
										</div>
										<div class="form-group">
											 
											<label for="exampleInputPassword1">
												피부타입
											</label><br />
											<input type="text" class="form-control"  name="skintype" />
										</div>
										<div class="form-group">
											 
											<label for="exampleInputPassword1">
												성별
											</label><br />
											<input type="text" class="form-control"  name="gender"  disabled/>
										</div>
										
										<br /><br />
										<button type="submit" class="btn btn-link" >정보수정</button>
										<a href="DelInfo?id=${member.id }&pass=${member.pass}" type="button" class="btn btn-link" onclick="delinfo();">회원탈퇴</a>
									</form>
								</div>
							</div>
						</div>
							
					</div>
				</section>
			</div>
		</div>
	</div>
</div>

<%@include file="./footer.jsp"%>