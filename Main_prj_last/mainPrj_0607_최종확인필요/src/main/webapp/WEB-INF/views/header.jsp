<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>First Place - YOUR CHOICE IS HERE</title>
    <link rel="shortcut icon" type="image⁄x-icon" href="resources/img/wolf.ico">
    <link href="https://fonts.googleapis.com/css2?family=Gudea&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Cinzel&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script src="resources/js/parallax.min.js"></script>
    <script>
    
        $(document).ready(function() {
            $('#carousel-product-img').on('slid.bs.carousel', function(e) {

                $('#carousel-product-text').carousel(e.to);

                $('#carousel-product-feature').carousel(e.to);

            });
            
            $('input[type="text"]').keydown(function() {
                if (event.keyCode === 13) {
                    event.preventDefault();
                };
            });

        });
    
    </script>
    <style>
        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Noto Sans KR', sans-serif;
            color: #3e3f41;
            margin-top: 90px;
            padding: 0px;
            background-color: #0f4c81;
        }

        .animate {
            animation-duration: .3s;
            -webkit-animation-duration: .3s;
            animation-fill-mode: both;
            -webkit-animation-fill-mode: both;
        }

        @keyframes slideIn {
            0% {
                transform: translateY(1rem);
                opacity: 0;
            }

            100% {
                transform: translateY(0rem);
                opacity: 1;
            }

            0% {
                transform: translateY(1rem);
                opacity: 0;
            }
        }

        @-webkit-keyframes slideIn {
            0% {
                -webkit-transform: transform;
                -webkit-opacity: 0;
            }

            100% {
                -webkit-transform: translateY(0);
                -webkit-opacity: 1;
            }

            0% {
                -webkit-transform: translateY(1rem);
                -webkit-opacity: 0;
            }
        }

        .slideIn {
            -webkit-animation-name: slideIn;
            animation-name: slideIn;
        }

        .dropdown-menu {
            background-color: white;
        }

        .navbar-light .navbar-nav .nav-link:hover,
        .navbar-light .navbar-nav .nav-link:focus {
            color: #0f4c81;
        }

        .dropdown-item:hover,
        .dropdown-item:focus {
            color: white;
            text-decoration: none;
            background-color: #0f4c81;
        }

        .btn-link {
            font-weight: 900;
            color: #0f4c81;
            text-decoration: none;
        }

        .btn-link:hover {
            color: white;
            background-color: #0f4c81;
            text-decoration: none;
        }

        .btn-link:focus,
        .btn-link.focus {
            text-decoration: none;
            box-shadow: none;
        }

        .form-control:focus {
            box-shadow: 0 0 0 0.05rem rgb(15, 76, 129);
        }

        .carousel-img {
            max-width: calc(750px + 30vw);
            height: auto;
        }

        #myBtn {
            display: none;
            position: fixed;
            bottom: 12px;
            right: 12px;
            z-index: 99;
            color: white;
            background-color: #dbcbbc;
            border: 1px solid #dbcbbc;
            outline: none;
            cursor: pointer;
            padding: calc(9px + 0.25vw);
            font-size: calc(14px + 0.25vw);
            border-radius: 2px;
        }

        .search {
            display: inline-block;
            width: 1.4em;
            height: 1.4em;
            background: url(resources/img/아이콘/search.svg) no-repeat center center;
            transition: background .2s;
            margin-top: 3px;
            margin-right: 5px;

        }

        .search:hover {
            background: url(resources/img/아이콘/search-hover.svg) no-repeat center center;
        }

        .person {
            display: inline-block;
            width: 1.7em;
            height: 1.7em;
            background: url(resources/img/아이콘/person.svg) no-repeat center center;
            transition: background .2s;

        }

        .person:hover {
            background: url(resources/img/아이콘/person-hover.svg) no-repeat center center;
        }

        .justify {
            display: inline-block;
            width: 1.7em;
            height: 1.7em;
            background: url(resources/img/아이콘/justify.svg) no-repeat center center;
            transition: background .2s;

        }

        .justify:hover {
            background: url(resources/img/아이콘/justify-hover.svg) no-repeat center center;
        }
		
		a {
			cursor: pointer;
		}
		
    </style>
</head>

<body>

<header>
	<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
	<nav class="navbar navbar-expand-lg navbar-light fixed-top p-0" style="height: 90px; background-color: white;">
		<a class="navbar-brand d-flex  align-items-center ml-3 mr-0" href="./" style="font-family: 'Gudea', sans-serif;"> 
			<img src="resources/img/아이콘/wolf.svg" class="mr-1"> 
			<strong class="h3 mb-0" style="font-weight: 900; letter-spacing: 5px; font-size: calc(10px + 1vw)">First Place</strong>
		</a>
		<button class="navbar-toggler border-0 mr-3" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown" style="background-color: white;">
			<ul class="navbar-nav m-4 d-inline-flex justify-content-around" style="width: 90%;">
				<li class="nav-item dropdown">
					<a class="nav-link" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
						<strong class="h6" style="font-weight: 1000">스킨케어</strong>
					</a>
					<div class="dropdown-menu animate slideIn"
						aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item py-2" href="ListView?c=1&order=0">스킨/토너</a> 
						<a class="dropdown-item py-2" href="ListView?c=2&order=0">로션/에멀젼</a> 
						<a class="dropdown-item py-2" href="ListView?c=3&order=0">에센스/세럼</a> 
						<a class="dropdown-item py-2" href="ListView?c=4&order=0">크림</a> 
						<a class="dropdown-item py-2" href="ListView?c=5&order=0">올인원</a> 
						<a class="dropdown-item py-2" href="ListView?c=6&order=0">마스크/팩</a> 
						<a class="dropdown-item py-2" href="ListView?c=7&order=0">선크림</a>
					</div>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
						<strong class="h6" style="font-weight: 1000">클렌징</strong>
					</a>
					<div class="dropdown-menu animate slideIn" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item py-2" href="#">페이셜클렌저</a> 
						<a class="dropdown-item py-2" href="#">스크럽/필링</a>
					</div>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
						<strong class="h6" style="font-weight: 1000">쉐이빙</strong>
					</a>
					<div class="dropdown-menu animate slideIn" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item py-2" href="#">쉐이빙폼</a> 
						<a class="dropdown-item py-2" href="#">에프터쉐이브</a> 
						<a class="dropdown-item py-2" href="#">면도기</a>
					</div>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
						<strong class="h6" style="font-weight: 1000">헤어</strong>
					</a>
					<div class="dropdown-menu animate slideIn" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item py-2" href="#">헤어샴푸/린스</a> 
						<a class="dropdown-item py-2" href="#">헤어스타일링</a>
					</div>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
						<strong class="h6" style="font-weight: 1000">배쓰/바디</strong>
					</a>
					<div class="dropdown-menu animate slideIn" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item py-2" href="#">바디케어</a> 
						<a class="dropdown-item py-2" href="#">배쓰/샤워</a> 
						<a class="dropdown-item py-2" href="#">데오드란트</a>
					</div>
				</li>
				<li class="nav-item dropdown d-lg-none">
					<a class="nav-link" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
						<strong class="h6" style="font-weight: 1000">게시판</strong>
					</a>
					<div class="dropdown-menu animate slideIn" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item py-2" href="qnaview">문의게시판</a> 
						<a class="dropdown-item py-2" href="event">이벤트게시판</a> 
						<a class="dropdown-item py-2" href="faq">F A Q</a>
					</div>
				</li>
				<li class="nav-item d-lg-flex d-none" style="align-items: center;">
					<div class="d-flex justify-content-around mt-1" style="width: 10vw">
						<div>
							<a class="search" type="button" class="btn btn-primary" data-toggle="modal" data-target="#searchPopup"></a>
						</div>
						<div>
							<a class="person" href="Login"></a>
						</div>
						<div>
							<div class="dropdown">
							  <a class="justify" id="justifyDropdown" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
							  <div class="dropdown-menu dropdown-menu-right animate slideIn" aria-labelledby="justifyDropdown">
							    <button class="dropdown-item py-2" type="button" onclick="location.href='qnaview'">문의게시판</button>
							    <button class="dropdown-item py-2" type="button" onclick="location.href='event'">이벤트게시판</button>
							    <button class="dropdown-item py-2" type="button" onclick="location.href='faq'">F A Q</button>
							  </div>
							</div>
						</div>
					</div>
				</li>
				<li class="nav-item d-lg-none">
					<a class="btn btn-link btn-sm ml-2 mr-n2 float-right" href="#" role="button" data-toggle="modal" data-target="#searchPopup"> 
						<strong style="letter-spacing: 5px;">SEARCH</strong>
					</a>
					<a class="btn btn-link btn-sm float-right" href="Login" role="button"> 
						<strong style="letter-spacing: 5px;">
							<c:if test="${member == null }">
							LOGIN
							</c:if>
							<c:if test="${member != null }">
							MY PAGE
							</c:if>
						</strong>
					</a>
				</li>
			</ul>
		</div>
	</nav>
	<div class="modal fade" id="searchPopup" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog modal-xl" role="document">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body mt-5">
					<form action="SearchView" method="post" autocomplete="off" class="my-5 mx-2 py-3 border-bottom border-secondary d-flex justify-content-around">
						<input type="text" class="form-control" name="search" id="search_field" style="width: 100%; height: 100%; border: none;" placeholder="Search"> 
						<input type="submit" class="search mt-2" value="" style="border: none; position: absolute; right: 40px;">
					</form>
				</div>
				<div class="modal-footer justify-content-start" style="border: none;">
					<div class="my-5 mx-2 py-3">
						<p class="ml-3" style="color: #0f4c81;">RECOMMEND KEYWORDS</p>
						<ul class="nav">
							<li class="nav-item"><span class="nav-link disabled">클렌징</span></li>
							<li class="nav-item mx-n2"><span class="nav-link disabled">|</span></li>
							<li class="nav-item"><span class="nav-link disabled">앰플</span></li>
							<li class="nav-item mx-n2"><span class="nav-link disabled">|</span></li>
							<li class="nav-item"><span class="nav-link disabled">선크림</span></li>
							<li class="nav-item mx-n2"><span class="nav-link disabled">|</span></li>
							<li class="nav-item"><span class="nav-link disabled">타마누 오일</span></li>
							<li class="nav-item mx-n2"><span class="nav-link disabled">|</span></li>
							<li class="nav-item"><span class="nav-link disabled">계면활성제</span></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>

<div class="parallax-window" data-parallax="scroll" data-image-src="resources/img/wolf-background.png"> 
