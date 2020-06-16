<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./header.jsp"%>

<div class="container-fluid bg-white">
	<div class="row justify-content-center" style="height: 150px;">
		<div class="col-10 d-flex align-items-end border-bottom border-dark">
			<h1 class="mb-4" style="letter-spacing: 10px; font-size: calc(30px + 0.5vw);">성분 등록</h1>
		</div>
	</div>
</div>
<div class="container-fluid bg-white">
	<div class="row justify-content-center">
		<div class="col-10 py-5">
			<form action="insertIngredientData" method="post" autocomplete="off">
				<div class="form-group mb-5">
					<label for="name"><span class="h4" style="font-size: calc(15px + 0.2vw);">이름</span></label> 
					<input type="text" class="form-control" id="name" name="name" placeholder="성분의 이름을 넣어주세요." required>
				</div>
				<div class="form-group mb-5">
					<label for="level"><span class="h4" style="font-size: calc(15px + 0.2vw);">위험도</span></label> 
					<input type="text" class="form-control" id="level" name="level" placeholder="성분의 위험도를 넣어주세요." required>
				</div>
				<div class="form-group mb-5">
					<label for="purpose"><span class="h4" style="font-size: calc(15px + 0.2vw);">용도</span></label> 
					<input type="text" class="form-control" id="purpose" name="purpose" placeholder="성분의 용도를 넣어주세요." required>
				</div>
				<div class="form-group mb-5">
					<div class="float-right">
						<input type="submit" class="btn btn-link btn-lg mx-2" value="저장">
						<input type="button" class="btn btn-link btn-lg mx-2" onclick="location.href='ControlData'" value="취소">
					</div>
				</div>
			</form>
		</div>
	</div>
</div>

<%@include file="./footer.jsp"%>