<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="./header.jsp"%>

<script>

var start = 1;
var end = 4;
var timer = null;

$(document).ready(function () {
	
	$(window).scroll(function() {

		clearTimeout( timer ); 
		
		timer = setTimeout( scrollDone, 50 );

	});
	
});
	
function scrollDone() {
	
	if ($(window).scrollTop() >= ($(document).height() - 400) - $(window).height()) {
		
		
		
		start += 4;
		end += 4;
		  
		$.ajax({
	        url: "requestSearch",
	        type: "GET",
	        data: { "search" : "${search}", "start" : start, "end" : end },
	        contentType: "application/json; charset=utf-8;",
            dataType: "json",
	        success: function(data) {
	        	        	
	        	for (var i = 0; i < data.item.length; i++) {
	        		
	        		var product = data.item[i];
	        		
	        		var card = document.createElement("div");
	        		 $(card).addClass("col-12 col-sm-6 col-xl-3 my-3");
	        		 $(card).attr("data-aos", "fade-up").attr("data-aos-duration", "500");
	        		 
	        		 var cardContent = document.createElement("div");
	        		 $(cardContent).addClass("card p-4 h-100");
	        		 	        		 
	        		 var cardBody = document.createElement("div");
	        		 $(cardBody).addClass("card-body my-3");
	        		 $(cardBody).css("text-align", "center");
	        		 $(cardBody).append('<h5 class="card-title">' + product.pname + '</h5>');
	        		 $(cardBody).append('<p class="card-text text-danger">' + product.pbrand + '</p>');
	        		 
	        		 var cardImageWrap = document.createElement("div");
	        		 $(cardImageWrap).addClass("d-flex justify-content-center align-items-center");
	        		 $(cardImageWrap).css("width", "100%").css("height", "calc(5vw + 250px)").css("overflow", "hidden");
	        		 
	        		 var cardImage = document.createElement("img");
	        		 $(cardImage).addClass('card-img mt-4 w-100');
	        		 var productName = product.pname.replace(/\//gi, "_").replace(/\[/gi,"").replace(/\]/gi,"");
	        		 $(cardImage).attr('src', "resources/img/" + product.pcategory + "/" + productName + ".jpg");
	        		 
	        		 $(cardImageWrap).append(cardImage);
	        		 $(cardContent).append(cardImageWrap);
	        		 $(cardContent).append(cardBody);
	        		 $(cardContent).append('<a href="./DetailView?pnumber=' + product.pnumber + '" class="stretched-link"></a>');
	        		 $(card).append(cardContent);
	        		 
	        		 $('div#listPart').append(card);
	        		 
				} 
	        	
			},		
			
	        error: function(){
	            alert("로딩에 실패하였습니다.");
	        }		        
	        
	    });

	}
}
</script>
<style>    
    .card {
        transition: transform .3s;
    }

    .card:hover {
        transform: scale(1.03);
    }

</style>

<div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-10">
            <div class="row justify-content-center" style="height: calc(100px + 2.5vw); color: white;">
                <div class="col-12 d-flex align-items-end border-bottom border-white">
                    <h1 class="mb-4" style="letter-spacing: 5px; font-size: calc(25px + 0.7vw);">
                        "${search}" 검색 결과</h1>
                </div>
            </div>
            <div class="row justify-content-center my-5 pt-5" id="listPart">
                <c:choose>
                	<c:when test="${list[0].pname == null }">
                		<div class="text-white mt-5" style="text-align:center;">
                			<img class="d-block mx-auto" src="resources/img/아이콘/warning.svg" width="25%"/>
                			<p class="h2 my-5" style="font-size: calc(10px + 1vw);">"${search}" 에 대한 검색 결과가 없습니다.</p>
                		</div>
                	</c:when>
                	<c:otherwise>
                		<c:forEach items="${list }" var="product" varStatus="status">
		                    <div class="col-12 col-sm-6 col-xl-3 my-3" data-aos="fade-up" data-aos-duration="500">
		                        <div class="card p-4 h-100">
		                        	<div class="d-flex justify-content-center align-items-center" style="width:100%; height:calc(5vw + 250px); overflow: hidden;">
			                        	<c:set var="first" value="${fn:replace(product.pname, '/', '_')}"/>
	                        			<c:set var="second" value="${fn:replace(first, '[', '')}"/>
	                        			<c:set var="productName" value="${fn:replace(second, ']', '')}"/>
			                            <img src="resources/img/${fn:replace(product.pcategory, '/', '_')}/${productName}.jpg" class="card-img mt-4 w-100">
		                            </div>
		                            <div class="card-body my-3" style="text-align: center;">
		                                <h5 class="card-title">${product.pname}</h5>
		                                <p class="card-text text-danger">${product.pbrand}</p>
		                            </div>
		                            <a href="./DetailView?pnumber=${product.pnumber }" class="stretched-link"></a>
		                        </div>
		                    </div>
		                </c:forEach>
                	</c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>
</div>
<br />
<br />

<%@include file="./footer.jsp"%>
