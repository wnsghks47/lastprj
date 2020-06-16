<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="./header.jsp"%>

<style>
.card-tag {
	display: flex;
	align-self: flex-start;
	width: 15%;
	height: 4%;
	position: fixed;
	justify-content: center;
	align-items: center;
	background-color: #0f4c81;
	border-radius: 2px;
}

.rank {
	color: white;
	display: inline-block;
	margin: auto;
	font-size: calc(5px + 0.3vw);
	letter-spacing: 1px;
}

.card {
	transition: transform .3s;
}

.card:hover {
	transform: scale(1.03);
}
</style>

<div class="container-fluid m-0 p-0">
	<div class="row no-gutters">
		<div class="col-12 col-lg-6">
			<div id="carousel-product-img" class="carousel slide"
				data-ride="carousel" data-pause="false">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<div class="item-wrapper"
							style="display: flex; justify-content: center; align-items: center; height: calc(100vh - 90px); overflow: hidden;">
							<img class="carousel-img d-block" src="resources/img/메인_슬라이드/p-img1.jpg">
						</div>
					</div>
					<div class="carousel-item">
						<div class="item-wrapper"
							style="display: flex; justify-content: center; align-items: center; height: calc(100vh - 90px); overflow: hidden;">
							<img class="carousel-img d-block" src="resources/img/메인_슬라이드/p-img2.jpg">
						</div>
					</div>
					<div class="carousel-item">
						<div class="item-wrapper"
							style="display: flex; justify-content: center; align-items: center; height: calc(100vh - 90px); overflow: hidden;">
							<img class="carousel-img d-block" src="resources/img/메인_슬라이드/p-img3.jpg">
						</div>
					</div>
				</div>
				<a class="carousel-control-prev" href="#carousel-product-img"
					role="button" data-slide="prev"> <img
					src="resources/img/아이콘/left.svg"> <span class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carousel-product-img"
					role="button" data-slide="next"> <img
					src="resources/img/아이콘/right.svg"> <span class="sr-only">Next</span>
				</a>
			</div>
		</div>
		<div class="col-12 col-lg-6 d-none d-lg-block">
			<div class="row no-gutters">
				<div class="col">
					<div id="carousel-product-text"
						class="carousel slide carousel-fade">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<div class="item-wrapper"
									style="display: flex; justify-content: center; align-items: center; height: calc(( 100vh - 90px)/2); background-color: #dbcbbc;">
									<div>
										<h2 style="text-align: center; font-size: calc(8px + 2vw);">블루
											에디션 안티 에이징 세트</h2>
										<br>
										<p style="text-align: center; font-size: calc(8px + .5vw);">피부
											컨디션을 완성하는 시간 단 1초면 충분하다</p>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="item-wrapper"
									style="display: flex; justify-content: center; align-items: center; height: calc(( 100vh - 90px)/2); background-color: #dbcbbc;">
									<div>
										<h2 style="text-align: center; font-size: calc(8px + 2vw);">MENGINE
											ALL IN ONE</h2>
										<br>
										<p style="text-align: center; font-size: calc(8px + .5vw);">스킨
											+ 로션의 가벼움과 에센스의 풍부한 영양 성분을 하나로</p>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="item-wrapper"
									style="display: flex; justify-content: center; align-items: center; height: calc(( 100vh - 90px)/2); background-color: #dbcbbc;">
									<div>
										<h2 style="text-align: center; font-size: calc(8px + 2vw);">비욘드
											옴므 올인원 포뮬러 기획 세트</h2>
										<br>
										<p style="text-align: center; font-size: calc(8px + .5vw);">미네랄이
											풍부한 스위스 알파인 워터와 각종 허브 성분을 함유한 올인원 포뮬러</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row no-gutters">
				<div class="col">
					<div id="carousel-product-feature" class="carousel slide">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<div class="item-wrapper"
									style="display: flex; justify-content: center; align-items: center; height: calc(( 100vh - 90px)/2); overflow: hidden;">
									<img class="carousel-img d-block" src="resources/img/메인_슬라이드/p-f1.jpg">
								</div>
							</div>
							<div class="carousel-item">
								<div class="item-wrapper"
									style="display: flex; justify-content: center; align-items: center; height: calc(( 100vh - 90px)/2); overflow: hidden;">
									<img class="carousel-img d-block" src="resources/img/메인_슬라이드/p-f2.jpg">
								</div>
							</div>
							<div class="carousel-item">
								<div class="item-wrapper"
									style="display: flex; justify-content: center; align-items: center; height: calc(( 100vh - 90px)/2); overflow: hidden;">
									<img class="carousel-img d-block" src="resources/img/메인_슬라이드/p-f3.jpg">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<div class="container-xl"
	style="margin-top: 100px; margin-bottom: 100px;">
	<h1 class="display-3"
		style="font-family: 'Cinzel', serif; letter-spacing: 5px; color: white; text-align: center; margin-top: 100px; margin-bottom: 50px; font-size: calc(15px + 3vw)"
		data-aos="fade-up" data-aos-duration="1500">YOUR CHOICE IS HERE</h1>
	<br>
	<p class="h5 my-3"
		style="color: white; text-align: center; font-size: calc(9px + .5vw)"
		data-aos="fade-up" data-aos-delay="500" data-aos-duration="1000">여러분이
		궁금해하시는 남성 화장품에 대한 모든 정보가 이곳에 있습니다.</p>
	<p class="h5 my-3"
		style="color: white; text-align: center; font-size: calc(9px + .5vw)"
		data-aos="fade-up" data-aos-delay="500" data-aos-duration="1000">제품의
		가격과 구성 성분, 다양한 피부 타입의 사용자들이 직접 작성한 리뷰들을 한 번에 확인하실 수 있습니다.</p>
	<p class="h5 my-3"
		style="color: white; text-align: center; font-size: calc(9px + .5vw)"
		data-aos="fade-up" data-aos-delay="500" data-aos-duration="1000">
		이곳 <strong style="font-family: 'Gudea', sans-serif;">&nbsp;'&nbsp;First
			Place&nbsp;'&nbsp;</strong> 에서의 정보가 여러분의 선택에 긍정적인 영향을 줄 수 있기를 바랍니다.
	</p>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<div class="container-fluid pb-5 mb-5">
	<div class="row justify-content-center">
		<div class="col-10 col-md-5 col-xl-3 pt-1 mt-1 pt-xl-5 mt-xl-5">
			<div class="row row-cols-1 no-gutters justify-content-center pt-1 mt-1 pt-xl-5 mt-xl-5">
				<div class="col pb-4">
					<h3 class="border p-3" style="color: white; text-align: center;">BEST 스킨/토너</h3>
				</div>
				<c:forEach items="${first_top3 }" var="first" varStatus="status">
					<div class="col pb-4" data-aos="fade-up" data-aos-duration="500">
						<div class="card p-4 h-100">
							<div class="card-tag">
								<p class="rank">BEST ${status.index + 1 }</p>
							</div>
							<div class="d-flex justify-content-center align-items-center" style="width:100%; height:calc(7.5vw + 300px); overflow: hidden;">
								<img src="resources/img/스킨_토너/${first.pname}.jpg" width="100%" class="card-img mt-4">
							</div>
							<div class="card-body my-3" style="text-align: center;">
								<h5 class="card-title">${first.pname}</h5>
								<p class="card-text text-danger">${first.pbrand}</p>
							</div>
							<a href="./DetailView?pnumber=${first.pnumber }" class="stretched-link"></a>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="col-10 col-md-5 col-xl-3 pt-1 mt-1">
			<div
				class="row row-cols-1 justify-content-center no-gutters pt-1 mt-1">
				<div class="col pb-4">
					<h3 class="border p-3" style="color: white; text-align: center;">BEST 로션/에멀젼</h3>
				</div>
				<c:forEach items="${second_top3 }" var="second" varStatus="status">
					<div class="col pb-4" data-aos="fade-up" data-aos-duration="500">
						<div class="card p-4">
							<div class="card-tag">
								<p class="rank">BEST ${status.index + 1 }</p>
							</div>
							<div class="d-flex justify-content-center align-items-center" style="width:100%; height:calc(7.5vw + 300px); overflow: hidden;">
								<img src="resources/img/로션_에멀젼/${second.pname}.jpg" width="100%" class="card-img mt-4">
							</div>
							<div class="card-body my-3" style="text-align: center;">
								<h5 class="card-title">${second.pname}</h5>
								<p class="card-text text-danger">${second.pbrand}</p>
							</div>
							<a href="./DetailView?pnumber=${second.pnumber}" class="stretched-link"></a>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="col-10 col-md-5 col-xl-3 pt-1 mt-1 pt-xl-5 mt-xl-5">
			<div class="row row-cols-1 no-gutters justify-content-center pt-1 mt-1 pt-xl-5 mt-xl-5">
				<div class="col pb-4">
					<h3 class="border p-3" style="color: white; text-align: center;">BEST 에센스/세럼</h3>
				</div>
				<c:forEach items="${third_top3 }" var="third" varStatus="status">
					<div class="col pb-4" data-aos="fade-up" data-aos-duration="500">
						<div class="card p-4">
							<div class="card-tag">
								<p class="rank">BEST ${status.index + 1 }</p>
							</div>
							<div class="d-flex justify-content-center align-items-center" style="width:100%; height:calc(7.5vw + 300px); overflow: hidden;">
								<img src="resources/img/에센스_세럼/${third.pname}.jpg" width="100%" class="card-img mt-4">
							</div>
							<div class="card-body my-3" style="text-align: center;">
								<h5 class="card-title">${third.pname}</h5>
								<p class="card-text text-danger">${third.pbrand}</p>
							</div>
							<a href="./DetailView?pnumber=${third.pnumber}" class="stretched-link"></a>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</div>
<br>
<br>
<br>
<br>
<br>
<div class="container-xl"
	style="margin-top: 100px; margin-bottom: 100px; padding-bottom: 100px;">
	<h4 style="font-family: 'Cinzel', serif; letter-spacing: 5px; color: white; text-align: center; margin-top: 100px; margin-bottom: 50px; font-size: calc(15px + 3vw)"
		data-aos="fade-up" data-aos-duration="1500">OUR RESOLUTION</h4>
	<p class="h6 my-3"
		style="color: white; text-align: center; font-size: calc(9px + .5vw)" data-aos="fade-up" data-aos-delay="500" data-aos-duration="1000">
		저희 <strong style="font-family: 'Gudea', sans-serif;">&nbsp;' First Place '&nbsp;</strong> 는
	</p>
	<p class="h6 my-3"
		style="color: white; text-align: center; font-size: calc(9px + .5vw);" data-aos="fade-up" data-aos-delay="500" data-aos-duration="1000">
		여러분들께 정확한 정보를 제공하고자 노력합니다.
	</p>
</div>
<br>
<br>
<br>
<br>
<br>

<%@include file="./footer.jsp"%>