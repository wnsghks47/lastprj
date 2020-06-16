<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./header.jsp"%>

<div class="container-fluid bg-white">
	<div class="row justify-content-center" style="height: 150px;">
		<div class="col-10 d-flex align-items-end border-bottom border-dark">
			<h1 class="mb-4" style="letter-spacing: 10px; font-size: calc(30px + 0.5vw);">제품 데이터 수정</h1>
		</div>
	</div>
</div>
<div class="container-fluid bg-white">
	<div class="row justify-content-center">
		<div class="col-10 py-5">
			<form action="ModifyProductData" method="post" autocomplete="off">
				<div class="form-group mb-5">
					<label for="pnumber"><span class="h4" style="font-size: calc(15px + 0.2vw);">제품번호</span></label> 
					<input type="text" class="form-control" id="pnumber" name="pnumber"  value="${product.pnumber}" readonly>
				</div>
				<div class="form-group mb-5">
					<label for="brand"><span class="h4" style="font-size: calc(15px + 0.2vw);">브랜드</span></label> 
					<input type="text" class="form-control" id="brand" name="brand" placeholder="제품의 브랜드를 넣어주세요." required>
				</div>
				<div class="form-group mb-5">
					<label for="name"><span class="h4" style="font-size: calc(15px + 0.2vw);">이름</span></label> 
					<input type="text" class="form-control" id="name" name="name" placeholder="제품의 이름을 넣어주세요." required>
				</div>
				<div class="form-group mb-5">
				<div class="row">
					<div class="col-6">
						<label for="unit"><span class="h4" style="font-size: calc(15px + 0.2vw);">용량</span></label> 
						<input type="text" class="form-control" id="unit" name="unit" placeholder="제품의 용량을 넣어주세요." required>
					</div>
					<div class="col-6">
						<label for="price"><span class="h4" style="font-size: calc(15px + 0.2vw);">가격</span></label> 
						<input type="text" class="form-control" id="price" name="price" placeholder="제품의 가격을 넣어주세요." required>
					</div>
				</div>
				</div>
				<div class="form-group mb-5">
					<label for="content">
						<span class="h4" style="font-size: calc(15px + 0.2vw);">설명</span>
					</label>
					<textarea class="form-control" id="content" rows="3" name="content">${product.pinformation}</textarea>
				</div>
				<div class="form-group mb-5">
					<label for="tag"><span class="h4" style="font-size: calc(15px + 0.2vw);">태그</span></label> 
					<textarea class="form-control" name="tag" id="tag" rows="1" placeholder="태그를 ' , ' 로 구분하여 입력해주세요."></textarea>
				</div>
				<div class="form-group mb-5">
					<div class="float-right">
						<input type="submit" class="btn btn-link btn-lg mx-2" value="저장">
						<input type="button" class="btn btn-link btn-lg mx-2" onclick="location.href='ControlData';" value="취소">
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
<script>
	$(document).ready(function() {
		
		$('input#brand').val('${product.pbrand}');
		$('input#name').val('${product.pname}');
		$('input#unit').val('${price.unit}');
		$('input#price').val('${price.price}');
		
		<c:forEach items="${tags}" var="tag">
			$('textarea#tag').append("${tag.tag},");
		</c:forEach>
		
	});
</script>

<%@include file="./footer.jsp"%>