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
							<table class="table table-striped" style="font-size: calc(10px + 0.3vw);">
								<colgroup>
									<col style="width: 10%;" />
									<col style="width: auto;" />
									<col style="width: calc(70px + 3vw);" />
									<col style="width: calc(70px + 3vw);" />
								</colgroup>
				
								<thead>
									<tr>
										<th>NO</th>
										<th>글제목</th>
										<th>작성자</th>
										<th>작성일</th>
									</tr>
								</thead>
				
								<tbody>
				
									<c:choose>
				
										<c:when test="${empty list }">
											<tr>
												<td colspan="5" align="center">데이터가 없습니다.</td>
											</tr>
										</c:when>
				
										<c:when test="${!empty list}">
				
											<c:forEach var="list" items="${list}">
												<tr>
													<td><c:out value="${list.qbid}" /></td>
													<td><a href="ControlQnaDetail?qbid=${list.qbid }"><c:out value="${list.qtitle}" /></a></td>
													<td><c:out value="${list.qreg_id}" /></td>
													<td><c:out value="${list.qreg_dt}" /></td>
												</tr>
											</c:forEach>
				
										</c:when>
				
									</c:choose>
								</tbody>
							</table>
						</div>
						<div class="col-12 mb-5" style="text-align: center;">
											
							<c:if test= "${pageVO.pageStart+1>pageVO.rowStart }"></c:if>
								<c:if test="${pageVO.pageStart+1<pageVO.rowStart }">
									<a href="/mainPrj_0525/qnaview?page=${pageVO.pageStart}">  << &nbsp;</a>
									<a href="/mainPrj_0525/qnaview?page=${pageVO.page-1 }"> < &nbsp;</a>
							</c:if>

							<c:forEach var="i" begin="${pageVO.pageStart}" end="${pageVO.pageEnd}">
								<a href="ControlQna?page=${i}">&nbsp;${i} </a>
							</c:forEach>
				
							<c:if test="${pageVO.pageEnd<pageVO.totPage }">
								<c:if test="${pageVO.page<=pageVO.pageEnd }">
									<a href="ControlQna?page=${pageVO.page+1 }">&nbsp; &nbsp; > </a>
									<a href="ControlQna?page=${pageVO.pageEnd }">&nbsp; &nbsp; >></a>
								</c:if>
							</c:if>
						</div>
						<div class="col-12 mb-5" style="text-align: right;">
							<form action="qnawrite">
								<input type="submit" class="btn btn-link" value="글쓰기" />
							</form>
						</div>
					</div>					
				</section>								
			</div>
		</div>
	</div>
</div>

<%@include file="./footer.jsp"%>