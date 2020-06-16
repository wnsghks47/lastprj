<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./header.jsp"%>

<style>
.event-img { max-width: calc(400px + 5vw); height: auto; }
</style>
<div class="container-xl">
	<div class="row justify-content-center">
	<div class="col-10">
	<div class="row justify-content-center" style="height: calc(100px + 2.5vw); color: white;" >	 
        <div class="col-12 d-flex justify-content-center align-items-end border-bottom border-white">
            <h1 class="mb-4" style="letter-spacing: 5px; font-size: calc(25px + 0.7vw);">
                이벤트</h1>
        </div>
	</div>
	<div class="row justify-content-center py-5">
		<c:if test="${list[0].enumber == null}">
			<div class="col my-5">
				<img class="d-block my-5 mx-auto" src="resources/img/아이콘/tool.svg" style="width: calc(50px + 4vw);"/>
				<p class="text-white h3 my-3" style="text-align: center;font-size: calc(15px + 0.5vw);">이벤트가 준비 중입니다.</p>
			</div>
		</c:if>
		<c:if test="${list[0].enumber != null}">
		<c:forEach items="${list }" var="event">
			<div class="col-md-6">
				<a href="eventdetail?c=${event.enumber }" class="btn stretched-link"></a>
				<div class="card " style="margin-top: 20px;">
					<div class="item-wrapper m-4" style="display: flex; justify-content: center; align-items: center; height: 40vh; overflow: hidden;">
						<img class="event-img d-block" src="${event.src }">
					</div>
					<div class="card-body">
						<h5 class="my-3" style="text-align: center"><strong>${event.etitle }</strong></h5>
						<p style="text-align: center">${event.estartdate } ~ ${event.eenddate }</p>
					</div>

				</div>
			</div>
		</c:forEach>
		</c:if>
	</div>
	</div>
	</div>
</div>

<%@include file="./footer.jsp"%>