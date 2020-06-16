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
		                       이벤트 관리
		                    </a>
		                    <div class="dropdown-menu animate slideIn" aria-labelledby="selectList">
		                        <a class="dropdown-item" href="ControlMember">회원 관리</a>
		                        <a class="dropdown-item" href="ControlReview">리뷰 관리</a>
		                        <a class="dropdown-item" href="ControlQna">문의게시판 관리</a>
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
								ㆍ관리자페이지에서는 전반적인 <span style="color: #0f4c81">홈페이지 관리</span>가 가능하고, <span style="color: #0f4c81">회원정보 및 상품정보, 리뷰정보</span>를 변경할 수 있습니다.
							</span> <br>
							<br>
							<br>
							<h2 style="letter-spacing: 2px; font-size: calc(25px + 0.5vw);">이벤트 관리</h2>
							<hr style="border: 1px solid darkgrey;">
						</div>
					</div>
					<div class="row my-3">
						<div class="col-12 d-flex justify-content-between mb-3">
							<button type="button" class="btn btn-danger" id="checkDelete">선택삭제</button>
							<div>
								<button type="button" class="btn btn-primary" id="insertData" onclick="location.href='WriteEvent'">이벤트 등록</button>
							</div>
						</div>
						<div class="col-12">
							<table class="table">
								<thead>
									<tr>
										<th><input type="checkbox" id="allCheck"></th>
										<th>Event No</th>
										<th>제목</th>
										<th>시작일</th>
										<th>마감일</th>
									</tr>
								</thead>
								<tbody id="tablePart">
									<c:forEach items="${list }" var="event">
										<tr id="tr${event.enumber}">
											<td><input type="checkbox" name="deleteList"></td>
											<td>${event.enumber }</td>
											<td><a class="text-dark" href="ModifyEvent?e=${event.enumber }">${event.etitle }</a></td>
											<td>${event.estartdate }</td>
											<td>${event.eenddate }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<div class="row mb-5">
						<div class="col-12">
							<nav aria-label="...">
							  <ul class="pagination justify-content-center" id="pagePart">
							  	<c:if test="${startPage != 1 }">
							  		<li class="page-item"> 
							  			<a class="page-link" id="prev" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a>  
							  		</li>
							  	</c:if>
							  	<c:forEach begin="${startPage}" end="${endPage <= lastPage ? endPage : lastPage}" var="i" varStatus="status">
							  		<c:if test="${status.count == activePage }">
							  			<li class="page-item active"><a class="page-link" href="ControlData?p=${i}&topic=${topic}&text=${text}" id="${i}">${i}</a></li>
							  		</c:if>
							  		<c:if test="${status.count != activePage }">
							  			<li class="page-item"><a class="page-link" href="ControlData?p=${i}&topic=${topic}&text=${text}" id="${i}">${i}</a></li>
							  		</c:if>
							  	</c:forEach>
							  	<c:if test="${endPage <= lastPage }">
							  		<li class="page-item"> 
							  			<a class="page-link" id="next" aria-label="Next"><span aria-hidden="true">&raquo;</span></a> 
							  		</li>
							  	</c:if>
							  </ul>
							</nav>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
</div>
<script>
	$(document).ready(function() {
		
		/* 선택삭제 버튼 클릭 시 선택한 이벤트 일괄 삭제 */
		
		$(document).on('click', '#checkDelete', function() {
			
			var con = confirm('체크된 이벤트 목록을 삭제하시겠습니까?');
			
			if (con == true) {		
				
				var enumberList = [];
				
				$('input[name=deleteList]:checked').each(function(i){   //jQuery로 for문 돌면서 check 된값 배열에 담는다
				   
					enumberList.push($(this).closest('td').next().text());
				
				});
		
				
				for (var i = 0; i < enumberList.length; i++) {
					
					var enumber = enumberList[i];
 					
					$.ajax({
						url: "deleteEvent",
						type: "get",
						data: { "e" : enumber },
						contentType: "application/json; charset=utf-8;",
						async: false,
						
				        success: function(data) {
				        	
				        	$('#tr'+enumber).remove();
				        	
				        },
				        
				        error: function(){
				            alert("로딩에 실패하였습니다.");
				        }
				        
					});
					
				}				
				
			} else {}
			
		});
		
		/* 전체 체크박스 선택하게 해주는 부분 */
		
		$(document).on('click', '#allCheck', function() {
			
			if ($(this).is(':checked')) {
				
				$('input[name=deleteList]').prop('checked', true);
				
			} else {
				
				$('input[name=deleteList]').prop('checked', false);
				
			}
			
		});
		
	});
</script>
<%@include file="./footer.jsp"%>