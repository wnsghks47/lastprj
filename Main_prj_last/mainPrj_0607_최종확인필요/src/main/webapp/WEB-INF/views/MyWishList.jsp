<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="./header.jsp"%>

<style>
.card { transition: transform .3s; }
.card:hover { transform: scale(1.03); }
div#rcontent>p>img{ max-width: 100%; height: auto; }
#wrap { background-color: white; }
#sidelist:hover { color: white; background-color:#0f4c81; }
#hi { font-size: calc(18px + 0.2vw); }
aside { width: 100%; height: 100%; margin-top: 2rem; }
section { margin-bottom: 7rem; max-width: 1200px; margin-top: 3rem; }
</style>

<div style="height:150px;"></div>
<div class="container-fluid " id="wrap">
	<div class="row justify-content-center">
		<div class="col-10 mt-5">
			<div class="row justify-content-around">
				<aside class="col-12 col-xl-2">
					<div class="list-group col-12 mt-3">
						<a href="MyPage" class="list-group-item list-group-item-action" id="sidelist">마이리뷰</a>
						<a href="MyWishList" class="list-group-item list-group-item-action" id="sidelist">위시리스트</a>
						<a href="MyInfo" class="list-group-item list-group-item-action" id="sidelist">회원정보수정</a>
					</div>
				</aside>
				<section class="col-md-9">
					<div class="row bodytop_write">
						<div class="col">
     						<span id="hi">안녕하세요, <b>${member.id }</b> 님</span><a href="logout"> (로그아웃하기)</a><br><br>
							<span style="font-size: calc(12px + 0.15vw);">
							ㆍ마이페이지에서 <span style="color:#0f4c81">리뷰리스트</span>를 조회할 수 있고, 
							<span style="color:#0f4c81">회원정보</span>를 변경할 수 있습니다.
							</span>
							<br><br><br>
							<h2 style="letter-spacing:2px; font-size: calc(25px + 0.5vw);">My WishList</h2>
							<hr style="border: 1px solid darkgrey;">
						</div>
					</div>

					<div class="card-group row" id="cardgroup">
						<c:if test="${list[0].pnumber == null }">
							<div class="col">
								<img class="d-block my-5 mx-auto" src="resources/img/아이콘/frown.svg" style="width: calc(25px + 5vw);"/>
								<p class="h3 my-3" style="text-align: center;font-size: calc(20px + 0.5vw);">체크된 위시리스트가 없습니다.</p>
							</div>
						</c:if>						
						<c:if test="${list[0].pnumber != null }">
							<c:forEach items="${list }" var="product">
								<div class="col-12 col-sm-6 col-lg-4 pb-4" data-aos="fade-up" data-aos-duration="500">
									<div class="card p-4 h-100">
										<div class="d-flex justify-content-center align-items-center" style="width:100%; height:calc(5vw + 250px); overflow: hidden;">
											<c:set var="first" value="${fn:replace(product.pname, '/', '_')}" />
											<c:set var="second" value="${fn:replace(first, '[', '')}" />
											<c:set var="productName" value="${fn:replace(second, ']', '')}" />
											<img src="resources/img/${fn:replace(product.pcategory, '/', '_')}/${productName}.jpg" class="card-img mt-4 w-100">
										</div>
										<div class="card-body my-3" style="text-align: center;">
											<h5 class="card-title">${product.pname}</h5>
											<p class="card-text text-danger">${product.pbrand}</p>
										</div>
										<a href="./DetailView?pnumber=${product.pnumber }" class="stretched-link"></a>
									</div>
								</div>
							</c:forEach>
						</c:if>
					</div>
				</section>
			</div>
		</div>
	</div>
</div>

<%@include file="./footer.jsp"%>