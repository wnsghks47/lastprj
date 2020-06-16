<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./header.jsp"%>

<div style="height: calc(100px + 2.5vw);"></div>
<div class="container-fluid bg-white">

	<div class="row justify-content-center" style="height: calc(100px + 2.5vw);">
		<div class="col-12 col-sm-10 d-flex justify-content-center align-items-end border-bottom border-dark">
			<h1 class="mb-4" style="letter-spacing: 5px; font-size: calc(25px + 0.7vw);">문의
				게시판
			</h1>
		</div>
	</div>

	<div class="row justify-content-center my-5"
		style="background-color: #fff;">
		<div class="col-12 col-sm-10">
			<table class="table table-striped"
				style="font-size: calc(10px + 0.3vw);">
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
									<td><a href="qnadetail?qbid=${list.qbid }"><c:out
												value="${list.qtitle}" /></a></td>
									<td><c:out value="${list.qreg_id}" /></td>
									<td><c:out value="${list.qreg_dt}" /></td>
								</tr>
							</c:forEach>

						</c:when>

					</c:choose>
				</tbody>
			</table>
		</div>
	</div>

	<div class="row justify-content-center">
		<div class="col-12 col-sm-10" style="text-align: center;">

			<c:if test= "${pageVO.pageStart+1>pageVO.rowStart }"></c:if>
				<c:if test="${pageVO.pageStart+1<pageVO.rowStart }">
					<a href="qnaview?page=${pageVO.pageStart}">  << &nbsp;</a>
					<a href="qnaview?page=${pageVO.page-1 }"> < &nbsp;</a>
			</c:if>

			<c:forEach var="i" begin="${pageVO.pageStart}"
				end="${pageVO.pageEnd}">
				<a href="qnaview?page=${i}">&nbsp;${i} </a>
			</c:forEach>

			<c:if test="${pageVO.pageEnd<pageVO.totPage }">
				<c:if test="${pageVO.page<=pageVO.pageEnd }">
					<a href="qnaview?page=${pageVO.page+1 }">&nbsp;
						&nbsp; > </a>
					<a href="qnaview?page=${pageVO.pageEnd }">&nbsp;
						&nbsp; >></a>
				</c:if>
			</c:if>
		</div>
	</div>

	<div class="row justify-content-center" style="text-align: right;">
		<div class="col-12 col-sm-10 my-5">
			<form action="qnawrite">
				<c:if test="${member.id eq null }">
				</c:if>
				<c:if test="${member.id ne null }">
					<input type="submit" class="btn btn-link" value="글쓰기" />
				</c:if>
			</form>
		</div>
	</div>
</div>


<%@include file="./footer.jsp"%>