<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="./header.jsp"%>

<style>
.events {
	color: #CC0066;
	font-size: 15px;
}

div>p>img {
	max-width: 100%;
	min-width: 300px;
}

.btn {
	color: white;
	border: 1px solid white;
}

.btn:hover {
	background-color: white;
	border: 1px solid white;
}
</style>
<div class="container-fluid">
	<div class="row justify-content-center">
	<div class="col-10">
	<div class="row">
		<div class="col mt-5 border-bottom border-white">
			<p
				style="font-size: 15px; text-align: center; color: #fff; margin-bottom: 20px;">
				<span class="events">이벤트 시작 | ${event.estartdate }</span>
			</p>
			<h3
				style="font-size: 30px; text-align: center; color: #fff; margin-bottom: 40px;'">${event.etitle }</h3>
		</div>
	</div>
	<div class="row my-5">
		<div class="col text-white"
			style="margin-top: 30px; margin-bottom: 70px; font-size: calc(10px + 0.5vw);">
			<div>${event.eventimg }</div>
		</div>
	</div>
	<div class="row mb-5">
		<div class="col">
			<form action="event">

				<input type="submit" value="이벤트 목록으로" class="btn float-right" />

			</form>
		</div>
	</div>
	</div>
	</div>
</div>

<%@include file="./footer.jsp"%>
