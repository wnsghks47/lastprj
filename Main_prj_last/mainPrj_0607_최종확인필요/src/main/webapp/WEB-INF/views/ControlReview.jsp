<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="./header.jsp"%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>

<style>
#wrap { background-color: white; }
#hi { font-size: calc(18px + 0.2vw); }
.card { transition: transform .3s; }
.card:hover { transform: scale(1.03); }
.modal-body img{ max-width: 100%; }
.page-link { color: #0f4c81; }
.page-item.active .page-link { color: #fff; background-color: #0f4c81; border-color: #0f4c81; }
</style>

<div style="height: 150px;"></div>
<div class="container-fluid " id="wrap">
	<div class="row justify-content-center">
		<div class="col-10 mt-5">
			<div class="row justify-content-end">
				
	            <nav class="navbar position-absolute" style="z-index:3;">
		            <ul class="navbar-nav">
		                <li class="nav-item dropdown">
		                    <a class="btn btn-light d-flex justify-content-between align-items-center dropdown-toggle" role="button" id="selectList" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="width:160px;">
		                       리뷰 관리
		                    </a>
		                    <div class="dropdown-menu animate slideIn" aria-labelledby="selectList">
		                        <a class="dropdown-item" href="ControlMember">회원 관리</a>
		                        <a class="dropdown-item" href="ControlReview">리뷰 관리</a>
		                        <a class="dropdown-item" href="">문의게시판 관리</a>
		                        <a class="dropdown-item" href="ControlEvent">이벤트 관리</a>
		                        <a class="dropdown-item" href="ControlData">데이터베이스 관리</a>
		                    </div>
		                </li>
		            </ul>
		        </nav>    
            	
				<section class="col-md-12">
					<div class="row bodytop_write">
						<div class="col">
							<span id="hi">안녕하세요, <b>${member.id }</b> 님
							</span> <a style="font-size: calc(12px + 0.2vw); cursor: pointer;"
								href="logout"> (로그아웃하기)</a> <br>
							<br> <span style="font-size: calc(12px + 0.15vw);">
								ㆍ관리자페이지에서는 전반적인 <span style="color: #0f4c81">홈페이지 관리</span>가
								가능하고, <span style="color: #0f4c81">회원정보 및 상품정보, 리뷰정보</span>를 변경할
								수 있습니다.
							</span> <br>
							<br>
							<br>
							<h2 style="letter-spacing: 2px; font-size: calc(25px + 0.5vw);">리뷰
								관리</h2>
							<hr style="border: 1px solid darkgrey;">
						</div>
					</div>
					<div class="col">
						<form class="d-inline-block my-3">
							<div class="d-inline-block">
								<label class="mx-2" for="from">시작일</label> <input type="date" id="from"/> 
							</div>	
							<div class="d-inline-block">
								<label class="mx-2" for="to">종료일</label> <input type="date" id="to"/> 
							</div>
							<input type="submit" value="검색" id="search"/>
						</form>
						<div class="float-right">
							<div class="custom-control custom-radio custom-control-inline">
							  <input type="radio" id="gender" name="topic" class="custom-control-input" value="1" checked>
							  <label class="custom-control-label" for="gender">성별</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
							  <input type="radio" id="age" name="topic" class="custom-control-input" value="2">
							  <label class="custom-control-label" for="age">연령대</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
							  <input type="radio" id="skin" name="topic" class="custom-control-input" value="3">
							  <label class="custom-control-label" for="skin">피부타입</label>
							</div>
						</div>
						<div class="row">
							<div class="canvaswrap col-6">
								<canvas class="my-5" id="myChart1" style="display: block;"></canvas>
								<canvas class="my-5" id="myChart2" style="display: none;"></canvas>
								<canvas class="my-5" id="myChart3" style="display: none;"></canvas>
							</div>
							<div class="canvaswrap col-6">
								<canvas class="my-5" id="myChart11" style="display: block"></canvas>
								<canvas class="my-5" id="myChart22" style="display: none"></canvas>
								<canvas class="my-5" id="myChart33" style="display: none"></canvas>
							</div>
						</div>
						<br /><hr /><br />
						<div class="row">
							<div class="col-12 my-3"><button type="button" class="btn btn-danger" id="checkDelete">선택삭제</button></div>
							<div class="col-12 mb-5">
								<table class="table table-striped">
									<thead>
									    <tr>
									      	<th><input type="checkbox" id="allCheck"></th>
									      	<th scope="col">Review No</th>
									      	<th scope="col">Product No</th>
									      	<th scope="col">작성자</th>
									      	<th scope="col">제목</th>
									      	<th scope="col">작성일</th>
									      	<th scope="col">신고 수</th>
									    </tr>
									  </thead>
									  <tbody id="tablePart"></tbody>
								</table>
							</div>
							<div class="col-12 mb-5">
								<nav aria-label="...">
								  <ul class="pagination justify-content-center" id="pagePart"></ul>
								</nav>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<div class="modal fade" id="reviewContent" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-scrollable modal-lg" role="document">
	    <div class="modal-content">
	      <div class="modal-header d-block">
	      	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      	<h6>Review No.&nbsp;<span class="d-inline-block" id="reviewNumber"></span></h6>
	      	<h6>Product No.&nbsp;<span class="d-inline-block" id="productNumber"></span></h6>
	        <h5 class="modal-title mt-4" id="exampleModalCenterTitle"></h5>
	      </div>
	      <div class="modal-body"></div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-danger" id="delete">삭제</button>
	      </div>
	    </div>
	  </div>
	</div>
</div>
<script>
	$(document).ready(function() {
		
		var myChart1;
		var myChart2;
		var myChart3;
		var myChart11;
		var myChart22;
		var myChart33;
		
		var ctx1 = document.getElementById("myChart1").getContext('2d');
		var ctx2 = document.getElementById("myChart2").getContext('2d');
		var ctx3 = document.getElementById("myChart3").getContext('2d');
		var ctx11 = document.getElementById("myChart11").getContext('2d');
		var ctx22 = document.getElementById("myChart22").getContext('2d');
		var ctx33 = document.getElementById("myChart33").getContext('2d');     
		
		/* 처음 화면 로딩 시 데이터 받아오는 부분 */
		
		$.ajax({
			url : "reviewChart",
			type : "GET",
			data : {
				"from" : "${fromDate}",
				"to" : "${toDate}"
			},
			contentType : "application/json; charset=utf-8;",
			dataType : "json",
			success : function(data) {
				
				myChart1 = new Chart(ctx1, {
					type : 'line',
					data : {
						labels : data.cdate,
						datasets : [ {
							label : '일별 전체 리뷰 수',
							data : data.cnt0
						}, {
							label : '일별 여성 리뷰 수',
							data : data.cnt1,
							backgroundColor: 'rgba(255,179,186,0.5)',
							borderColor: 'rgba(255,179,186,0.8)'
						}, {
							label : '일별 남성 리뷰 수',
							data : data.cnt2,
							backgroundColor: 'rgba(186,225,255,0.5)',
							borderColor: 'rgba(186,225,255,0.8)'
						} ]
					}
				
				});
			 	
				myChart11 = new Chart(ctx11, {
					type : 'doughnut',
					data : { 
						datasets : [{ 
							data : data.pieGender,
							backgroundColor: ["rgb(255,179,186)","rgb(186,225,255)"],
							borderColor: ["rgb(255,179,186)","rgb(186,225,255)"]
						}],
						
						labels : [ '여성', '남성' ]
					}
				
				});
				
				myChart2 = new Chart(ctx2, {
					type : 'line',
					data : {
						labels : data.cdate,
						datasets : [ {
							label : '일별 전체 리뷰 수',
							data : data.cnt0
						}, {
							label : '일별 10대 리뷰 수',
							data : data.cnt3,
							backgroundColor: 'rgba(255,179,186,0.5)',
							borderColor: 'rgba(255,179,186,0.8)'
						}, {
							label : '일별 20대 리뷰 수',
							data : data.cnt4,
							backgroundColor: 'rgba(255,223,186,0.5)',
							borderColor: 'rgba(255,223,186,0.8)'
						}, {
							label : '일별 30대 리뷰 수',
							data : data.cnt5,
							backgroundColor: 'rgba(186,255,201,0.5)',
							borderColor: 'rgba(186,255,201,0.8)'
						}, {
							label : '일별 40대 ↑ 리뷰 수',
							data : data.cnt6,
							backgroundColor: 'rgba(186,225,255,0.5)',
							borderColor: 'rgba(186,225,255,0.8)'
						} ]
					}
				
				});
				
				myChart22 = new Chart(ctx22, {
					type : 'doughnut',
					data : { 
						datasets : [{ 
							data : data.pieAge,
							backgroundColor: ["rgb(255,179,186)",'rgb(255,223,186)','rgb(186,255,201)','rgb(186,225,255)'],
							borderColor: ["rgb(255,179,186)",'rgb(255,223,186)','rgb(186,255,201)','rgb(186,225,255)']
						}],
						
						labels : [ '10대', '20대', '30대', '40대 ↑' ]
					}
				
				});
				
				myChart3 = new Chart(ctx3, {
					type : 'line',
					data : {
						labels : data.cdate,
						datasets : [ {
							label : '일별 전체 리뷰 수',
							data : data.cnt0
						}, {
							label : '일별 건성 리뷰 수',
							data : data.cnt7,
							backgroundColor: 'rgba(255,179,186,0.5)',
							borderColor: 'rgba(255,179,186,0.8)'
						}, {
							label : '일별 지성 리뷰 수',
							data : data.cnt8,
							backgroundColor: 'rgba(255,223,186,0.5)',
							borderColor: 'rgba(255,223,186,0.8)'
						}, {
							label : '일별 중성 리뷰 수',
							data : data.cnt9,
							backgroundColor: 'rgba(255,255,186,0.5)',
							borderColor: 'rgba(255,255,186,0.8)'
						}, {
							label : '일별 복합성 리뷰 수',
							data : data.cnt10,
							backgroundColor: 'rgba(186,255,201,0.5)',
							borderColor: 'rgba(186,255,201,0.8)'
						}, {
							label : '일별 민감성 리뷰 수',
							data : data.cnt11,
							backgroundColor: 'rgba(186,225,255,0.5)',
							borderColor: 'rgba(186,225,255,0.8)'
						} ]
					}
				
				});
				
				myChart33 = new Chart(ctx33, {
					type : 'doughnut',
					data : { 
						datasets : [{ 
							data : [ data.pieSkin[0], data.pieSkin[4], data.pieSkin[3], data.pieSkin[2], data.pieSkin[1] ],
							backgroundColor: ["rgb(255,179,186)",'rgb(255,223,186)','rgb(255,255,186)','rgb(186,255,201)','rgb(186,225,255)'],
							borderColor: ["rgb(255,179,186)",'rgb(255,223,186)','rgb(255,255,186)','rgb(186,255,201)','rgb(186,225,255)']
						}],
						
						labels : [ '건성', '지성', '중성', '복합성', '민감성' ],
						options: {
					        legend: {
					            display: true,
					            labels: {
					                padding: 10
					            }
					        }
					    }
					}
				
				});

			},
			
			error: function(){
	            alert("로딩에 실패하였습니다.");
	        }

		});
		
		/* 처음 화면 로딩 때 리뷰 리스트 받아오는 부분 */
		
		$.ajax({
			url : "reviewChartList",
			type : "GET",
			data : {
				"from" : "${fromDate}",
				"to" : "${toDate}",
				"start" : "1",
				"end" : "100"
			},
			contentType : "application/json; charset=utf-8;",
			dataType : "json",
			success : function(data) {
				
				var reviewList = data.array;
				
				for (var i = 0; i < reviewList.length; i++) {
					
					$('tbody#tablePart').append('<tr id="tr'+reviewList[i].rnumber+'"> <td><input type="checkbox" name="deleteList"></td> <td>'+reviewList[i].rnumber+'</td> <td>'+reviewList[i].pnumber+'</td><td>'+reviewList[i].rid+'</td><td><a class="rtitle" data-toggle="modal" data-target="#reviewContent">'+reviewList[i].rtitle+'</a></td><td>'+reviewList[i].rdate+'</td><td>'+reviewList[i].rdec+'</td></tr>');
					
				}
				
				var endPage = parseInt(data.dataCount) / 100;
				
				if (endPage < 10) {
										
					$('ul#pagePart').append('<li class="page-item active"><a class="page-link" id="1">1</a></li>');
					
					for (var i = 1; i < endPage; i++) {
						
						$('ul#pagePart').append('<li class="page-item"><a class="page-link" id="'+(i+1)+'">'+(i+1)+'</a></li>');
						
					}
					
				} else {
					
					endPage = 10;
					
					$('ul#pagePart').append('<li class="page-item active"><a class="page-link" id="1">1</a></li>');
					
					for (var i = 1; i < endPage; i++) {
						
						$('ul#pagePart').append('<li class="page-item"><a class="page-link" id="'+(i+1)+'">'+(i+1)+'</a></li>');
						
					}
					
					$('ul#pagePart').append('<li class="page-item">  <a class="page-link" id="next" aria-label="Next"> <span aria-hidden="true">&raquo;</span> </a> </li>');
					
				}
				
			},
			
			error: function(){
	            alert("로딩에 실패하였습니다.");
	        }
			
		});
		
		/* 날짜 범위를 지정하고 검색을 눌렀을 때 데이터 받아 오는 부분 */
		
		$('input#search').on('click', function() {
			
			event.preventDefault();
			
			$.ajax({
				url : "reviewChart",
				type : "GET",
				data : {
					"from" : $('input#from').val(),
					"to" : $('input#to').val()
				},
				contentType : "application/json; charset=utf-8;",
				dataType : "json",
				success : function(data) {
					
					myChart1.destroy();
					myChart2.destroy();
					myChart3.destroy();
					myChart11.destroy();
					myChart22.destroy();
					myChart33.destroy();
					
					myChart1 = new Chart(ctx1, {
						type : 'line',
						data : {
							labels : data.cdate,
							datasets : [ {
								label : '일별 전체 리뷰 수',
								data : data.cnt0
							}, {
								label : '일별 여성 리뷰 수',
								data : data.cnt1,
								backgroundColor: 'rgba(255,179,186,0.5)',
								borderColor: 'rgba(255,179,186,0.8)'
							}, {
								label : '일별 남성 리뷰 수',
								data : data.cnt2,
								backgroundColor: 'rgba(186,225,255,0.5)',
								borderColor: 'rgba(186,225,255,0.8)'
							} ]
						}
					});
					
					myChart11 = new Chart(ctx11, {
						type : 'doughnut',
						data : { 
							datasets : [{ 
								data : data.pieGender,
								backgroundColor: ["rgb(255,179,186)","rgb(186,225,255)"],
								borderColor: ["rgb(255,179,186)","rgb(186,225,255)"]
							}],
							
							labels : [ '여성', '남성' ]
						}
					
					});
					
					myChart2 = new Chart(ctx2, {
						type : 'line',
						data : {
							labels : data.cdate,
							datasets : [ {
								label : '일별 전체 리뷰 수',
								data : data.cnt0
							}, {
								label : '일별 10대 리뷰 수',
								data : data.cnt3,
								backgroundColor: 'rgba(255,179,186,0.5)',
								borderColor: 'rgba(255,179,186,0.8)'
							}, {
								label : '일별 20대 리뷰 수',
								data : data.cnt4,
								backgroundColor: 'rgba(255,223,186,0.5)',
								borderColor: 'rgba(255,223,186,0.8)'
							}, {
								label : '일별 30대 리뷰 수',
								data : data.cnt5,
								backgroundColor: 'rgba(186,255,201,0.5)',
								borderColor: 'rgba(186,255,201,0.8)'
							}, {
								label : '일별 40대 ↑ 리뷰 수',
								data : data.cnt6,
								backgroundColor: 'rgba(186,225,255,0.5)',
								borderColor: 'rgba(186,225,255,0.8)'
							} ]
						}
					});
					
					myChart22 = new Chart(ctx22, {
						type : 'doughnut',
						data : { 
							datasets : [{ 
								data : data.pieAge,
								backgroundColor: ["rgb(255,179,186)",'rgb(255,223,186)','rgb(186,255,201)','rgb(186,225,255)'],
								borderColor: ["rgb(255,179,186)",'rgb(255,223,186)','rgb(186,255,201)','rgb(186,225,255)']
							}],
							
							labels : [ '10대', '20대', '30대', '40대 ↑' ]
						}
					
					});
					
					myChart3 = new Chart(ctx3, {
						type : 'line',
						data : {
							labels : data.cdate,
							datasets : [ {
								label : '일별 전체 리뷰 수',
								data : data.cnt0
							}, {
								label : '일별 건성 리뷰 수',
								data : data.cnt7,
								backgroundColor: 'rgba(255,179,186,0.5)',
								borderColor: 'rgba(255,179,186,0.8)'
							}, {
								label : '일별 지성 리뷰 수',
								data : data.cnt8,
								backgroundColor: 'rgba(255,223,186,0.5)',
								borderColor: 'rgba(255,223,186,0.8)'
							}, {
								label : '일별 중성 리뷰 수',
								data : data.cnt9,
								backgroundColor: 'rgba(255,255,186,0.5)',
								borderColor: 'rgba(255,255,186,0.8)'
							}, {
								label : '일별 복합성 리뷰 수',
								data : data.cnt10,
								backgroundColor: 'rgba(186,255,201,0.5)',
								borderColor: 'rgba(186,255,201,0.8)'
							}, {
								label : '일별 민감성 리뷰 수',
								data : data.cnt11,
								backgroundColor: 'rgba(186,225,255,0.5)',
								borderColor: 'rgba(186,225,255,0.8)'
							} ]
						}
					
					});
					
					myChart33 = new Chart(ctx33, {
						type : 'doughnut',
						data : { 
							datasets : [{ 
								data : [ data.pieSkin[0], data.pieSkin[4], data.pieSkin[3], data.pieSkin[2], data.pieSkin[1] ],
								backgroundColor: ["rgb(255,179,186)",'rgb(255,223,186)','rgb(255,255,186)','rgb(186,255,201)','rgb(186,225,255)'],
								borderColor: ["rgb(255,179,186)",'rgb(255,223,186)','rgb(255,255,186)','rgb(186,255,201)','rgb(186,225,255)']
							}],
							
							labels : [ '건성', '지성', '중성', '복합성', '민감성' ]
						}
					
					});
					
					var radioVal = $('input[name="topic"]:checked').val();
					
			         $("#myChart1").css("display", "none");
			         $("#myChart2").css("display", "none");
			         $("#myChart3").css("display", "none");
			         $("#myChart11").css("display", "none");
			         $("#myChart22").css("display", "none");
			         $("#myChart33").css("display", "none");
			         $("#myChart"+radioVal).css("display", "block");
			         $("#myChart"+radioVal+radioVal).css("display", "block");
				
				},
				
				error: function(){
		            alert("로딩에 실패하였습니다.");
		        }
				
			});
			
			/* 검색 눌렀을 때 리뷰 리스트 받아오는 부분 */
			
			$.ajax({
				url : "reviewChartList",
				type : "GET",
				data : {
					"from" : $('input#from').val(),
					"to" : $('input#to').val(),
					"start" : "1",
					"end" : "100"
				},
				contentType : "application/json; charset=utf-8;",
				dataType : "json",
				success : function(data) {
					
					$('tbody#tablePart').empty();
					$('ul#pagePart').empty();
					
					var reviewList = data.array;
					
					for (var i = 0; i < reviewList.length; i++) {
						
						$('tbody#tablePart').append('<tr id="tr'+reviewList[i].rnumber+'"><td><input type="checkbox" name="deleteList"></td><td>'+reviewList[i].rnumber+'</td><td>'+reviewList[i].pnumber+'</td><td>'+reviewList[i].rid+'</td><td><a class="rtitle" data-toggle="modal" data-target="#reviewContent">'+reviewList[i].rtitle+'</a></td><td>'+reviewList[i].rdate+'</td><td>'+reviewList[i].rdec+'</td></tr>');
						
					}
					
					var endPage = parseInt(data.dataCount) / 100;
					
					if (endPage < 10) {
											
						$('ul#pagePart').append('<li class="page-item active"><a class="page-link" id="1">1</a></li>');
						
						for (var i = 1; i < endPage; i++) {
							
							$('ul#pagePart').append('<li class="page-item"><a class="page-link" id="'+(i+1)+'">'+(i+1)+'</a></li>');
							
						}
						
					} else {
						
						endPage = 10;
						
						$('ul#pagePart').append('<li class="page-item active"><a class="page-link" id="1">1</a></li>');
						
						for (var i = 1; i < endPage; i++) {
							
							$('ul#pagePart').append('<li class="page-item"><a class="page-link" id="'+(i+1)+'">'+(i+1)+'</a></li>');
							
						}
						
						$('ul#pagePart').append('<li class="page-item">  <a class="page-link" id="next" aria-label="Next"> <span aria-hidden="true">&raquo;</span> </a> </li>');
						
					}
									
				},
				
				error: function(){
		            alert("로딩에 실패하였습니다.");
		        }
				
			});
			
		});
		
		/* 차트를 라디오 버튼 주제에 맞게 보여주는 부분 */
		
		$('input[name="topic"]').click(function () {
			
	         var radioVal = $('input[name="topic"]:checked').val();
	         
	         $("#myChart1").css("display", "none");
	         $("#myChart2").css("display", "none");
	         $("#myChart3").css("display", "none");
	         $("#myChart11").css("display", "none");
	         $("#myChart22").css("display", "none");
	         $("#myChart33").css("display", "none");
	         $("#myChart"+radioVal).css("display", "block");
	         $("#myChart"+radioVal+radioVal).css("display", "block");
	         	       
		});
		
		/* 밑에 페이지네이션 부분을 눌렀을 때 해당 페이지 내용을 가져오는 부분 */
		
		$(document).on('click', '.page-link', function() {
			
			if ($(this).attr('id') == 'prev') {
				
				var activePage = $('li.active').children().attr('id');
				
				var startPage = Math.floor((parseInt(activePage)-1)/10) * 10 + 1 - 10;
				
				if (startPage < 0) {
					startPage = 1;
				}
				
				var endPage = startPage + 10 - 1;
						
				var from = $('input#from').val();
				var to = $('input#to').val();
				var end = startPage * 100;
				var start = end - 99;
				
				if( from == "" || from == null || from == undefined || ( from != null && typeof from == "object" && !Object.keys(from).length ) ) { 
					
					from = "${fromDate}";
					to = "${toDate}";
					
				} else {}
				
				$.ajax({
					url : "reviewChartList",
					type : "GET",
					data : {
						"from" : from,
						"to" : to,
						"start" : start,
						"end" : end
					},
					contentType : "application/json; charset=utf-8;",
					dataType : "json",
					success : function(data) {
						
						$('tbody#tablePart').empty();
						$('ul#pagePart').empty();
						
						var reviewList = data.array;
						
						for (var i = 0; i < reviewList.length; i++) {
							
							$('tbody#tablePart').append('<tr id="tr'+reviewList[i].rnumber+'"><td><input type="checkbox" name="deleteList"></td><td>'+reviewList[i].rnumber+'</td><td>'+reviewList[i].pnumber+'</td><td>'+reviewList[i].rid+'</td><td><a class="rtitle" data-toggle="modal" data-target="#reviewContent">'+reviewList[i].rtitle+'</a></td><td>'+reviewList[i].rdate+'</td><td>'+reviewList[i].rdec+'</td></tr>');
							
						}
						
						if (startPage == 1) {
							
							$('ul#pagePart').append('<li class="page-item active"><a class="page-link" id="'+startPage+'">'+startPage+'</a></li>');
							
							for (var i = startPage; i < endPage; i++) {
								
								$('ul#pagePart').append('<li class="page-item"><a class="page-link" id="'+(i+1)+'">'+(i+1)+'</a></li>');
								
							}
							
							$('ul#pagePart').append('<li class="page-item">  <a class="page-link" id="next" aria-label="Next"> <span aria-hidden="true">&raquo;</span> </a> </li>');
							
						} else {
							
							$('ul#pagePart').append('<li class="page-item"> <a class="page-link" id="prev" aria-label="Previous"> <span aria-hidden="true">&laquo;</span> </a>  </li>');
							$('ul#pagePart').append('<li class="page-item active"><a class="page-link" id="'+startPage+'">'+startPage+'</a></li>');
							
							for (var i = startPage; i < endPage; i++) {
								
								$('ul#pagePart').append('<li class="page-item"><a class="page-link" id="'+(i+1)+'">'+(i+1)+'</a></li>');
								
							}
							
							$('ul#pagePart').append('<li class="page-item">  <a class="page-link" id="next" aria-label="Next"> <span aria-hidden="true">&raquo;</span> </a> </li>');
						}					
						
					},
					
					error: function(){
			            alert("로딩에 실패하였습니다.");
			        }
					
				});
				
				$('.page-link').closest('li').removeClass('active');
				$('li#'+startPage).addClass('active');
					
				
			} else if ($(this).attr('id') == 'next') {
				
				var activePage = $('li.active').children().attr('id');
				
				var startPage = Math.floor((parseInt(activePage)-1)/10) * 10 + 1 + 10;
				var endPage = startPage + 9;
				
				var from = $('input#from').val();
				var to = $('input#to').val();
				var end = startPage * 100;
				var start = end - 99;
				
				if( from == "" || from == null || from == undefined || ( from != null && typeof from == "object" && !Object.keys(from).length ) ) { 
					
					from = "${fromDate}";
					to = "${toDate}";
					
				} else {}
				
				$.ajax({
					url : "reviewChartList",
					type : "GET",
					data : {
						"from" : from,
						"to" : to,
						"start" : start,
						"end" : end
					},
					contentType : "application/json; charset=utf-8;",
					dataType : "json",
					success : function(data) {
						
						$('tbody#tablePart').empty();
						$('ul#pagePart').empty();
						
						var reviewList = data.array;
						
						for (var i = 0; i < reviewList.length; i++) {
							
							$('tbody#tablePart').append('<tr id="tr'+reviewList[i].rnumber+'"><td><input type="checkbox" name="deleteList"></td><td>'+reviewList[i].rnumber+'</td><td>'+reviewList[i].pnumber+'</td><td>'+reviewList[i].rid+'</td><td><a class="rtitle" data-toggle="modal" data-target="#reviewContent">'+reviewList[i].rtitle+'</a></td><td>'+reviewList[i].rdate+'</td><td>'+reviewList[i].rdec+'</td></tr>');
							
						}
						
						if (endPage > (data.dataCount / 100)) {
							
							endPage = (data.dataCount / 100);
							
							$('ul#pagePart').append('<li class="page-item"> <a class="page-link" id="prev" aria-label="Previous"> <span aria-hidden="true">&laquo;</span> </a>  </li>');
							$('ul#pagePart').append('<li class="page-item active"><a class="page-link" id="'+startPage+'">'+startPage+'</a></li>');
							
							for (var i = startPage; i < endPage; i++) {
								
								$('ul#pagePart').append('<li class="page-item"><a class="page-link" id="'+(i+1)+'">'+(i+1)+'</a></li>');
								
							}
							
						} else {
						
						$('ul#pagePart').append('<li class="page-item"> <a class="page-link" id="prev" aria-label="Previous"> <span aria-hidden="true">&laquo;</span> </a>  </li>');
						$('ul#pagePart').append('<li class="page-item active"><a class="page-link" id="'+startPage+'">'+startPage+'</a></li>');
						
						for (var i = startPage; i < endPage; i++) {
							
							$('ul#pagePart').append('<li class="page-item"><a class="page-link" id="'+(i+1)+'">'+(i+1)+'</a></li>');
							
						}
						
						$('ul#pagePart').append('<li class="page-item">  <a class="page-link" id="next" aria-label="Next"> <span aria-hidden="true">&raquo;</span> </a> </li>');
						
						}
					},
					
					error: function(){
			            alert("로딩에 실패하였습니다.");
			        }
					
				});
				
				$('.page-link').closest('li').removeClass('active');
				$('li#'+startPage).addClass('active');
				
			} else {
			
			var from = $('input#from').val();
			var to = $('input#to').val();
			var end = parseInt($(this).attr('id')) * 100;
			var start = parseInt(end) - 99;
			
			if( from == "" || from == null || from == undefined || ( from != null && typeof from == "object" && !Object.keys(from).length ) ) { 
				
				from = "${fromDate}";
				to = "${toDate}";
				
			} else {}
			
			$.ajax({
				url : "reviewChartList",
				type : "GET",
				data : {
					"from" : from,
					"to" : to,
					"start" : start,
					"end" : end
				},
				contentType : "application/json; charset=utf-8;",
				dataType : "json",
				success : function(data) {
					
					$('tbody#tablePart').empty();
					
					var reviewList = data.array;
					
					for (var i = 0; i < reviewList.length; i++) {
						
						$('tbody#tablePart').append('<tr id="tr'+reviewList[i].rnumber+'"><td><input type="checkbox" name="deleteList"></td><td>'+reviewList[i].rnumber+'</td><td>'+reviewList[i].pnumber+'</td><td>'+reviewList[i].rid+'</td><td><a class="rtitle" data-toggle="modal" data-target="#reviewContent">'+reviewList[i].rtitle+'</a></td><td>'+reviewList[i].rdate+'</td><td>'+reviewList[i].rdec+'</td></tr>');
						
					}
					
				},
				
				error: function(){
		            alert("로딩에 실패하였습니다.");
		        }
				
			});
			
			$('.page-link').closest('li').removeClass('active');
			$(this).closest('li').addClass('active');
			
			}
			
		});
	
		/* 리뷰 리스트에서 각 행을 눌렀을 때 내용이 나오게 하는 부분 */
		
		$(document).on('click', '.rtitle', function() {
			
			var rnumber = $(this).closest('td').prev().prev().prev().text();
			
			$.ajax({
		        url: "requestObject",
		        type: "GET",
		        data: { "r" : rnumber },
		        contentType: "application/json; charset=utf-8;",
		        dataType: "json",
		                   
		        success: function(data) {
		        	
		        	$('#reviewNumber').empty();
		        	$('#productNumber').empty();
		        	$('#exampleModalCenterTitle').empty();
		        	$('.modal-body').empty();
		        	
		        	$('#reviewNumber').text(data.detail.rnumber);
		        	$('#productNumber').text(data.detail.pnumber);
		        	$('#exampleModalCenterTitle').text(data.detail.rtitle);
		        	$('.modal-body').append(data.detail.rcontent);
		        	
		        },
		        
		        error: function(){
		            alert("로딩에 실패하였습니다.");
		        }
			});
			
		});
		
		/* 리뷰 내용 창에서 삭제 버튼 누르면 삭제 시키는 부분 */
		
		$(document).on('click', '#delete', function() {
			
			var rnumber = $('#reviewNumber').text();
			var pnumber = $('#productNumber').text();
			
			$.ajax({
				url: "deleteReview",
				type: "get",
				data: { "r" : rnumber , "n" : pnumber },
				contentType: "application/json; charset=utf-8;",
				
		        success: function(data) {
		        	
		        	alert('리뷰가 삭제되었습니다.');
		        	
		        	$('button.close').trigger('click');
		        	$('#tr'+rnumber).remove();
		        	
		        },
		        
		        error: function(){
		            alert("로딩에 실패하였습니다.");
		        }
				
			});
			
		});
		
		/* 전체 체크박스 선택하게 해주는 부분 */
		
		$(document).on('click', '#allCheck', function() {
			
			if ($(this).is(':checked')) {
				
				$('input[name=deleteList]').prop('checked', true);
				
			} else {
				
				$('input[name=deleteList]').prop('checked', false);
				
			}
			
		});
		
		/* 선택삭제 버튼 클릭 시 선택한 리뷰 일괄 삭제 */
		
		$(document).on('click', '#checkDelete', function() {
			
			var con = confirm('체크된 리뷰 목록을 삭제하시겠습니까?');
			
			if (con == true) {
				
				var rnumberList = [];
				
				$('input[name=deleteList]:checked').each(function(i){   //jQuery로 for문 돌면서 check 된값 배열에 담는다
				   
					rnumberList.push($(this).closest('td').next().text());
				
				});
				
				
				var pnumberList = [];
				
				$('input[name=deleteList]:checked').each(function(i){   //jQuery로 for문 돌면서 check 된값 배열에 담는다
				   
					pnumberList.push($(this).closest('td').next().next().text());
				
				});
		
				
				for (var i = 0; i < rnumberList.length; i++) {
					
					var rnumber = rnumberList[i];
					var pnumber = pnumberList[i];
 					
					$.ajax({
						url: "deleteReview",
						type: "get",
						data: { "r" : rnumber , "n" : pnumber },
						contentType: "application/json; charset=utf-8;",
						async: false,
						
				        success: function(data) {
				        	
				        	$('#tr'+rnumber).remove();
				        	
				        },
				        
				        error: function(){
				            alert("로딩에 실패하였습니다.");
				        }
				        
					});
					
				}				
				
			} else {}
			
		});
		
	});
</script>
<%@include file="./footer.jsp"%>