<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="./header.jsp"%>

<style>
div#rcontent>p>img{ max-width: 100%; height: auto; min-width: 300px; }
input[name=like]:checked+label, input[name=dec]:checked+label { color: red; }
input[name=wishList]:checked+label { color: #FF8200; }
input[name=like], input[name=dec] { display: none; }
.product-img { width: calc(200px + 10vw); height: auto; }
.review-img { max-width: calc(200px + 5vw); height: auto; }
.media { transition: transform .3s; }
.media:hover { transform: scale(1.03); }
.tag { color: white; padding: 1px 10px; border: 1px solid #dbcbbc; border-radius: 13px; background-color: #dbcbbc; font-size: 13px; font-weight: 500; display: inline-block; }
.card-body p, a { font-size: calc(13px + 0.2vw); }
.card { transition: transform .3s; }
.card:hover { transform: scale(1.03); }
.list_filters h3 { font-size: 18px; font-weight: bold; color: #0f4c81;  margin-bottom: 1em; }
.list_filters label { color: #34404b; font-size: 15px; }
.list_filters {  background: #fff; border: 1px solid #c0c0c0; border-radius: 5px; display: block; }
.list_filters h3 { font-size: font-size: calc(15px + 0.2vw); }
.size_filter label,
.brand_filter label { display: inline-block; width: 75px; }
.size_filter input,
.brand_filter input {  display: none; }
.list_filters input:checked+label { color: indianred; border: 1px solid indianred; }
</style>

<div class="container-fluid" style="background-color:white;">
	<div class="row justify-content-center" style="height: calc(100px + 2.5vw);">
		<div class="col-10 d-flex align-items-end border-bottom border-dark">
			<h1 class="mb-4" style="letter-spacing: 10px;font-size: calc(30px + 0.5vw);">제품정보</h1>
		</div>
	</div>
</div>

<!-- product part start -->

<div class="container-fluid pt-5" style="background-color:white;">
	<div class="row no-gutters justify-content-around">
		<div class="col col-lg-10">
			<div class="row no-gutters justify-content-around">
				<div class="col col-lg-6">
					<div class="item-wrapper" style="display: flex; justify-content: center; align-items: center; height: 100%;">
						<c:set var="first" value="${fn:replace(detail.pname, '/', '_')}"/>
                        <c:set var="second" value="${fn:replace(first, '[', '')}"/>
                        <c:set var="productName" value="${fn:replace(second, ']', '')}"/>
						<img class="product-img d-block" src="resources/img/${fn:replace(detail.pcategory, '/', '_')}/${productName}.jpg">
					</div>
				</div>
				<div class="col-10 col-lg-6">
					<div class="row row-cols-1 no-gutters align-items-center pt-4 pb-5">
						<div class="col my-3">
							<div class="float-right">
								<input type="checkbox" name="wishList" id="wishList" value="1" style="display: none;"/>
								<label for="wishList" style="cursor: pointer;" data-toggle="tooltip" data-placement="top" title="위시리스트에 추가하기">
									<svg class="bi bi-star-fill" width="calc(10px + 1vw)" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
									  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
									</svg>
								</label>
							</div>
							<div class="clearfix"></div>
							<p class="text-danger" style="font-size: calc(13px + 0.15vw);">
								<strong>${detail.pbrand }</strong>
							</p>
							<h1 style="font-size: calc(20px + 0.7vw);">
								<span>${detail.pname }</span>
							</h1>
							<div class="d-flex justify-content-between">
								<div class="d-inline-block" style="font-size: calc(12px + 0.15vw);"><span class="text-secondary">${price.unit}</span>&nbsp;/&nbsp;${price.price}원</div>
								<div class="d-inline-block">
									<div class="d-flex">
										<span class="d-flex" style="font-size: calc(12px + 0.15vw);"><strong id="scoreBoard">${detail.pscore }</strong></span>
										<div class="d-inline-block mx-2" style="height:calc(12px + 0.15vw);margin-top:-3px;" id="heartScorePart">
											<c:choose>
												<c:when test="${detail.front == 5.0}">
													<c:forEach begin="1" end="5">
														<img src="resources/img/아이콘/heart.svg">
													</c:forEach>
												</c:when>
												<c:otherwise>
													<c:forEach begin="1" end="${detail.front}">
														<img src="resources/img/아이콘/heart.svg">
													</c:forEach>
													<c:if test="${detail.back >= 0.5}">
														<img src="resources/img/아이콘/heart-half.svg">
													</c:if>
													<c:if test="${detail.back < 0.5}">
														<img src="resources/img/아이콘/heart-none.svg">
													</c:if>
													<c:forEach begin="1" end="${4 - detail.front}">
														<img src="resources/img/아이콘/heart-none.svg">
													</c:forEach>
												</c:otherwise>
											</c:choose>
										</div>
										<span style="font-size: calc(12px + 0.15vw);" id="reviewCount">
											<c:choose>
												<c:when test="${detail.prcount == null }">
													(0)
												</c:when>
												<c:otherwise>
													(${detail.prcount})
												</c:otherwise>
											</c:choose>
										</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col my-3">
							<c:choose>
								<c:when test="${fn:length(ingredients) ne 0}">
									<div class="d-flex justify-content-between align-items-center">
										<div class="d-inline-block" style="font-size: calc(12px + 0.15vw);">
											<span class="d-block">
												<strong>·유의해야 할 성분 ${fn:length(dangers)}개를 포함</strong>
											</span>
											<c:forEach items="${dangers}" var="danger">
												<c:if test="${danger.ilevel eq '7' || danger.ilevel eq '8' || danger.ilevel eq '9' || danger.ilevel eq '10'}">
													<span class="d-inline-block text-danger">[${danger.ingredient}]&nbsp;</span>
												</c:if>
												<c:if test="${danger.ilevel eq '-' }">
													<span class="d-inline-block text-secondary">[${danger.ingredient}]&nbsp;</span>
												</c:if>
											</c:forEach>
										</div>
										<span class="d-inline-block">
											<button type="button" class="btn btn-link border-1 ml-3" style="width: 90px; border-color: #0f4c81;" data-toggle="modal" data-target="#ingredient" class="stretched-link">
												<span>성분정보</span>
											</button>
										</span>
									</div>
								</c:when>
								<c:otherwise>
									<div class="d-inline-block" style="font-size: calc(12px + 0.15vw);">
										<span class="d-block">·성분정보없음</span>
									</div>
								</c:otherwise>
							</c:choose>
						</div>
						<div class="col my-3">
							<div>
								<table class="w-100">
									<tbody>
										<tr>
											<th class="d-inline-block" style="width: 50px;"><span>설명</span>
											</th>
											<td>
												<div class="mb-5 pt-1" style="white-space: pre-line; font-size: calc(12px + 0.15vw);">${detail.pinformation }</div>
											</td>
										</tr>
										<tr>
											<th style="width: 50px;"><span>태그</span>
											</th>
											<td>
												<div>
													<c:forEach items="${tags}" var="tag">
														<span class="tag">${tag.tag}</span>
													</c:forEach>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="ingredient" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-scrollable modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header border-0">
					<h4 class="modal-title m-4" id="exampleModalScrollableTitle" style="font-size: calc(20px + 0.15vw);">
						<strong>성분정보</strong>
					</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="border-bottom mt-2 pb-3">
					<ul class="nav px-3 d-flex justify-content-around">
						<li class="nav-item">
							<img class="mx-auto mb-2 d-block" src="resources/img/아이콘/drop-safe.svg" style="height:20px;">
							<p style="font-size: calc(12px + 0.15vw);">낮은 위험 등급</p>
						</li>
						<li class="nav-item">
							<img class="mx-auto mb-2 d-block" src="resources/img/아이콘/drop-warning.svg" style="height:20px;">
							<p style="font-size: calc(12px + 0.15vw);">중간 위험 등급</p>
						</li>
						<li class="nav-item">
							<img class="mx-auto mb-2 d-block" src="resources/img/아이콘/drop-danger.svg" style="height:20px;">
							<p style="font-size: calc(12px + 0.15vw);">높은 위험 등급</p>
						</li>
						<li class="nav-item">
							<img class="mx-auto mb-2 d-block" src="resources/img/아이콘/drop-none.svg" style="height:20px;">
							<p style="font-size: calc(12px + 0.15vw);">등급 미지정</p>
						</li>
					</ul>
				</div>
				<div class="modal-body">
					<c:forEach items="${ingredients}" var="ingredient">
						<div class="media m-4">
							<c:if test="${ingredient.ilevel eq '0' || ingredient.ilevel eq '1' || ingredient.ilevel eq '2' || ingredient.ilevel eq '1-2' || ingredient.ilevel eq '1-3' || ingredient.ilevel eq '2-3'}">
								<img class="img my-auto mr-4" src="resources/img/아이콘/drop-safe.svg" style="height:calc(30px + 0.2vw);">
							</c:if>
							<c:if test="${ingredient.ilevel eq '3' || ingredient.ilevel eq '4' || ingredient.ilevel eq '5' || ingredient.ilevel eq '6' || ingredient.ilevel eq '3-4' || ingredient.ilevel eq '4-5'}">
								<img class="img my-auto mr-4" src="resources/img/아이콘/drop-warning.svg" style="height:calc(30px + 0.2vw);">
							</c:if>
							<c:if test="${ingredient.ilevel eq '7' || ingredient.ilevel eq '8' || ingredient.ilevel eq '9' || ingredient.ilevel eq '10'}">
								<img class="img my-auto mr-4" src="resources/img/아이콘/drop-danger.svg" style="height:calc(30px + 0.2vw);">
							</c:if>
							<c:if test="${ingredient.ilevel eq '-' }">
								<img class="img my-auto mr-4" src="resources/img/아이콘/drop-none.svg" style="height:calc(30px + 0.2vw);">
							</c:if>
							<div class="media-body h-100 d-flex align-items-center">
								<div>
									<h5 style="font-size:calc(15px + 0.2vw);"><strong>${ingredient.ingredient }</strong></h5>
									<p class="ml-1 mb-1" style="font-size: calc(12px + 0.15vw);">Level&nbsp;${ingredient.ilevel }</p>
									<p class="ml-1 mb-1" style="font-size: calc(12px + 0.15vw);">${ingredient.ipurpose }</p>
								</div>
							</div>
						</div>
						<hr />
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- product part end -->

<!-- review part start -->

<div class="container-fluid" style="background-color: white;">
	<div class="row justify-content-center py-5">
	
		<!-- review write button part start -->
		
		<c:if test="${member == null }">
		<div class="col-10 py-5 border-top border-bottom border-dark">
			<div class="ml-4">
				<h3 style="font-size: calc(15px + 0.5vw);">
					<span>상품평 작성하기</span>
				</h3>
				<p class="mb-0" style="font-size: calc(12px + 0.15vw);">
					<a href="Login">로그인</a>을 해야 댓글을 남길 수 있습니다.
				</p>
			</div>
		</div>
		</c:if>
		<c:if test="${member != null }">
		<div class="col-10 pt-5 border-top border-bottom border-dark">
			<div class="ml-4">
				<h3 style="font-size: calc(15px + 0.5vw);">
					<span><strong>${member.id }</strong></span><small>님 제품에 대한 리뷰를 남겨주세요.</small>
				</h3>
				<a class="d-inline-block mb-5" href="WriteView?pnumber=${detail.pnumber }">리뷰 작성하기</a>
			</div>
		</div>
		</c:if>
		
		<!-- review write button part end -->
		
		<!-- filter part start -->
		<div class="col-10 pt-5">
			<p>
			  <a class="btn" data-toggle="collapse" href="#filter" role="button" aria-expanded="false" aria-controls="filter">
			  	<img src="resources/img/아이콘/filter.svg" class="mr-2 h-100" /><strong>필터</strong>
			  </a>
			</p>
			<div class="collapse" id="filter">
				<div class="list_filters p-4">
					<form action="#" autocomplete="off" id="form1">
		           		<div class="d-inline-block d-lg-flex w-100 justify-content-around">
		                  <div class="brand_filter my-3 d-inline-block">
		                      <h3>성별</h3>
		                      <input type="radio" id="gender" name="gender" value="%" checked>
		                      <label class="btn" for="gender">전체</label> 
		                      <input type="radio" id="gender1" name="gender" value="♀"> 
		                      <label class="btn" for="gender1">여자</label> 
		                      <input type="radio" id="gender2" name="gender" value="♂"> 
		                      <label class="btn" for="gender2">남자</label>
		                  </div>
		                  <div class="size_filter my-3 d-inline-block">
		                      <h3>연령대</h3>
		                      <input type="checkbox" id="age0" name="age" value="|" checked>
		                      <label class="btn" for="age0">전체</label> 
		                      <input type="checkbox" id="age1" name="age" value="10대"> 
		                      <label class="btn" for="age1">10대</label> 
		                      <input type="checkbox" id="age2" name="age" value="20대"> 
		                      <label class="btn" for="age2">20대</label>
		                      <input type="checkbox" id="age3" name="age" value="30대">
		                      <label class="btn" for="age3">30대</label> 
		                      <input type="checkbox" id="age4" name="age" value="40대 ↑"> 
		                      <label class="btn" for="age4">40대 ↑</label>
		                  </div>
		                  <div class="size_filter my-3 d-inline-block">
		                      <h3>피부타입</h3>
		                      <input type="checkbox" id="skin0" name="skin" value="|" checked>
		                      <label class="btn" for="skin0">전체</label> 
		                      <input type="checkbox" id="skin1" name="skin" value="건성"> 
		                      <label class="btn" for="skin1">건성</label> 
		                      <input type="checkbox" id="skin2" name="skin" value="지성"> 
		                      <label class="btn" for="skin2">지성</label> 
		                      <input type="checkbox" id="skin3" name="skin" value="중성"> 
		                      <label class="btn" for="skin3">중성</label>
		                      <input type="checkbox" id="skin4" name="skin" value="복합성">
		                      <label class="btn" for="skin4">복합성</label> 
		                      <input type="checkbox" id="skin5" name="skin" value="민감성"> 
		                      <label class="btn" for="skin5">민감성</label>
		                  </div>
		              </div>
		
		              <div class="d-flex w-100 justify-content-end">
		                  <input type="submit" class="btn btn-link" value="검색" id="submit"/>
		              </div>
			        </form>
			    </div>
	        </div>
        </div>
		
		<!-- filter part end -->
		
		
		<!-- review list part start -->
		
		<div class="col-10">
			<div class="row justify-content-start pb-5" id="reviewPart">
				<c:forEach items="${reviewList }" var="review">
				<div class="col-12 col-lg-6 my-5" data-aos="fade-up" data-aos-duration="500" data-aos-offset="-250" id="${review.rnumber}">
					<div class="media d-block d-lg-flex align-items-center reviewCard">
						<input type="hidden" value="${review.rnumber }" id="reviewNumber"/>
						<p style="position:absolute;bottom:0px;right:20px;font-size:calc(12px + 0.15vw);">${review.rdate}</p>
						<div class="item-wrapper my-4 mx-lg-4 my-lg-0" style="display: flex; justify-content: center; align-items: center; width: 20vh; height: 20vh; overflow: hidden;">
							<img class="review-img d-block" src="${review.src }">
						</div>
						<div class="media-body d-block d-lg-inline-block ml-lg-5">
							<h5 class="mt-4 mb-4"><strong>${review.rtitle}</strong></h5>
							<table class="table text-secondary" style="font-size:calc(12px + 0.15vw);width:150px;">
								<tr>
									<td class="border-0 p-0 pb-2" colspan="2">
										${review.rid}
										<c:choose>
											<c:when test="${review.rgender == '♂' }">
												<span class="text-primary ml-2">${review.rgender}</span>
											</c:when>
											<c:otherwise>
												<span class="text-danger ml-2">${review.rgender}</span>
											</c:otherwise>
										</c:choose>
									</td>
								</tr>
								<tr>
									<td class="border-0 p-0 pb-2">${review.rage}</td>									
									<td class="border-0 p-0 pb-2">·${review.rskin}</td>
								</tr>
								<tr>
									<td class="border-0 p-0" colspan="2">
										<c:forEach begin="1" end="${review.rscore}">
											<img src="resources/img/아이콘/heart.svg">
										</c:forEach>
										<c:forEach begin="1" end="${5 - review.rscore}">
											<img src="resources/img/아이콘/heart-none.svg">
										</c:forEach>
									</td>
								</tr>
							</table>
							<a type="button" data-toggle="modal" data-target="#reviewModal" class="stretched-link"></a>
						</div>
					</div>
				</div>
				</c:forEach>					
			</div>
		</div>
		
		<!-- review list part end -->
		
		<!-- review modal start -->
				
		<div class="modal fade" id="reviewModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
			<div class="modal-dialog modal-dialog-scrollable modal-xl" role="document">
				<div class="modal-content">
					<input type="hidden" value="" id="rnumber"/>
					<input type="hidden" value="" id="rstep"/>
					<input type="hidden" value="" id="rindent"/>
					<div class="modal-header border-0">
						<h5 class="modal-title mx-3 my-2 my-lg-4" id="exampleModalScrollableTitle"><strong id="modalTitle"></strong></h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="border-bottom mt-lg-2 pb-3">
						<ul class="nav px-3 d-flex justify-content-between"  style="font-size: calc(12px + 0.15vw);">
							<li class="nav-item">
								<p class="d-block d-lg-inline-block m-3" id="rname"></p>
							</li>
							<li class="nav-item">
								<p class="d-block d-lg-inline-block m-3" id="rage"></p>
							</li>
							<li class="nav-item">
								<p class="d-block d-lg-inline-block m-3" id="rskin"></p>
							</li>
							<li class="nav-item">
								<div class="d-inline-block m-3" style="height:1.5em;">
									<div class="rating h-100" id="rscore"></div>
								</div>
							</li>
							<li class="nav-item">
								<p class="d-block d-lg-inline-block m-3" id="rdate"></p>
							</li>
						</ul>
					</div>
					<div class="modal-body p-lg-5" id="modalContent">
					<div class="row">
						<div class="col pt-3 pb-5" id="rcontent"></div>
					</div>
					
					<hr class="my-lg-3" />
					
					<div class="form-group mb-lg-5" id="modify-delete-part">
						<div class="float-right">
							<input type="submit" class="btn btn-link mx-2" value="수정" id="modify">
							<input type="button" class="btn btn-link mx-2" value="삭제" id="delete">
						</div>
						<div class="clearfix"></div>
						<hr class="my-lg-3" />
					</div>
					
					<div class="form-group mb-lg-5" id="like-dislike-part">
						<div class="float-right" style="font-size: calc(10px + 0.2vw);">
							<div class="form-check form-check-inline m-2">
							  <input class="form-check-input" type="checkbox" name="like" id="like" value="1">
							  <label class="form-check-label" for="like" style="height:3vh;cursor:pointer;">좋아요<span id="cntLike"></span>
							  	<svg class="bi bi-hand-thumbs-up mb-2 ml-2" height="100%" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
								  <path fill-rule="evenodd" d="M6.956 1.745C7.021.81 7.908.087 8.864.325l.261.066c.463.116.874.456 1.012.965.22.816.533 2.511.062 4.51a9.84 9.84 0 0 1 .443-.051c.713-.065 1.669-.072 2.516.21.518.173.994.681 1.2 1.273.184.532.16 1.162-.234 1.733.058.119.103.242.138.363.077.27.113.567.113.856 0 .289-.036.586-.113.856-.039.135-.09.273-.16.404.169.387.107.819-.003 1.148a3.163 3.163 0 0 1-.488.901c.054.152.076.312.076.465 0 .305-.089.625-.253.912C13.1 15.522 12.437 16 11.5 16v-1c.563 0 .901-.272 1.066-.56a.865.865 0 0 0 .121-.416c0-.12-.035-.165-.04-.17l-.354-.354.353-.354c.202-.201.407-.511.505-.804.104-.312.043-.441-.005-.488l-.353-.354.353-.354c.043-.042.105-.14.154-.315.048-.167.075-.37.075-.581 0-.211-.027-.414-.075-.581-.05-.174-.111-.273-.154-.315L12.793 9l.353-.354c.353-.352.373-.713.267-1.02-.122-.35-.396-.593-.571-.652-.653-.217-1.447-.224-2.11-.164a8.907 8.907 0 0 0-1.094.171l-.014.003-.003.001a.5.5 0 0 1-.595-.643 8.34 8.34 0 0 0 .145-4.726c-.03-.111-.128-.215-.288-.255l-.262-.065c-.306-.077-.642.156-.667.518-.075 1.082-.239 2.15-.482 2.85-.174.502-.603 1.268-1.238 1.977-.637.712-1.519 1.41-2.614 1.708-.394.108-.62.396-.62.65v4.002c0 .26.22.515.553.55 1.293.137 1.936.53 2.491.868l.04.025c.27.164.495.296.776.393.277.095.63.163 1.14.163h3.5v1H8c-.605 0-1.07-.081-1.466-.218a4.82 4.82 0 0 1-.97-.484l-.048-.03c-.504-.307-.999-.609-2.068-.722C2.682 14.464 2 13.846 2 13V9c0-.85.685-1.432 1.357-1.615.849-.232 1.574-.787 2.132-1.41.56-.627.914-1.28 1.039-1.639.199-.575.356-1.539.428-2.59z"/>
								</svg>
							  </label>
							</div>
							<div class="form-check form-check-inline m-2">
							  <input class="form-check-input" type="checkbox" name="like" id="dislike" value="2"> 
							  <label class="form-check-label" for="dislike" style="height:3vh;cursor:pointer;">싫어요<span id="cntDislike"></span>
							  	<svg class="bi bi-hand-thumbs-down mt-2 ml-2" height="100%" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
								  <path fill-rule="evenodd" d="M6.956 14.534c.065.936.952 1.659 1.908 1.42l.261-.065a1.378 1.378 0 0 0 1.012-.965c.22-.816.533-2.512.062-4.51.136.02.285.037.443.051.713.065 1.669.071 2.516-.211.518-.173.994-.68 1.2-1.272a1.896 1.896 0 0 0-.234-1.734c.058-.118.103-.242.138-.362.077-.27.113-.568.113-.857 0-.288-.036-.585-.113-.856a2.094 2.094 0 0 0-.16-.403c.169-.387.107-.82-.003-1.149a3.162 3.162 0 0 0-.488-.9c.054-.153.076-.313.076-.465a1.86 1.86 0 0 0-.253-.912C13.1.757 12.437.28 11.5.28v1c.563 0 .901.272 1.066.56.086.15.121.3.121.416 0 .12-.035.165-.04.17l-.354.353.353.354c.202.202.407.512.505.805.104.312.043.44-.005.488l-.353.353.353.354c.043.043.105.141.154.315.048.167.075.37.075.581 0 .212-.027.415-.075.582-.05.174-.111.272-.154.315l-.353.353.353.354c.353.352.373.714.267 1.021-.122.35-.396.593-.571.651-.653.218-1.447.224-2.11.164a8.907 8.907 0 0 1-1.094-.17l-.014-.004H9.62a.5.5 0 0 0-.595.643 8.34 8.34 0 0 1 .145 4.725c-.03.112-.128.215-.288.255l-.262.066c-.306.076-.642-.156-.667-.519-.075-1.081-.239-2.15-.482-2.85-.174-.502-.603-1.267-1.238-1.977C5.597 8.926 4.715 8.23 3.62 7.93 3.226 7.823 3 7.534 3 7.28V3.279c0-.26.22-.515.553-.55 1.293-.138 1.936-.53 2.491-.869l.04-.024c.27-.165.495-.296.776-.393.277-.096.63-.163 1.14-.163h3.5v-1H8c-.605 0-1.07.08-1.466.217a4.823 4.823 0 0 0-.97.485l-.048.029c-.504.308-.999.61-2.068.723C2.682 1.815 2 2.434 2 3.279v4c0 .851.685 1.433 1.357 1.616.849.232 1.574.787 2.132 1.41.56.626.914 1.28 1.039 1.638.199.575.356 1.54.428 2.591z"/>
								</svg>
							  </label>
							</div>
							<div class="form-check form-check-inline m-2">
							  <input class="form-check-input" type="checkbox" name="dec" id="dec" value="1">
							  <label class="form-check-label" for="dec" style="height:3vh;cursor:pointer;" data-toggle="popover">신고
							  	<svg class="bi bi-cone mb-2 ml-2" height="100%" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
								  <path d="M7.03 1.88c.252-1.01 1.688-1.01 1.94 0L12 14H4L7.03 1.88z"/>
								  <path fill-rule="evenodd" d="M1.5 14a.5.5 0 0 1 .5-.5h12a.5.5 0 0 1 0 1H2a.5.5 0 0 1-.5-.5z"/>
								</svg>
							  </label>
							</div>
						</div>
						<div class="clearfix"></div>
						<hr class="my-lg-3" />
					</div>
																		
					<div class="my-5">
					
						<c:if test="${member == null }">
						<div class="form-group mb-5 pl-4">
							<div>
								<span class="h5" style="font-size: calc(15px + 0.25vw);">댓글 작성하기</span>
								<p class="my-3" style="font-size: calc(10px + 0.1vw);">
									<a href="Login">로그인</a>을 해야 댓글을 남길 수 있습니다.
								</p>
							</div>
						</div>
						</c:if>
						
						<c:if test="${member != null }">
						<div class="form-group mb-5 pb-5">
							<form name="responseForm" autocomplete="off">
								<label for="title">
									<span class="h5" style="font-size:calc(15px + 0.25w);">댓글 쓰기</span>
								</label> 
								<input type="text" class="form-control my-3" id="content" name="content" placeholder="댓글을 입력해주세요.">
								<input type="button" class="btn btn-link float-right responseBtn" id="response" value="댓글 달기"/>
							</form>
						</div>
						</c:if>
					</div>
					<div class="row row-cols-1" id="responsePart"></div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- review modal end -->
		
	</div>
</div>

<script>

var timer = null;
var start = 1;
var end = 2;
var resStart = 1;
var resEnd = 2;
var ages = [];  
var skins = [];
var gender = "";

$(document).ready(function() {
	
	var pnumber = "${detail.pnumber}";
	
	var value = "${member}";
	
	if( value == "" || value == null || value == undefined || ( value != null && typeof value == "object" && !Object.keys(value).length ) ){ 
		
	} else {
		
		$.ajax({
	        url: "requestWishList",
	        type: "POST",
	        dataType: "json",
	                   
	        success: function(data) {
	        	
	        	var array = data.array;
	        	
	        	for (var i = 0; i < array.length; i++) {
					
	        		if (array[i].pnumber == pnumber) {
	        			
						if (array[i].wish == 0) {
							
	        				$("input[name=wishList]").prop("checked", false);
	        				
						} else {
							
							$("input[name=wishList]").prop("checked", true);
							
						}
	        			
	        			
	        			break;
					}
	        		
	        		$("input[name=wishList]").prop("checked", false);
	        		
				}
	        	
	        },
	        
	        error: function(){
	            alert("로딩에 실패하였습니다.");
	        }
		});
		
	}
	
	if ($("input[name='age']:checked").length > 0) {
		
		$("input[name='age']:checked").each(function(i){   //jQuery로 for문 돌면서 check 된값 배열에 담는다
			ages.push($(this).val());
		});
		
	} else {
		ages.push("|");
	}
	  
	
	if ($("input[name='skin']:checked").length > 0) {
		
		$("input[name='skin']:checked").each(function(i){   //jQuery로 for문 돌면서 check 된값 배열에 담는다
			skins.push($(this).val());
		});
		
	} else {
		skins.push("|");
	}
	
		
	if ($("input[name='gender']:checked").length > 0) {
		gender = $("input[name='gender']:checked").val();
	} else {
		gender = "%";
	}
	
	$("input[name=age]").click(function() {

        if ($("#age0").is(':checked') == true) {
            $("#age0").prop("checked", false)
        }

        if ($("input[name=age]").is(':checked') == false) {
            $("#age0").prop("checked", true)
        }

        if ($("input[name=age]:checked").length == 4) {

            $("input[name=age]").prop("checked", false)
            $("#age0").prop("checked", true)
        }
    })

    $("#age0").click(function() {
        $("input[name=age]").prop("checked", false)
        $("#age0").prop("checked", true)
    })

	
    $("input[name=skin]").click(function() {

            if ($("#skin0").is(':checked') == true) {
                $("#skin0").prop("checked", false)
            }

            if ($("input[name=skin]").is(':checked') == false) {
                $("#skin0").prop("checked", true)
            }

            if ($("input[name=skin]:checked").length == 5) {

                $("input[name=skin]").prop("checked", false)
                $("#skin0").prop("checked", true)
            }
        })

        $("#skin0").click(function() {
            $("input[name=skin]").prop("checked", false)
            $("#skin0").prop("checked", true)
        })
    
        
    $("input[name=wishList]").click(function() {
		
		var value = "${member}";
		
		if( value == "" || value == null || value == undefined || ( value != null && typeof value == "object" && !Object.keys(value).length ) ) { 
			
			alert('로그인이 필요합니다.')
			$("input[name=wishList]").prop("checked", false);
			
		} else { 
			
			var wish = $("input[name=wishList]:checked").val();
			
			if ( wish == "" || wish == null || wish == undefined || ( wish != null && typeof wish == "object" && !Object.keys(wish).length )) {
				
				wish = "0";
			}
			
			$.ajax({
		        url: "updateWishList",
		        type: "POST",
		        data: { "wish" : wish , "n" : "${detail.pnumber}" },
		                   
		        success: function(data) {
		        	
		        },
		        
		        error: function(){
		            alert("로딩에 실패하였습니다.");
		        }
		        
			});
						
		}
        
    });    
        
        
	$("input[name=like]").click(function() {
		
		var value = "${member}";
		
		if( value == "" || value == null || value == undefined || ( value != null && typeof value == "object" && !Object.keys(value).length ) ) { 
			
			alert('로그인이 필요합니다.')
			$("input[name=like]").prop("checked", false);
			
		} else { 
			
			$("input[name=like]").not($(this)).prop("checked", false);
			
			var lod = $("input[name=like]:checked").val();
			
			if ( lod == "" || lod == null || lod == undefined || ( lod != null && typeof lod == "object" && !Object.keys(lod).length )) {
				
				lod = "0";
			}
			
			$.ajax({
		        url: "updateLoD",
		        type: "GET",
		        data: { "lod" : lod , "r" : $('input#rnumber').val() },
		        contentType: "application/json; charset=utf-8;",
		                   
		        success: function(data) {
					
		        	$('span#cntLike').empty();
		        	$('span#cntDislike').empty();
		        	
		        	$('span#cntLike').text("("+data.like+")");
		        	$('span#cntDislike').text("("+data.dislike+")");
		        	
		        },
		        
		        error: function(){
		            alert("로딩에 실패하였습니다.");
		        }
		        
			});
						
		}
        
    });
	
	$("input[name=dec]").click(function() {
		
		var value = "${member}";
		
		if( value == "" || value == null || value == undefined || ( value != null && typeof value == "object" && !Object.keys(value).length ) ){ 
			
			alert('로그인이 필요합니다.')
			$("input[name=dec]").prop("checked", false);
			
		} else {
			
			var dec = $("input[name=dec]:checked").val();
			
			if ( dec == "" || dec == null || dec == undefined || ( dec != null && typeof dec == "object" && !Object.keys(dec).length )) {
				
				dec = "0";
			}
			
			$.ajax({
		        url: "updateDec",
		        type: "GET",
		        data: { "dec" : dec , "r" : $('input#rnumber').val() },
		        contentType: "application/json; charset=utf-8;",
		                   
		        success: function(data) {

		        },
		        
		        error: function(){
		            alert("로딩에 실패하였습니다.");
		        }
		        
			});
			
		}
        
    });
	
	$(document).on('click', ".reviewCard", function() {
		
		resStart = 1;
		resEnd = 2;
		
		var rnumber = $(this).children('input#reviewNumber').val();
		
		var value = "${member}";
		
		if( value == "" || value == null || value == undefined || ( value != null && typeof value == "object" && !Object.keys(value).length ) ){ 
			
			
			
		} else {
			
			$.ajax({
		        url: "requestLodlist",
		        type: "GET",
		        contentType: "application/json; charset=utf-8;",
		        dataType: "json",
		                   
		        success: function(data) {
		        	
		        	var array = data.array;
		        	
		        	for (var i = 0; i < array.length; i++) {
						
		        		if (array[i].rnumber == rnumber) {
							
		        			if (array[i].lod == 0) {
								
		        				$("input[name=like]").prop("checked", false);
		        				
							} else if (array[i].lod == 1) {
								
								$("input[name=like]").prop("checked", false);
								$("input#like").prop("checked", true);
								
							} else {
								
								$("input[name=like]").prop("checked", false);
								$("input#dislike").prop("checked", true);
								
							}
		        			
		        			
							if (array[i].dec == 0) {
								
		        				$("input[name=dec]").prop("checked", false);
		        				
							} else {
								
								$("input[name=dec]").prop("checked", true);
								
							}
		        			
		        			
		        			break;
						}
		        		
		        		$("input[name=like]").prop("checked", false);
		        		$("input[name=dec]").prop("checked", false);
		        		
					}
		        	
		        },
		        
		        error: function(){
		            alert("로딩에 실패하였습니다.");
		        }
			});
			
		}
		
		
	    $.ajax({
	        url: "requestObject",
	        type: "GET",
	        data: { "r" : rnumber },
	        contentType: "application/json; charset=utf-8;",
	        dataType: "json",
	                   
	        success: function(data) {
	        	
	        	$('strong#modalTitle').empty();
	    		$('p#rname').empty();
	    		$('p#rage').empty();
	    		$('p#rskin').empty();
	    		$('p#rdate').empty();
	    		$('div#rcontent').empty();		
	    		$('div#rscore').empty();
	    		$('input#content').val("");
	    		$('span#cntLike').empty();
	    		$('span#cntDislike').empty();
	        		        	
				$('strong#modalTitle').text(data.detail.rtitle);
				$('p#rname').text('작성자:  ' + data.detail.rid);
				
				if (data.detail.rgender == '♂') {
					$('p#rname').append('<span class="text-primary ml-2">' + data.detail.rgender + '</span>');
				} else {
					$('p#rname').append('<span class="text-danger ml-2">' + data.detail.rgender + '</span>');
				}
				
				$('p#rage').text('연령대:  ' + data.detail.rage);
				$('p#rskin').text('피부타입:  ' + data.detail.rskin);
				$('p#rdate').text('작성일:  ' + data.detail.rdate);
				$('div#rcontent').append(data.detail.rcontent);
				
				$('div#rscore').text('평점:  ')
					
				for (var i = 0; i < data.detail.rscore; i++) {
					$('div#rscore').append('<img class="mx-1" src = "resources/img/아이콘/heart.svg">');
				}
				
				for (var i = 0; i < (5 - data.detail.rscore); i++) {
					$('div#rscore').append('<img class="mx-1" src = "resources/img/아이콘/heart-none.svg">');
				}
				
				$('input#rnumber').val(data.detail.rnumber);
				$('input#rstep').val(data.detail.rstep);
				$('input#rindent').val(data.detail.rindent);

				
				if (data.detail.rid == "${member.id}") {
					$('input#modify').attr('onclick', "location.href='ModifyView?r=" + data.detail.rnumber + "&n=" + "${detail.pnumber}" + "'")
					$('#like-dislike-part').css("display", "none");
					$('#modify-delete-part').css("display", "block");
				} else {
					$('#modify-delete-part').css("display", "none");
					$('#like-dislike-part').css("display", "block");
				}
				
				$('span#cntLike').text('('+data.detail.rlike+')');
	    		$('span#cntDislike').text('('+data.detail.rdislike+')');
				
			},		
			
	        error: function(){
	            alert("로딩에 실패하였습니다.");
	        }
			
	    });
	    
	    $.ajax({
	        url: "requestResponse",
	        type: "GET",
	        data: { "r" : rnumber , "start" : "1", "end" : "2" },
	        contentType: "application/json; charset=utf-8;",
	        dataType: "json",
	                   
	        success: function(data) {
	        	
	    	    $('div#responsePart').empty();
	        	
	    		for (var i = 0; i < data.list.length; i++) {
	    		
	    			var review = data.list[i];
	    			
	        		 var card = document.createElement("div");
	        		 $(card).addClass("col my-2");
	        		 $(card).attr('id', review.rnumber);
	        		 
	        		 var cardBody = document.createElement("div");
	        		 $(cardBody).addClass("card border-left-0 border-right-0");
	        		 
	        		 if (review.rgender == '♂') {
	        			 $(cardBody).append('<div class="card-header border-0 bg-white" style="font-size:calc(13px + 0.2vw);">'+review.rid+'<span class="text-primary ml-2">' + review.rgender + '</span></div>');
	    				 } else {
	    					 $(cardBody).append('<div class="card-header border-0 bg-white" style="font-size:calc(13px + 0.2vw);">'+review.rid+'<span class="text-danger ml-2">' + review.rgender + '</span></div>');
	    				 }
	        			
	        		 var cardContent = document.createElement("div");
	        		 $(cardContent).addClass("card-body");
	        		 $(cardContent).append('<blockquote class="blockquote mb-0"><p style="position:absolute;top:13px;right:20px;font-size:calc(12px + 0.15vw);">'+review.rdate+'</p><p style="font-size:calc(12px + 0.25vw);">'+review.rcontent+'</p></blockquote>');
	        		 
	        		 if (review.rid == "${member.id}") {
	        			 $(cardContent).append('<a class="delete-btn text-secondary float-right" id="'+review.rnumber+'"><small>삭제</small></a>');
					 }
	        		 
	        		 $(cardContent).append('<input type="hidden" value="'+review.rnumber+'" id="'+review.rnumber+'">')
	        		 
	        		 $(cardBody).append(cardContent);
	        		 $(card).append(cardBody);
	        		 $('div#responsePart').append(card);
	        		 
	    		}
				
			},		
			
	        error: function(){
	            alert("로딩에 실패하였습니다.");
	        }
			
	    });
	    	    
	});
	
	$('#delete').on('click', function() {
		
		var rnumber = $('input#rnumber').val();
		
		$.ajax({
			url: "deleteReview",
			type: "get",
			data: { "r" : rnumber , "n" : "${detail.pnumber}" },
			contentType: "application/json; charset=utf-8;",
			
	        success: function(data) {
	        	alert("삭제 성공")
	        	$('strong#scoreBoard').text(data.score);
	        	$('div#heartScorePart').empty();
	        	$('span#reviewCount').text('('+ data.count +')');
	        	
	        	if (data.score < 5) {
					
	        		for (var i = 0; i < parseInt(data.score.substring(0,1)); i++) {
		        		$('div#heartScorePart').append('<img class="mr-1" src="resources/img/아이콘/heart.svg">');
					}
	        		
	        		if (parseInt(data.score.substring(2,3)) >= 5) {
	        			$('div#heartScorePart').append('<img class="mr-1" src="resources/img/아이콘/heart-half.svg">');
					} else {
						$('div#heartScorePart').append('<img class="mr-1" src="resources/img/아이콘/heart-none.svg">');
					}
	        		
	        		for (var i = 0; i < (4 - parseInt(data.score.substring(0,1))); i++) {
	        			$('div#heartScorePart').append('<img class="mr-1" src="resources/img/아이콘/heart-none.svg">');
					}
	        		
				} else {
					
					for (var i = 0; i < data.score; i++) {
		        		$('div#heartScorePart').append('<img class="mr-1" src="resources/img/아이콘/heart.svg">');
					}
					
				}
	        	
	        	$('button.close').trigger('click');
	        	$('div#' + rnumber).remove();
			}
			
		});
	});
	
	$(document).on('click', '#response', function() {
		
		event.preventDefault();
		
		 var resContent = $('input#content').val();
		 if (typeof $('input#content').val() == 'undefined' || $('input#content').val() == null || $('input#content').val() == '') {
			 resContent = "내용없음";
		 }
		 
		 var resRnumber = $('input#rnumber').val();
		 var resRstep = $('input#rstep').val();
		 var resRindent = $('input#rindent').val();
		
		$.ajax({
	        url: "insertResponse",
	        type: "GET",
	        data: { 
	        	"resContent" : resContent, 
	        	"resRnumber" : resRnumber, 
	        	"resRstep" : resRstep, 
	        	"resRindent" : resRindent,
	        	"pnumber" : "${detail.pnumber}",
	        	"start" : "1",
	        	"end" : "2"
	        	},
	        contentType: "application/json; charset=utf-8;",
	        dataType: "json",
	                   
	        success: function(data) {
	        	
	        		alert('댓글이 등록되었습니다.')
	        		
	        		$('input#content').val("");
	        		$('div#responsePart').empty();
	        	
					for (var i = 0; i < data.item.length; i++) {
	        		
	        		var review = data.item[i];
	        		
	        		 var card = document.createElement("div");
	        		 $(card).addClass("col my-2");
	        		 $(card).attr('id', review.rnumber);
	        		 
	        		 var cardBody = document.createElement("div");
	        		 $(cardBody).addClass("card  border-left-0 border-right-0");
	        		        		 
	        		 if (review.rgender == '♂') {
	        			 $(cardBody).append('<div class="card-header border-0 bg-white" style="font-size:calc(13px + 0.2vw);">'+review.rid+'<span class="text-primary ml-2">' + review.rgender + '</span></div>');
	 				 } else {
	 					 $(cardBody).append('<div class="card-header border-0 bg-white" style="font-size:calc(13px + 0.2vw);">'+review.rid+'<span class="text-danger ml-2">' + review.rgender + '</span></div>');
	 				 }
	        			
	        		 var cardContent = document.createElement("div");
	        		 $(cardContent).addClass("card-body");
	        		 $(cardContent).append('<blockquote class="blockquote mb-0"><p style="position:absolute;top:13px;right:20px;font-size:calc(12px + 0.15vw);">'+review.rdate+'</p><p style="font-size:calc(12px + 0.25vw);">'+review.rcontent+'</p></blockquote>');
	        		 
	        		 if (review.rid == "${member.id}") {
	        			 $(cardContent).append('<a class="delete-btn text-secondary float-right" id="'+review.rnumber+'"><small>삭제</small></a>');
					 }
	        		 
	        		 $(cardContent).append('<input type="hidden" value="'+review.rnumber+'" id="'+review.rnumber+'">')
	        		 
	        		 $(cardBody).append(cardContent);
	        		 $(card).append(cardBody);
	        		 $('div#responsePart').append(card);
	        		 
				}
				
			},		
			
	        error: function(){
	            alert("로딩에 실패하였습니다.");
	        }
			
	    });
			
	})
	
	$(document).on('click', 'a.delete-btn', function() {
		
		event.preventDefault();
		
		var dResNumber = $(this).attr('id');
		
		$.ajax({
	        url: "deleteResponse",
	        type: "GET",
	        data: { 
	        	"resRnumber" : dResNumber
	        	},
	        contentType: "application/json; charset=utf-8;",
	                   
	        success: function(data) {
	        	
	        		alert("댓글이 삭제되었습니다.")
	        		$('div#'+dResNumber).remove();
				
			},		
			
	        error: function(){
	            alert("로딩에 실패하였습니다.");
	        }
			
	    });
		
	});
	
	$(document).on('click', 'input#submit', function() {
		
		event.preventDefault();
		
		ages = [];  
		skins = [];
		gender = "";		
				
		if ($("input[name='age']:checked").length > 0) {
			
			$("input[name='age']:checked").each(function(i){   //jQuery로 for문 돌면서 check 된값 배열에 담는다
				ages.push($(this).val());
			});
			
		} else {
			ages.push("|");
		}
		  
		
		if ($("input[name='skin']:checked").length > 0) {
			
			$("input[name='skin']:checked").each(function(i){   //jQuery로 for문 돌면서 check 된값 배열에 담는다
				skins.push($(this).val());
			});
			
		} else {
			skins.push("|");
		}
		
			
		if ($("input[name='gender']:checked").length > 0) {
			gender = $("input[name='gender']:checked").val();
		} else {
			gender = "%";
		}
		
		$.ajax({
	        url: "requestReview",
	        type: "GET",
	        data: { 
	        	"n" : "${detail.pnumber}", 
	        	"start" : '1', 
	        	"end" : '2',
	        	"gender" : gender,
	        	"age" : ages,
	        	"skin" : skins
	        	},
	        contentType: "application/json; charset=utf-8;",
            dataType: "json",
	        success: function(data) {
	        	
	        	start = 1;
	        	end = 2;
	        	
	        	$('div#reviewPart').empty();
	        	
	        	for (var i = 0; i < data.item.length; i++) {
	        		
	        		var review = data.item[i];
	        		
	        		 var card = document.createElement("div");
	        		 $(card).addClass("col-12 col-lg-6 my-5");
	        		 $(card).attr("data-aos", "fade-up").attr("data-aos-duration", "500").attr("data-aos-offset", "-250");
	        		 $(card).attr("id", review.rnumber)
	        		 
	        		 var cardContent = document.createElement("div");
	        		 $(cardContent).addClass("media d-block d-lg-flex align-items-center reviewCard");
	        		 
	        		 var cardImage = document.createElement("div");
	        		 $(cardImage).addClass('item-wrapper d-flex justify-content-center align-items-center my-4 mx-lg-4 my-lg-0');
	        		 $(cardImage).css("width", "20vh").css("height", "20vh").css("overflow", "hidden");
	        		 $(cardImage).append('<img class="review-img d-block" src="' + review.src + '">');
	        		 
	        		 var cardBody = document.createElement("div");
	        		 $(cardBody).addClass('media-body d-block d-lg-inline-block ml-lg-5');
	        		 $(cardBody).append('<h5 class="mt-4 mb-4"><strong>' + review.rtitle + '</strong></h5>');
	        		 
	        		 var cardTable = document.createElement("table");
	        		 $(cardTable).addClass('table text-secondary');
	        		 $(cardTable).css("font-size", "calc(12px + 0.15vw)").css("width", "150px");
	        		 
	        		 if (review.rgender == '♂') {
	        			 $(cardTable).append('<tr><td class="border-0 p-0 pb-2" colspan="2">' + review.rid + '<span class="text-primary ml-2">' + review.rgender + '</span></td></tr>');
	 				} else {
	 					 $(cardTable).append('<tr><td class="border-0 p-0 pb-2" colspan="2">' + review.rid + '<span class="text-danger ml-2">' + review.rgender + '</span></td></tr>');
	 				}
	        		 
	        		 $(cardTable).append('<tr><td class="border-0 p-0 pb-2">' + review.rage + '</td><td class="border-0 p-0 pb-2">·' + review.rskin + '</td></tr>');
	        		 
	        		 var tableTr = document.createElement("tr");
	        		 
	        		 var tableTd = document.createElement("td");
	        		 $(tableTd).addClass('border-0 p-0 pb-2');
	        		 $(tableTd).attr("colspan", "2");
	        		 
	        		 for (var j = 0; j < review.rscore; j++) {
	        			 $(tableTd).append('<img class="mr-1" src="resources/img/아이콘/heart.svg">');
					 }
	        		 
	        		 for (var k = 0; k < (5 - review.rscore); k++) {
	        			 $(tableTd).append('<img class="mr-1" src="resources/img/아이콘/heart-none.svg">'); 
					 }
	        		 
	        		 $(cardContent).append('<input type="hidden" value="' + review.rnumber + '" id="reviewNumber"/>');
	        		 $(cardContent).append('<p style="position:absolute;bottom:0px;right:20px;font-size:calc(12px + 0.15vw);">' + review.rdate + '</p>');
	        		 $(cardContent).append(cardImage);
	        		 $(cardBody).append(cardTable);
	        		 $(tableTr).append(tableTd);
	        		 $(cardTable).append(tableTr);
	        		 $(cardContent).append(cardBody);
	        		 $(cardContent).append('<a type="button" data-toggle="modal" data-target="#reviewModal" class="stretched-link"></a>');
	        		 $(card).append(cardContent);
	        		         		 
	        		$('div#reviewPart').append(card);
	        								
				}
	        	        	
			},		
			
	        error: function(){
	            alert("로딩에 실패하였습니다.");
	        }		        
	        
	    });
		
	});
	
	$(window).scroll(function() {
		
		clearTimeout( timer ); 
		
		timer = setTimeout( scrollDone, 50 );

	});
	
	$('#modalContent').scroll(function() {
		
		clearTimeout( timer ); 
		
		timer = setTimeout( modalScrolDone, 50 );

	});

});

function scrollDone() {
	
	if ($(window).scrollTop() >= ($(document).height() - 400) - $(window).height()) {
		
		start += 2;
		end += 2;
		
		$.ajax({
	        url: "requestReview",
	        type: "GET",
	        data: { 
	        	"n" : "${detail.pnumber}", 
	        	"start" : start, 
	        	"end" : end,
	        	"gender" : gender,
	        	"age" : ages,
	        	"skin" : skins
	        	},
	        contentType: "application/json; charset=utf-8;",
            dataType: "json",
	        success: function(data) {
	        	
	        	for (var i = 0; i < data.item.length; i++) {
	        		
	        		var review = data.item[i];
	        		
	        		 var card = document.createElement("div");
	        		 $(card).addClass("col-12 col-lg-6 my-5");
	        		 $(card).attr("data-aos", "fade-up").attr("data-aos-duration", "500").attr("data-aos-offset", "-250");
	        		 $(card).attr("id", review.rnumber)
	        		 
	        		 var cardContent = document.createElement("div");
	        		 $(cardContent).addClass("media d-block d-lg-flex align-items-center reviewCard");
	        		 
	        		 var cardImage = document.createElement("div");
	        		 $(cardImage).addClass('item-wrapper d-flex justify-content-center align-items-center my-4 mx-lg-4 my-lg-0');
	        		 $(cardImage).css("width", "20vh").css("height", "20vh").css("overflow", "hidden");
	        		 $(cardImage).append('<img class="review-img d-block" src="' + review.src + '">');
	        		 
	        		 var cardBody = document.createElement("div");
	        		 $(cardBody).addClass('media-body d-block d-lg-inline-block ml-lg-5');
	        		 $(cardBody).append('<h5 class="mt-4 mb-4"><strong>' + review.rtitle + '</strong></h5>');
	        		 
	        		 var cardTable = document.createElement("table");
	        		 $(cardTable).addClass('table text-secondary');
	        		 $(cardTable).css("font-size", "calc(12px + 0.15vw)").css("width", "150px");
	        		 
	        		 if (review.rgender == '♂') {
	        			 $(cardTable).append('<tr><td class="border-0 p-0 pb-2" colspan="2">' + review.rid + '<span class="text-primary ml-2">' + review.rgender + '</span></td></tr>');
	 				} else {
	 					 $(cardTable).append('<tr><td class="border-0 p-0 pb-2" colspan="2">' + review.rid + '<span class="text-danger ml-2">' + review.rgender + '</span></td></tr>');
	 				}
	        		 
	        		 $(cardTable).append('<tr><td class="border-0 p-0 pb-2">' + review.rage + '</td><td class="border-0 p-0 pb-2">·' + review.rskin + '</td></tr>');
	        		 
	        		 var tableTr = document.createElement("tr");
	        		 
	        		 var tableTd = document.createElement("td");
	        		 $(tableTd).addClass('border-0 p-0 pb-2');
	        		 $(tableTd).attr("colspan", "2");
	        		 
	        		 for (var j = 0; j < review.rscore; j++) {
	        			 $(tableTd).append('<img class="mr-1" src="resources/img/아이콘/heart.svg">');
					 }
	        		 
	        		 for (var k = 0; k < (5 - review.rscore); k++) {
	        			 $(tableTd).append('<img class="mr-1" src="resources/img/아이콘/heart-none.svg">'); 
					 }
	        		 
	        		 $(cardContent).append('<input type="hidden" value="' + review.rnumber + '" id="reviewNumber"/>');
	        		 $(cardContent).append('<p style="position:absolute;bottom:0px;right:20px;font-size:calc(12px + 0.15vw);">' + review.rdate + '</p>');
	        		 $(cardContent).append(cardImage);
	        		 $(cardBody).append(cardTable);
	        		 $(tableTr).append(tableTd);
	        		 $(cardTable).append(tableTr);
	        		 $(cardContent).append(cardBody);
	        		 $(cardContent).append('<a type="button" data-toggle="modal" data-target="#reviewModal" class="stretched-link"></a>');
	        		 $(card).append(cardContent);
	        		         		 
	        		$('div#reviewPart').append(card);
	        								
				}
	        	        	
			},		
			
	        error: function(){
	            alert("로딩에 실패하였습니다.");
	        }		        
	        
	    });
	    
	}
}

function modalScrolDone() {
	
	if (($('#modalContent').scrollTop() + 100) >= ($('#modalContent').prop('scrollHeight') - $('#modalContent').height())) {
		
		resStart += 2;
		resEnd += 2;
		
		$.ajax({
	        url: "requestResponse",
	        type: "GET",
	        data: { "r" : $('input#rnumber').val() , "start" : resStart, "end" : resEnd },
	        contentType: "application/json; charset=utf-8;",
	        dataType: "json",
	                   
	        success: function(data) {
	        	
	    		for (var i = 0; i < data.list.length; i++) {
	    		
	    			var review = data.list[i];
	    			
	        		 var card = document.createElement("div");
	        		 $(card).addClass("col my-2");
	        		 $(card).attr('id', review.rnumber);
	        		 
	        		 var cardBody = document.createElement("div");
	        		 $(cardBody).addClass("card border-left-0 border-right-0");
	        		 
	        		 if (review.rgender == '♂') {
	        			 $(cardBody).append('<div class="card-header border-0 bg-white" style="font-size:calc(13px + 0.2vw);">'+review.rid+'<span class="text-primary ml-2">' + review.rgender + '</span></div>');
	    				 } else {
	    					 $(cardBody).append('<div class="card-header border-0 bg-white" style="font-size:calc(13px + 0.2vw);">'+review.rid+'<span class="text-danger ml-2">' + review.rgender + '</span></div>');
	    				 }
	        			
	        		 var cardContent = document.createElement("div");
	        		 $(cardContent).addClass("card-body");
	        		 $(cardContent).append('<blockquote class="blockquote mb-0"><p style="position:absolute;top:13px;right:20px;font-size:calc(12px + 0.15vw);">'+review.rdate+'</p><p style="font-size:calc(12px + 0.25vw);">'+review.rcontent+'</p></blockquote>');
	        		 
	        		 if (review.rid == "${member.id}") {
	        			 $(cardContent).append('<a class="delete-btn text-secondary float-right" id="'+review.rnumber+'"><small>삭제</small></a>');
					 }
	        		 
	        		 $(cardContent).append('<input type="hidden" value="'+review.rnumber+'" id="'+review.rnumber+'">')
	        		 
	        		 $(cardBody).append(cardContent);
	        		 $(card).append(cardBody);
	        		 $('div#responsePart').append(card);
	        		 
	    		}
				
			},		
			
	        error: function(){
	            alert("로딩에 실패하였습니다.");
	        }
			
	    });
	    	    
	}
	
}

</script>

<%@include file="./footer.jsp"%>