<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./header.jsp"%>
<link href="resources/summernote-0.8.18-dist/summernote-bs4.css"
	rel="stylesheet">
<link rel="stylesheet" href="resources/css/HeartRating.css">
<script src="resources/summernote-0.8.18-dist/summernote-bs4.js"></script>
<script src="resources/summernote-0.8.18-dist/lang/summernote-ko-KR.js"></script>
<style>
img {
	max-width: 100%;
}
</style>

<script>
	$(document).ready(function() {

		$('#summernote').summernote({
			height : '100vh',
			lang : "ko-KR",
			placeholder : '리뷰를 작성해주세요.',
			callbacks : {
				onImageUpload : function(files, editor) {
					sendFile(files[0], this);
				}
			}
		});

		$.ajax({
			url : "requestQna",
			type : "GET",
			data : {
				"r" : "${qbid.qbid}"
			},
			contentType : "application/json; charset=utf-8;",
			dataType : "json",

			success : function(data) {

				$('#summernote').summernote('code', data.content);
			},

			error : function() {
				alert("로딩에 실패하였습니다.");
			}

		});

	});
	function sendFile(file, editor) {
		data = new FormData();
		data.append("file", file);
		$.ajax({
			data : data,
			type : "POST",
			url : "uploadSummerImage",
			enctype : "multipart/form-data",
			cache : false,
			contentType : false,
			processData : false,
			success : function(data) {
				$(editor).summernote('editor.insertImage', data.url);
			},
			error : function() {
				alert("업로드에 실패하였습니다.");
			}

		});

	}
</script>
<div class="container-fluid bg-white">
	<div class="row justify-content-center">
		<div class="col-10 pt-5">
			<h2 style="text-align: center; font-size: calc(25px + 0.5vw);">문의 게시글 수정</h2>
			<form action="modify1">
				<input type="hidden" name="qbid" value="${qbid.qbid }" />
				<div class="bg-white">

					<div>
						<span><strong>제목 : </strong></span> 
						<input type="text" value="${qbid.qtitle }" name="qtitle" />
					</div>

					<div>

						<span><strong>ID : </strong><c:out value="${qbid.qreg_id}" /></span>
						<br />
						<span><strong>등록일자 : </strong><c:out value="${qbid.qreg_dt}" />
						</span>
					</div>
					<hr />
					<div>
						<textarea class="form-control" id="summernote" rows="3" name="qcontent"></textarea>
					</div>
				</div>

				<div class="my-5" style="text-align: right">
					<button type="submit" class="btn btn-link" id="btnUpdate">수정완료</button>
					<c:if test="${member.authority ne 0 }">
						<button type="button" class="btn btn-link" id="btnDelete" name="qbid" onclick="location.href='qnaview'">이전</button>
					</c:if>
					<c:if test="${member.authority eq 0 }">
						<button type="button" class="btn btn-link" id="btnDelete" name="qbid" onclick="location.href='ControlQna'">이전</button>
					</c:if>
				</div>
			</form>

		</div>
	</div>
</div>
<%@include file="./footer.jsp"%>
