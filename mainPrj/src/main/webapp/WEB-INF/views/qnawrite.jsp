<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@include file="./header.jsp"%>
  <link href="resources/summernote-0.8.18-dist/summernote-bs4.css" rel="stylesheet">
<link rel="stylesheet" href="resources/css/HeartRating.css">
<script src="resources/summernote-0.8.18-dist/summernote-bs4.js"></script>
<script src="resources/summernote-0.8.18-dist/lang/summernote-ko-KR.js"></script>
<script>
	$(document).ready(function() {

		$('#summernote').summernote({
			height : '100vh',
			lang : "ko-KR",
			placeholder : '리뷰를 작성해주세요.',
			callbacks: { 
			    onImageUpload: function(files, editor) {
			    	sendFile(files[0], this);
				}
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
 	        error: function(){
	            alert("업로드에 실패하였습니다.");
	        }
 	        
 	    });
 	    	
 	}
	
	$(document).ready(function(){
	       //btn_reset 을 클릭했을때의 함수
	       $( "#reset").click(function () {
	          $('#summernote').summernote('code', "");
	       });
	   });
</script>

<div class="container-fluid bg-white">
	<div class="row justify-content-center" style="height: 150px;">
		<div class="col-10 d-flex align-items-end border-bottom border-dark">
			<h1 class="mb-4" style="letter-spacing: 10px; font-size: calc(30px + 0.5vw);">게시글 작성</h1>
		</div>
	</div>
</div>
<div class="container-fluid bg-white">
	<div class="row justify-content-center">
		<div class="col-10 py-5">
			<form action="qnaview1" method="post" autocomplete="off">
				<div class="form-group mb-5">
					<label for="title">
						<span class="h4" style="font-size: calc(15px + 0.2vw);">제목</span>
					</label> <input type="text" class="form-control" id="title"
						name="title" placeholder="제목을 넣어주세요." required>
				</div>
			
				<div class="form-group mb-5">
					<label for="summernote">
						<span class="h4" style="font-size: calc(15px + 0.2vw);">내용</span>
					</label>
					<textarea class="form-control" id="summernote" rows="3" name="content"></textarea>
				</div>
				<div class="form-group mb-5">
					<div class="float-right">
						<input type="submit" class="btn btn-link btn-lg mx-2" value="저장">
						<input type="reset" class="btn btn-link btn-lg mx-2" id="reset" value="초기화">
						<c:if test="${member.authority ne 0 }">
							<input type="button" class="btn btn-link btn-lg mx-2" onclick="location.href='qnaview'" value="취소" >
						</c:if>
						<c:if test="${member.authority eq 0 }">
							<input type="button" class="btn btn-link btn-lg mx-2" onclick="location.href='ControlQna'" value="취소" >
						</c:if>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>



	<%@include file="./footer.jsp"%>