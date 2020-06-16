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
		                       회원 관리
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
           
				<section class="col-12">
					<div class="row">
						<div class="col">
							<span id="hi">안녕하세요, <b>${member.id }</b> 님
							</span> <a style="font-size: calc(12px + 0.2vw); cursor: pointer;" href="logout"> (로그아웃하기)</a> <br>
							<br> 
							<span style="font-size: calc(12px + 0.15vw);">
								ㆍ관리자페이지에서는 전반적인 <span style="color: #0f4c81">홈페이지 관리</span>가 가능하고, <span style="color: #0f4c81">회원정보 및 상품정보, 리뷰정보</span>를 변경할 수 있습니다.
							</span> 
							<br>
							<br>
							<br>
							<h2 style="letter-spacing: 2px; font-size: calc(25px + 0.5vw);">회원 관리</h2>
							<hr style="border: 1px solid darkgrey;">
						</div>
					</div>
					
					<div class="row">
						<div class="col-12 my-3">
							<form class="d-inline-block">
								<div class="d-inline-block">
									<label class="mx-2" for="from">시작일</label> <input type="date" id="from"/> 
								</div>	
								<div class="d-inline-block">
									<label class="mx-2" for="to">종료일</label> <input type="date" id="to"/> 
								</div>
								<input type="submit" value="검색" id="search"/>
							</form>
						</div>
						<div class="col-12 my-3"><button type="button" class="btn btn-primary mr-2" id="checkModify">선택수정</button><button type="button" class="btn btn-danger" id="checkDelete">선택삭제</button></div>
						<div class="col-12 mb-5">
							<table class="table table-striped">
								<thead>
								    <tr>
								      	<th><input type="checkbox" id="allCheck"></th>
								      	<th scope="col">No</th>
								      	<th scope="col">회원 아이디</th>
								      	<th scope="col">전화번호</th>
								      	<th scope="col">이메일</th>
								      	<th scope="col">생년월일</th>
								      	<th scope="col">가입일</th>
								      	<th scope="col">피부타입</th>
								      	<th scope="col">성별</th>
								      	<th scope="col">리뷰 작성 수</th>
								      	<th scope="col">신고 수</th>
								      	<th scope="col">권한등급</th>
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
					
				</section>
								
			</div>
		</div>
	</div>
</div>

<script>
	$(document).ready(function() {
		
		$.ajax({
			url : "reviewMemberList",
			type : "post",
			data : {
				"from" : "${fromDate}",
				"to" : "${toDate}",
				"start" : "1",
				"end" : "100"
			},
			dataType : "json",
			success : function(data) {
				
				var memberList = data.array;		
				
				for (var i = 0; i < memberList.length; i++) {
					
					$('tbody#tablePart').append('<tr id="tr'+memberList[i].mnum+'"> <td><input type="checkbox" name="deleteList"></td> <td>'+memberList[i].mnum+'</td> <td>'+memberList[i].id+'</td><td>'+memberList[i].phone+'</td><td>'+memberList[i].mail+'</td><td>'+memberList[i].birth+'</td><td>'+memberList[i].joindate+'</td><td>'+memberList[i].skin+'</td><td>'+memberList[i].gender+'</td><td>'+memberList[i].rcount+'</td><td>'+memberList[i].deccount+'</td><td><input size="1" type="text" name="authority" id="authority" value="'+memberList[i].authority+'"/></td></tr>');
					
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
		
		$('input#search').on('click', function() {
			
			event.preventDefault();
			
			$.ajax({
				url : "reviewMemberList",
				type : "post",
				data : {
					"from" : $('input#from').val(),
					"to" : $('input#to').val(),
					"start" : "1",
					"end" : "100"
				},
				dataType : "json",
				success : function(data) {
					
					$('tbody#tablePart').empty();
					$('ul#pagePart').empty();
					
					var memberList = data.array;		
					
					for (var i = 0; i < memberList.length; i++) {
						
						$('tbody#tablePart').append('<tr id="tr'+memberList[i].mnum+'"> <td><input type="checkbox" name="deleteList"></td> <td>'+memberList[i].mnum+'</td> <td>'+memberList[i].id+'</td><td>'+memberList[i].phone+'</td><td>'+memberList[i].mail+'</td><td>'+memberList[i].birth+'</td><td>'+memberList[i].joindate+'</td><td>'+memberList[i].skin+'</td><td>'+memberList[i].gender+'</td><td>'+memberList[i].rcount+'</td><td>'+memberList[i].deccount+'</td><td><input size="1" type="text" name="authority" id="authority" value="'+memberList[i].authority+'"/></td></tr>');
						
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
		
		/* 선택삭제 버튼 클릭 시 선택한 회원 일괄 삭제 */
		
		$(document).on('click', '#checkDelete', function() {
			
			var con = confirm('체크된 회원 목록을 삭제하시겠습니까?');
			
			if (con == true) {		
				
				var mnumberList = [];
				
				$('input[name=deleteList]:checked').each(function(i){   //jQuery로 for문 돌면서 check 된값 배열에 담는다
				   
					mnumberList.push($(this).closest('td').next().text());
				
				});
		
				
				for (var i = 0; i < mnumberList.length; i++) {
					
					var mnumber = mnumberList[i];
 					
					$.ajax({
						url: "deleteMember",
						type: "get",
						data: { "m" : mnumber },
						contentType: "application/json; charset=utf-8;",
						async: false,
						
				        success: function(data) {
				        	
				        	$('#tr'+mnumber).remove();
				        	
				        },
				        
				        error: function(){
				            alert("로딩에 실패하였습니다.");
				        }
				        
					});
					
				}				
				
			} else {}
			
		});
		
		
		/* 선택 수정 버튼 클릭하면 선택된 멤버 권한 수정 */
		
		$(document).on('click', '#checkModify', function() {
			
			var con = confirm('체크된 회원 목록을 수정하시겠습니까?');
			
			if (con == true) {		
				
				var mnumberList = [];
				
				$('input[name=deleteList]:checked').each(function(i){   //jQuery로 for문 돌면서 check 된값 배열에 담는다
				   
					mnumberList.push($(this).closest('td').next().text());
				
				});
				
				var authorityList = [];
				
				$('input[name=deleteList]:checked').each(function(i){   //jQuery로 for문 돌면서 check 된값 배열에 담는다
				   
					authorityList.push($(this).closest('tr').children(":last").children('input').val());
				
				});
		
				
				for (var i = 0; i < mnumberList.length; i++) {
					
					var mnumber = mnumberList[i];
					
					var authority = authorityList[i];
					
					$.ajax({
						url: "updateMemberAuthority",
						type: "POST",
						data: { "m" : mnumber , "a" : authority },
						async: false,
						
				        success: function(data) {
				   		},
				        
				        error: function(){
				            alert("로딩에 실패하였습니다.");
				        }
				        
					});
 					
					
				}				
				
			} else {}
			
			location.reload();
			
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