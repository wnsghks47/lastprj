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
		                       문의 게시판 관리
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
							<h2 style="letter-spacing: 2px; font-size: calc(25px + 0.5vw);">문의 게시판 관리</h2>
							<hr style="border: 1px solid darkgrey;">
						</div>
					</div>
					
					<div class="row justify-content-center">
						<div class="col-12 my-3">
							
							<div class="board_title my-4">
								<span><strong>제목 : </strong>${qbid.qtitle}</span>
							</div>
				
							<div>
								<span><strong>ID : </strong>${qbid.qreg_id}</span> 
								<br /> 
								<span><strong>등록일자 : </strong>${qbid.qreg_dt}</span>
							</div>
							<hr />
							<div class="py-5">${qbid.qcontent}</div>
							
							<hr />
								
							<div class="float-right mt-2">
								<button type="button" class="btn btn-link mx-2" id="btnUpdate" onclick="location.href='modify?qbid=${qbid.qbid}'">수정</button>		
								<button type="button" class="btn btn-link mx-2" id="btnDelete" name="qbid" onclick="location.href='deleteqna?qbids=${qbid.qbid}'">삭제</button>		
								<button type="button" class="btn btn-link" onclick="location.href='ControlQna'">목록</button>
							</div>
				
							<div class="clearfixed"></div>
							
						</div>
						<div class="col-12 mb-5" style="text-align: center;">
						
							<hr />

							<c:forEach var="qbids" items="${qbids }">
								<table class="table border">
									<tr>
										<th>ID</th>
										<td>${qbids.bwriter }</td>
										<th>등록일자</th>
										<td>${qbids.reg_dt }</td>
									</tr>
									<tr>
										<th>내용</th>
										<td colspan="2">${qbids.bcontent }</td>
										<td>
											<button type="button" class="btn btn-light btn-sm float-right" id="btnDelete" name="qbid" onclick="location.href='deletereply?rno=${qbids.rno}&bno=${qbids.bno}'">삭제</button>
										</td>
									</tr>
								</table>
							</c:forEach>
							<form action="write1" method="post">
								<textarea cols="10" placeholder="내용을 입력하세요. " name="qcontent" class="form-control" style="margin-top: 30px;"></textarea>
								<input type="hidden" value="${qbid.qbid }" name="qbid" />
								<div class="float-right my-3">
									<input type="submit" value="댓글등록" class="btn btn-link mx-2" />
									<input type="reset" value="RESET" class="btn btn-link" />
								</div>
							</form>
						</div>
					</div>					
				</section>								
			</div>
		</div>
	</div>
</div>

<%@include file="./footer.jsp"%>