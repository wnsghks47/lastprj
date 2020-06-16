<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./header.jsp"%>

<style>
.btn { color: white; text-align: left; }
.btn:hover { color: #dbcbbc; }
.card { background-color: rgba(0, 0, 0, 0); border: none; }
.card-header { background-color: rgba(0, 0, 0, 0); border: none; text-align: left; }
.card-body { color: white; padding-left: 2.5vw; text-align: left; }
.collapse { color: #000000; }
.faq { color: #fff; }
.outer { font-size: calc(15px + 0.25vw); }
.inner { font-size: calc(12px + 0.15vw); }
</style>

<div class="container-xl">
	<div class="row justify-content-center">
		<div class="col-10">
			<div class="row justify-content-center" style="height: calc(100px + 2.5vw); color: white;" >	 
		        <div class="col-12 d-flex justify-content-center align-items-end border-bottom border-white">
		            <h1 class="mb-4" style="letter-spacing: 5px; font-size: calc(25px + 0.7vw);">
		                F A Q</h1>
		        </div>
			</div>
			<div class="row" style="margin-bottom: 90px; margin-top: 60px;">
				<div class="col">
				
					<div class="accordion" id="accordionExample">
					
					  <div class="card">
					    <div class="card-header" id="headingOne">
					      <h2 class="mb-0">
					        <button class="btn btn-link outer" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
					          1. 랭킹
					        </button>
					      </h2>
					    </div>
					
					
					    <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
					      <div class="card-body">
					      
					        			        
					        <div class="accordion" id="accordionExample1">
							  <div class="card">
							    <div class="card-header" id="headingOne1">
							      <h2 class="mb-0">
							        <button class="btn btn-link inner" type="button" data-toggle="collapse" data-target="#collapseOne1" aria-expanded="true" aria-controls="collapseOne1">
							          · 랭킹은 어떤 식으로 정해지나요?
							        </button>
							      </h2>
							    </div>
							
							    <div id="collapseOne1" class="collapse" aria-labelledby="headingOne1" data-parent="#accordionExample1">
							      <div class="card-body inner">
							        각 제품에 해당하는 리뷰들의 평점을 기준으로 표준편차를 통한 신뢰구간을 계산하여, 구간의 최소값을 랭킹점수로 계산했습니다.
							      </div>
							    </div>
							  </div>
							  <div class="card">
							    <div class="card-header" id="headingTwo1">
							      <h2 class="mb-0">
							        <button class="btn btn-link inner" type="button" data-toggle="collapse" data-target="#collapseTwo1" aria-expanded="false" aria-controls="collapseTwo1">
							          · 검색 후 정해지는 랭킹은 무슨 차이가 있나요?
							        </button>
							      </h2>
							    </div>
							    <div id="collapseTwo1" class="collapse" aria-labelledby="headingTwo1" data-parent="#accordionExample1">
							      <div class="card-body inner">
							        각 제품의 리뷰들을 검색 조건에 따라 필터링 한 뒤, 해당 리뷰의 평점을 랭킹 산정 방법과 동일하게 적용하여 정합니다.
							      </div>
							    </div>
							  </div>
							</div>					        
					        
					      
					      </div>
					    </div>
					  </div>
					  
					  <br />
					  
					  <div class="card">
					    <div class="card-header" id="headingTwo">
					      <h2 class="mb-0">
					        <button class="btn btn-link outer" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
					         2. 사이트 이용 및 회원가입
					        </button>
					      </h2>
					    </div>
					    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
					      <div class="card-body">
					        
					        
					        <div class="accordion" id="accordionExample2">
							  <div class="card">
							    <div class="card-header" id="headingOne2">
							      <h2 class="mb-0">
							        <button class="btn btn-link inner" type="button" data-toggle="collapse" data-target="#collapseOne2" aria-expanded="true" aria-controls="collapseOne2">
							          · 회원가입 방법 및 필요한 내용이 알고 싶어요.
							        </button>
							      </h2>
							    </div>
							
							    <div id="collapseOne2" class="collapse" aria-labelledby="headingOne2" data-parent="#accordionExample2">
							      <div class="card-body inner">
							        회원가입은 홈페이지의 우측 상단에 있는 사람 모양 아이콘을 누르고, '회원 가입' 메뉴를 누르면 가입 신청 양식이 나옵니다. 서비스 이용약관에 동의하신 후 고객님의 정보를 입력해 주시면 됩니다.
							      </div>
							    </div>
							  </div>
							  <div class="card">
							    <div class="card-header" id="headingTwo2">
							      <h2 class="mb-0">
							        <button class="btn btn-link inner" type="button" data-toggle="collapse" data-target="#collapseTwo2" aria-expanded="false" aria-controls="collapseTwo2">
							          · 주소/연락처 등 개인정보를 변경하고 싶습니다.
							        </button>
							      </h2>
							    </div>
							    <div id="collapseTwo2" class="collapse" aria-labelledby="headingTwo2" data-parent="#accordionExample2">
							      <div class="card-body inner">
							        주소/연락처 등 개인정보는 마이페이지에서 수정 가능합니다. 홈페이지 우측 상단의 사람 모양 아이콘을 클릭하시면 마이페이지를 확인하실 수 있습니다.
							      </div>
							    </div>
							  </div>
							</div>	
					        
					        
					      </div>
					    </div>
					  </div>
					  
					  <br />
					  
					  <div class="card">
					    <div class="card-header" id="headingThree">
					      <h2 class="mb-0">
					        <button class="btn btn-link outer" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
					          3. 이벤트
					        </button>
					      </h2>
					    </div>
					    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
					      <div class="card-body">
					      
					      
					      	<div class="accordion" id="accordionExample3">
							  <div class="card">
							    <div class="card-header" id="headingOne3">
							      <h2 class="mb-0">
							        <button class="btn btn-link inner" type="button" data-toggle="collapse" data-target="#collapseOne3" aria-expanded="true" aria-controls="collapseOne3">
							          · 어떤 이벤트가 있나요?
							        </button>
							      </h2>
							    </div>
							
							    <div id="collapseOne3" class="collapse" aria-labelledby="headingOne3" data-parent="#accordionExample3">
							      <div class="card-body inner">
							        이벤트 내용은 수시로 변동됩니다. 공지사항 및 제품 구매 페이지, 카카오톡 플러스친구를 참고하시면 현재 진행중인 이벤트 정보를 얻으실 수 있습니다.
							      </div>
							    </div>
							  </div>
							  <div class="card">
							    <div class="card-header inner" id="headingTwo3">
							      <h2 class="mb-0">
							        <button class="btn btn-link inner" type="button" data-toggle="collapse" data-target="#collapseTwo3" aria-expanded="false" aria-controls="collapseTwo3">
							          · 이벤트 사은품을 못 받았어요.
							        </button>
							      </h2>
							    </div>
							    <div id="collapseTwo3" class="collapse" aria-labelledby="headingTwo3" data-parent="#accordionExample3">
							      <div class="card-body inner">
							        이벤트 사은품 누락 시 아래 경우에 해당하시는지 확인하신 뒤 1:1 문의, 카카오톡 플러스친구 또는 고객센터(031-607-8707)로 연락주시면 확인 도와드리겠습니다.
							      </div>
							    </div>
							  </div>
							</div>	
					      
					        
					      </div>
					    </div>
					  </div>
					  
					  
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<%@include file="./footer.jsp"%>
