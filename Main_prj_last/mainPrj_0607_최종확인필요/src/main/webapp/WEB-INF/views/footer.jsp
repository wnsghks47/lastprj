<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<footer>
	<div class="m-0 p-0"
		style="background-color: #2f2f2f; margin-top: 100px; font-size: calc(10px + 0.2vw);">
		<div class="container-xl">
			<br>
			<br>
			<ul class="nav mt-5">
				<li class="nav-item mx-n2"><a class="nav-link" href="#"
					style="color: white;">사업자정보확인</a></li>
				<li class="nav-item mx-n2"><a class="nav-link disabled">|</a></li>
				<li class="nav-item mx-n2"><a class="nav-link" href="#"
					style="color: white;">이용약관</a></li>
				<li class="nav-item mx-n2"><a class="nav-link disabled">|</a></li>
				<li class="nav-item mx-n2"><a class="nav-link" href="#"
					style="color: white;">개인정보처리방침</a></li>
			</ul>
			<br>
			<br>
			<ul class="nav mb-n4">
				<li class="nav-item mx-n2">
					<p class="nav-link" style="color: white;">(주) FirstPlace (대표 :
						박주광)</p>
				</li>
				<li class="nav-item mx-n2">
					<p class="nav-link disabled">|</p>
				</li>
				<li class="nav-item mx-n2">
					<p class="nav-link" style="color: white;">사업자등록번호 :
						211-88-98005</p>
				</li>
				<li class="nav-item mx-n2">
					<p class="nav-link disabled">|</p>
				</li>
				<li class="nav-item mx-n2">
					<p class="nav-link" style="color: white;">통신판매업신고번호 :
						제2017-서울강동-00835호</p>
				</li>
			</ul>
			<ul class="nav mb-n4">
				<li class="nav-item mx-n2">
					<p class="nav-link" style="color: white;">소재지 : 서울시 강동구 천호대로
						1095 현대코아 3층</p>
				</li>
				<li class="nav-item mx-n2">
					<p class="nav-link disabled">|</p>
				</li>
				<li class="nav-item mx-n2">
					<p class="nav-link" style="color: white;">대표전화 : 02-441-6006</p>
				</li>
				<li class="nav-item mx-n2">
					<p class="nav-link disabled">|</p>
				</li>
				<li class="nav-item mx-n2">
					<p class="nav-link" style="color: white;">이메일 : cs@glowmee.com</p>
				</li>
			</ul>
			<ul class="nav">
				<li class="nav-item mx-n2">
					<p class="nav-link" style="color: white;">광고문의 :
						b2b@glowmee.com / 02-538-3964</p>
				</li>
			</ul>
			<br>
			<ul class="nav w-100 pb-5"
				style="display: flex; justify-content: space-between;">
				<li class="nav-item mx-n2">
					<p class="nav-link" style="color: darkgrey; font-size: 12px;">Copyright
						ⓒ FirstPlace Inc. All Rights Reserved.</p>
				</li>
				<li class="float-right">
					<p class="d-flex align-items-center"
						style="font-family: 'Gudea', sans-serif;">
						<object class="mr-1" data="resources/img/아이콘/wolf-white.svg"
							type="image/svg+xml"></object>
						<strong class="h3 mb-0"
							style="color: white; font-weight: 900; letter-spacing: 5px; font-size: calc(10px + 1vw)">First
							Place</strong>
					</p>
				</li>
			</ul>
		</div>
	</div>
</footer>

</div>

<script>
	$(document).ready(function() {
		AOS.init();

		mybutton = document.getElementById("myBtn");

		window.onscroll = function() {
			scrollFunction()
		};

	});

	function scrollFunction() {
		if (document.body.scrollTop > 20
				|| document.documentElement.scrollTop > 20) {
			mybutton.style.display = 'block';
		} else {
			mybutton.style.display = 'none';
		}
	}

	function topFunction() {
		document.body.scrollTop = 0; // For Safari
		document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
	}
</script>

</body>

</html>
