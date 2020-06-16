<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="./header.jsp"%>

<style>
.card { transition: transform .3s; }
.card:hover { transform: scale(1.03); }
.review-img { max-width: calc(200px + 5vw); height: auto; }
.media { transition: transform .3s; }
.media:hover { transform: scale(1.03); }
div#rcontent>p>img{ max-width: 100%; height: auto; }
#wrap { background-color: white; }
#sidelist:hover { color: white; background-color:#0f4c81; }
#hi { font-size: calc(18px + 0.2vw); }
aside { width: 100%; height: 100%; margin-top: 2rem; }
section { margin-bottom: 7rem; max-width: 1200px; margin-top: 3rem; }
</style>

<div style="height: calc(100px + 2.5vw);"></div>
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
				<section class="col-md-9">
					<div class="row bodytop_write">
						<div class="col">
     						<span id="hi">안녕하세요, <b>${member.id }</b> 님</span><a href="logout"> (로그아웃하기)</a><br><br>
							<span style="font-size: calc(12px + 0.15vw);">
							ㆍ마이페이지에서 <span style="color:#0f4c81">리뷰리스트</span>를 조회할 수 있고, 
							<span style="color:#0f4c81">회원정보</span>를 변경할 수 있습니다.
							</span>
							<br><br><br>
							<h2 style="letter-spacing:2px; font-size: calc(25px + 0.5vw);">My Review</h2>
							<hr style="border: 1px solid darkgrey;">
						</div>
					</div>

					<div class="card-group row" id="cardgroup">
						<c:if test="${list[0].rnumber == null }">
							<div class="col">
								<img class="d-block my-5 mx-auto" src="resources/img/아이콘/frown.svg" style="width: calc(25px + 5vw);"/>
								<p class="h3 my-3" style="text-align: center;font-size: calc(20px + 0.5vw);">작성하신 리뷰가 없습니다.</p>
							</div>
						</c:if>						
						<c:if test="${list[0].rnumber != null }">
						<c:forEach items="${list}" var="review">
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
						</c:if>
					</div>
				</section>
			</div>
			
			<!-- review modal start -->
				
			<div class="modal fade" id="reviewModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
				<div class="modal-dialog modal-dialog-scrollable modal-xl" role="document">
					<div class="modal-content">
						<input type="hidden" value="" id="rnumber"/>
						<input type="hidden" value="" id="rstep"/>
						<input type="hidden" value="" id="rindent"/>
						<input type="hidden" value="" id="pnumber"/>
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
							<hr class="my-lg-5" />
						</div>
																			
						<div class="my-5">
						
							<c:if test="${member == null }">
							<div class="form-group mb-5 pl-4">
								<div>
									<span class="h5" style="font-size: calc(15px + 0.25vw);">댓글 작성하기</span>
									<p class="my-3" style="font-size: calc(12px + 0.15vw);">
										<a href="Login">로그인</a>을 해야 댓글을 남길 수 있습니다.
									</p>
								</div>
							</div>
							</c:if>
							
							<c:if test="${member != null }">
							<div class="form-group mb-5 pb-5">
								<form name="responseForm" autocomplete="off">
									<label for="title">
										<span class="h5" style="font-size:calc(15px + 0.25vw);">댓글 쓰기</span>
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
</div>

<script>
	$(document).ready(function() {
		
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
					$('input#pnumber').val(data.detail.pnumber);

					
					if (data.detail.rid == "${member.id}") {
						$('input#modify').attr('onclick', "location.href='ModifyView?r=" + data.detail.rnumber + "&n=" + $('input#pnumber').val() + "'")
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
				data: { "r" : rnumber , "n" : $('input#pnumber').val() },
				contentType: "application/json; charset=utf-8;",
				
		        success: function(data) {
		        	alert("삭제 성공")
		        	
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
		        	"pnumber" : $('input#pnumber').val(),
		        	"start" : "1",
		        	"end" : "4"
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
			
		})
		
	});

	
	var timer = null;
	var resStart = 1;
	var resEnd = 2;

	$(document).ready(function () {
		
		$('#modalContent').scroll(function() {
			
			clearTimeout( timer ); 
			
			timer = setTimeout( modalScrolDone, 50 );

		});

	});

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