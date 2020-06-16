<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="./header.jsp"%>
<style>
div>p>img {
	max-width: 100%;
	min-width: 300px;
}
</style>

<div style="height: calc(100px + 2.5vw);"></div>
<div class="container-fluid pb-5" style="background-color: #fff;">

	<div class="row justify-content-center" style="height: calc(100px + 2.5vw);">
		<div class="col-12 col-sm-10 d-flex justify-content-center align-items-end border-bottom border-dark">
			<h1 class="mb-4" style="letter-spacing: 5px; font-size: calc(25px + 0.7vw);">
			문의 게시판</h1>
		</div>
	</div>

	<div class="row justify-content-center">
		<div class="col-12 col-sm-10">

			<div class="my-4">
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


			<div class="float-right my-2">
				<c:if test="${member.id ne qbid.qreg_id }"></c:if>

				<c:if test="${member.id eq qbid.qreg_id }">
					<button type="button" class="btn btn-link mx-2"
						id="btnUpdate" onclick="location.href='modify?qbid=${qbid.qbid}'">수정</button>

					<button type="button" class="btn btn-link mx-2"
						id="btnDelete" name="qbid"
						onclick="location.href='deleteqna?qbids=${qbid.qbid}'">삭제</button>

				</c:if>
				<button type="button" class="btn btn-link"
					onclick="location.href='qnaview'">목록</button>
			</div>

			<div class="clearfixed"></div>
		</div>
	</div>

	<div class="row justify-content-center">
		<div class="col-12 col-sm-10">
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
							<c:if test="${member.id ne qbids.bwriter}"></c:if>
							<c:if test="${member.id eq qbids.bwriter}">
								<button type="button" class="btn btn-light btn-sm float-right" id="btnDelete" name="qbid" onclick="location.href='deletereply?rno=${qbids.rno}&bno=${qbids.bno}'">삭제</button>
							</c:if>
						</td>
					</tr>
				</table>
			</c:forEach>


			<c:if test="${member.id eq null }">
			</c:if>
			<c:if test="${member.id ne null }">
				<form action="write1" method="post">
					<textarea cols="10" placeholder="내용을 입력하세요. " name="qcontent" class="form-control" style="margin-top: 30px;"></textarea>
					<input type="hidden" value="${qbid.qbid }" name="qbid" />
					<div class="float-right my-3">
						<input type="submit" value="댓글등록" class="btn btn-link mx-2" />
						<input type="reset" value="RESET" class="btn btn-link" />
					</div>
				</form>
			</c:if>


		</div>
	</div>
</div>


<%@include file="./footer.jsp"%>