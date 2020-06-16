<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
</script>

<div class="container-fluid bg-white">
	<div class="row justify-content-center" style="height: 150px;">
		<div class="col-10 d-flex align-items-end border-bottom border-dark">
			<h1 class="mb-4" style="letter-spacing: 10px; font-size: calc(30px + 0.5vw);">리뷰작성</h1>
		</div>
	</div>
</div>
<div class="container-fluid bg-white">
	<div class="row justify-content-center">
		<div class="col-10 py-5">
			<form action="WriteReview?pnumber=${pnumber}" method="post" autocomplete="off">
				<div class="form-group mb-5">
					<label for="title">
						<span class="h4" style="font-size: calc(15px + 0.2vw);">제목</span>
					</label> <input type="text" class="form-control" id="title"
						name="title" placeholder="제목을 넣어주세요." required>
				</div>
				<div class="form-group mb-5">
					<label class="d-block mb-0">
						<span class="h4" style="font-size: calc(15px + 0.2vw);">평점</span>
					</label>
					<div class="d-inline-block">
						<div class="rating">
							<input type="radio" id="star5" name="rating" value="5" required /><label
								for="star5" class="mb-0"></label> <input type="radio" id="star4"
								name="rating" value="4" /><label for="star4" class="mb-0"></label>
							<input type="radio" id="star3" name="rating" value="3" /><label
								for="star3" class="mb-0"></label> <input type="radio" id="star2"
								name="rating" value="2" /><label for="star2" class="mb-0"></label>
							<input type="radio" id="star1" name="rating" value="1" /><label
								for="star1" class="mb-0"></label>
						</div>
					</div>
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
						<input type="button" class="btn btn-link btn-lg mx-2" onclick="location.href='DetailView?pnumber=${pnumber}';" value="취소">
					</div>
				</div>
			</form>
		</div>
	</div>
</div>

<%@include file="./footer.jsp"%>