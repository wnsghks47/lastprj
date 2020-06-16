<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="./header.jsp"%>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
    $(document).ready(
        function() {

            var i = '${most}';

            $(".price_bar").slider({
                range: true,
                min: 0,
                max: i,
                step: 1000,
                values: [0, i],
                slide: function(event, ui) {
                    $("#from").val(ui.values[0]);
                    $("#to").val(ui.values[1]);
                }
            });

            $("#from").val($(".price_bar").slider("values", 0));
            $("#to").val($(".price_bar").slider("values", 1));

            $('#from').on(
                'change',
                function() {

                    if (parseInt($("#from").val()) > parseInt($(
                            ".price_bar").slider("values", 1))) {

                        alert('입력 값이 너무 큽니다.')
                        $("#from").val('0');

                    } else if (parseInt($("#from").val()) < 0) {

                        alert('입력 값이 너무 작습니다.')
                        $("#from").val('0');

                    } else if ($("#from").val() == '') {

                        $("#from").val('0');

                    } else {
						
                    	var from = $("#from").val();
                    	var u = 1000;
                    	
                        $(".price_bar").slider({
                            values: [
                                (Math.round(from / u) * u),
                                $(".price_bar").slider("values", 1)
                            ]
                        });
                        
                        $("#from").val((Math.round(from / u) * u));
                    }
                });

            $('#to').on(
                'change',
                function() {

                    if (parseInt($("#to").val()) > parseInt(i)) {

                        alert('입력 값이 너무 큽니다.')
                        $("#to").val(i);

                    } else if (parseInt($("#to").val()) < parseInt($(
                            ".price_bar").slider("values", 0))) {

                        alert('입력 값이 너무 작습니다.')
                        $("#to").val(i);

                    } else if ($("#to").val() == "") {

                        $("#to").val(i);

                    } else {

                    	var to = $("#to").val();
                    	var u = 1000;
                    	
                        $(".price_bar").slider({
                            values: [
                                $(".price_bar").slider("values", 0),
                                (Math.round(to / u) * u)
                            ]
                        });
                        
                        $("#to").val((Math.round(to / u) * u));
                    }

                });
        });

</script>
<script>
    $(document).ready(function() {
        $("input[name=skin]").click(function() {

            if ($("#skin0").is(':checked') == true) {
                $("#skin0").prop("checked", false)
            }

            if ($("input[name=skin]").is(':checked') == false) {
                $("#skin0").prop("checked", true)
            }

            if ($("input[name=skin]:checked").length == 5) {

                $("input[name=skin]").prop("checked", false)
                $("#skin0").prop("checked", true)
            }
        })

        $("#skin0").click(function() {
            $("input[name=skin]").prop("checked", false)
            $("#skin0").prop("checked", true)
        })
    })

</script>
<script>
    $(document).ready(function() {
        $("input[name=age]").click(function() {

            if ($("#age0").is(':checked') == true) {
                $("#age0").prop("checked", false)
            }

            if ($("input[name=age]").is(':checked') == false) {
                $("#age0").prop("checked", true)
            }

            if ($("input[name=age]:checked").length == 4) {

                $("input[name=age]").prop("checked", false)
                $("#age0").prop("checked", true)
            }
        })

        $("#age0").click(function() {
            $("input[name=age]").prop("checked", false)
            $("#age0").prop("checked", true)
        })
    })

</script>
<script>

var start = 1;
var end = 4;
var timer = null;

$(document).ready(function () {
	
	$(window).scroll(function() {

		clearTimeout( timer ); 
		
		timer = setTimeout( scrollDone, 50 );

	});
	
	$('input#submit').on('click', function() {
		
		event.preventDefault();
		
		var ages = [];
		
		if ($("input[name='age']:checked").length > 0) {
			
			$("input[name='age']:checked").each(function(i){   //jQuery로 for문 돌면서 check 된값 배열에 담는다
				ages.push($(this).val());
			});
			
		} else {
			ages.push("|");
		}
		  
		  
		var skins = [];
		
		if ($("input[name='skin']:checked").length > 0) {
			
			$("input[name='skin']:checked").each(function(i){   //jQuery로 for문 돌면서 check 된값 배열에 담는다
				skins.push($(this).val());
			});
			
		} else {
			skins.push("|");
		}
		
		var gender = "";
		
		if ($("input[name='gender']:checked").length > 0) {
			gender = $("input[name='gender']:checked").val();
		} else {
			gender = "%";
		}
		  
		$.ajax({
	        url: "requestList",
	        type: "GET",
	        data: { 
	        	"c" : "${category}", 
	        	"order" : "${order}", 
	        	"start" : "1",
	        	"end" : "4", 
	        	"gender" : gender,
	        	"age" : ages,
	        	"skin" : skins,
	        	"from" : $("input[name='from']").val(),
	        	"to" : $("input[name='to']").val()	        	
	        	},
	        contentType: "application/json; charset=utf-8;",
            dataType: "json",
	        success: function(data) {
	        	
	        	start = 1;
	        	end = 4;
	        	
	        	$('div#listPart').empty();
	        	
	        	if (data.item[0] == null) {
					
	        		$('div#listPart').append('<div class="text-white mt-5" style="text-align:center;"><img class="d-block mx-auto" src="resources/img/아이콘/warning.svg" width="30%"/><p class="h2 my-5" style="font-size: calc(10px + 1vw);">해당 조건의 검색 결과가 없습니다.</p></div>');
	        		
				} else {
	        	
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
		        		 $(cardImage).attr('src', "resources/img/" + data.c + "/" + productName + ".jpg");
		        		 
		        		 $(cardImageWrap).append(cardImage);
		        		 $(cardContent).append(cardImageWrap);
		        		 $(cardContent).append(cardBody);
		        		 $(cardContent).append('<a href="./DetailView?pnumber=' + product.pnumber + '" class="stretched-link"></a>');
		        		 $(card).append(cardContent);
		        		 
		        		 $('div#listPart').append(card);
		        		 
					} 
	        	
				}	
	        	
			},		
			
	        error: function(){
	            alert("로딩에 실패하였습니다.");
	        }		        
	        
	    });
		
	})
	
});

function scrollDone() {
	
	if ($(window).scrollTop() >= ($(document).height() - 400) - $(window).height()) {
		
		start += 4;
		end += 4;
		
		var ages = [];
		
		if ($("input[name='age']:checked").length > 0) {
			
			$("input[name='age']:checked").each(function(i){   //jQuery로 for문 돌면서 check 된값 배열에 담는다
				ages.push($(this).val());
			});
			
		} else {
			ages.push("|");
		}
		  
		  
		var skins = [];
		
		if ($("input[name='skin']:checked").length > 0) {
			
			$("input[name='skin']:checked").each(function(i){   //jQuery로 for문 돌면서 check 된값 배열에 담는다
				skins.push($(this).val());
			});
			
		} else {
			skins.push("|");
		}
		
		var gender = "";
		
		if ($("input[name='gender']:checked").length > 0) {
			gender = $("input[name='gender']:checked").val();
		} else {
			gender = "%";
		}
		  
		$.ajax({
	        url: "requestList",
	        type: "GET",
	        data: { 
	        	"c" : "${category}", 
	        	"order" : "${order}", 
	        	"start" : start,
	        	"end" : end, 
	        	"gender" : gender,
	        	"age" : ages,
	        	"skin" : skins,
	        	"from" : $("input[name='from']").val(),
	        	"to" : $("input[name='to']").val()	        	
	        	},
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
	        		 $(cardImage).attr('src', "resources/img/" + data.c + "/" + productName + ".jpg");
	        		 	        		 
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
    .list_filters h3 {
        font-size: 18px;
        font-weight: bold;
        color: #0f4c81;
        margin-bottom: 1em;
    }

    .list_filters label {
        color: #34404b;
        font-size: 15px;
    }

    .list_filters {
        background: #fff;
        border: 1px solid #c0c0c0;
        border-radius: 5px;
        display: block;
    }

    .list_filters h3 {
        font-size: font-size: calc(15px + 0.2vw);
    }

    .size_filter label,
    .brand_filter label {
        display: inline-block;
        width: 75px;
    }

    .size_filter input,
    .brand_filter input {
        display: none;
    }

    .list_filters input:checked+label {
        color: indianred;
        border: 1px solid indianred;
    }

    .ui-slider .ui-slider-range {
        background-color: #0f4c81;
        height: 5px;
    }

    .ui-slider-horizontal {
        height: 5px;
    }

    .ui-slider .ui-slider-handle {
        position: absolute;
        z-index: 2;
        width: 1.2em;
        height: 1.2em;
        cursor: default;
        -ms-touch-action: none;
        touch-action: none;
        border-radius: 10px;
        margin-top: -2px;
    }
    
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
			<div class="row justify-content-center"
				style="height: calc(100px + 2.5vw); color: white;">
				<div
					class="col-12 d-flex align-items-end border-bottom border-white">
					<h1 class="mb-4"
						style="letter-spacing: 5px; font-size: calc(30px + 0.5vw);">
						${category}</h1>
				</div>
			</div>

			<div class="row justify-content-between my-4">
				<nav class="navbar position-absolute align-items-start"
					style="z-index: 3;">
					<ul class="navbar-nav d-inline-flex mr-3">
						<li class="nav-item"><a class="btn btn-light"
							data-toggle="collapse" href="#filter" role="button"
							aria-expanded="false" aria-controls="filter"> <img
								src="resources/img/아이콘/filter.svg" class="mr-2 h-100" /><strong>필터</strong>
						</a></li>
					</ul>
					<ul class="navbar-nav">
						<li class="nav-item dropdown"><a
							class="btn btn-light d-flex justify-content-between align-items-center dropdown-toggle"
							role="button" id="selectList" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" style="width: 160px;">
								<c:choose>
									<c:when test="${order == 1 }">
										<strong>리뷰 많은순</strong>
									</c:when>
									<c:when test="${order == 2 }">
										<strong>리뷰 적은순</strong>
									</c:when>
									<c:when test="${order == 3 }">
										<strong>평점 높은순</strong>
									</c:when>
									<c:when test="${order == 4 }">
										<strong>평점 낮은순</strong>
									</c:when>
									<c:when test="${order == 5 }">
										<strong>가격 높은순</strong>
									</c:when>
									<c:when test="${order == 6 }">
										<strong>가격 낮은순</strong>
									</c:when>
									<c:otherwise>
										<strong>랭킹순</strong>
									</c:otherwise>
								</c:choose>
						</a>
							<div class="dropdown-menu animate slideIn"
								aria-labelledby="selectList">
								<a class="dropdown-item" href="ListView?c=${c}&order=0">랭킹순</a>
								<a class="dropdown-item" href="ListView?c=${c}&order=1">리뷰
									많은순</a> <a class="dropdown-item" href="ListView?c=${c}&order=2">리뷰
									적은순</a> <a class="dropdown-item" href="ListView?c=${c}&order=3">평점
									높은순</a> <a class="dropdown-item" href="ListView?c=${c}&order=4">평점
									낮은순</a> <a class="dropdown-item" href="ListView?c=${c}&order=5">가격
									높은순</a> <a class="dropdown-item" href="ListView?c=${c}&order=6">가격
									낮은순</a>
							</div></li>
					</ul>
				</nav>
			</div>

			<div class="row justify-content-center py-5">
				<div class="col col-lg-12">
					<div class="collapse" id="filter">
						<div class="list_filters p-4 pt-5">
							<form action="#" autocomplete="off" id="form1">
								<c:choose>
									<c:when test="${order == 0}">
										<div
											class="d-inline-block d-lg-flex w-100 justify-content-around">
											<div class="brand_filter my-3 d-inline-block">
												<h3>성별</h3>
												<input type="radio" id="gender" name="gender" value="%"
													checked> <label class="btn" for="gender">전체</label>
												<input type="radio" id="gender1" name="gender" value="♀">
												<label class="btn" for="gender1">여자</label> <input
													type="radio" id="gender2" name="gender" value="♂">
												<label class="btn" for="gender2">남자</label>
											</div>
											<div class="size_filter my-3 d-inline-block">
												<h3>연령대</h3>
												<input type="checkbox" id="age0" name="age" value="|"
													checked> <label class="btn" for="age0">전체</label> <input
													type="checkbox" id="age1" name="age" value="10대"> <label
													class="btn" for="age1">10대</label> <input type="checkbox"
													id="age2" name="age" value="20대"> <label
													class="btn" for="age2">20대</label> <input type="checkbox"
													id="age3" name="age" value="30대"> <label
													class="btn" for="age3">30대</label> <input type="checkbox"
													id="age4" name="age" value="40대 ↑"> <label
													class="btn" for="age4">40대 ↑</label>
											</div>
											<div class="size_filter my-3 d-inline-block">
												<h3>피부타입</h3>
												<input type="checkbox" id="skin0" name="skin" value="|"
													checked> <label class="btn" for="skin0">전체</label>
												<input type="checkbox" id="skin1" name="skin" value="건성">
												<label class="btn" for="skin1">건성</label> <input
													type="checkbox" id="skin2" name="skin" value="지성">
												<label class="btn" for="skin2">지성</label> <input
													type="checkbox" id="skin3" name="skin" value="중성">
												<label class="btn" for="skin3">중성</label> <input
													type="checkbox" id="skin4" name="skin" value="복합성">
												<label class="btn" for="skin4">복합성</label> <input
													type="checkbox" id="skin5" name="skin" value="민감성">
												<label class="btn" for="skin5">민감성</label>
											</div>
										</div>
									</c:when>
									<c:otherwise></c:otherwise>
								</c:choose>

								<div class="price_filter my-3 mx-auto d-block"
									style="width: 91%;">
									<h3 class="my-4">가격</h3>
									<div class="price_bar"></div>
									<div class="range_form my-2"
										style="font-size: calc(12px + 0.3vw);">
										<div class="d-inline-block mt-4">
											<label for="from" style="width: 100px;">From</label>
											<div class="d-inline-block">
												<input type="text" id="from" class="border-0" name="from"
													style="text-align: right;"><span>원</span>
											</div>
										</div>
										<div class="clearfix"></div>
										<div class="d-inline-block">
											<label for="to" style="width: 100px;">To</label>
											<div class="d-inline-block">
												<input type="text" id="to" class="border-0" name="to"
													style="text-align: right;"><span>원</span>
											</div>
										</div>
									</div>
								</div>

								<div class="d-flex w-100 justify-content-end">
									<input type="submit" class="btn btn-link" value="검색"
										id="submit" />
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>



			<div class="row justify-content-center" id="listPart">
				<c:forEach items="${list }" var="product" varStatus="status">
					<div class="col-12 col-sm-6 col-xl-3 my-3" data-aos="fade-up"
						data-aos-duration="500">
						<div class="card p-4 h-100">
							<div class="d-flex justify-content-center align-items-center"
								style="width: 100%; height: calc(5vw + 250px); overflow: hidden;">
								<c:set var="first"
									value="${fn:replace(product.pname, '/', '_')}" />
								<c:set var="second" value="${fn:replace(first, '[', '')}" />
								<c:set var="productName" value="${fn:replace(second, ']', '')}" />
								<img
									src="resources/img/${fn:replace(product.pcategory, '/', '_')}/${productName}.jpg"
									class="card-img mt-4 w-100">
							</div>
							<div class="card-body my-3" style="text-align: center;">
								<h5 class="card-title">${product.pname}</h5>
								<p class="card-text text-danger">${product.pbrand}</p>
							</div>
							<a href="./DetailView?pnumber=${product.pnumber }"
								class="stretched-link"></a>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</div>
<br />
<br />

<%@include file="./footer.jsp"%>
