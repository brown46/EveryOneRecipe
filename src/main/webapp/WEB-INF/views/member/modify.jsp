<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>개인정보 수정</title>

<%@ include file="/WEB-INF/views/css_import.jsp"%>
<script src="https://code.jquery.com/jquery-3.6.3.js"
	integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/modify.js"></script>
<style>
.modal {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	display: none;
	background-color: rgba(0, 0, 0, 0.4);
}

.modal.show {
	display: block;
}

.modal_body {
	position: absolute;
	top: 50%;
	left: 50%;
	width: 400px;
	height: 600px;
	padding: 40px;
	text-align: center;
	background-color: rgb(255, 255, 255);
	border-radius: 10px;
	box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);
	transform: translateX(-50%) translateY(-50%);
}

.font {
	font-family: serif, sans-serif;
	font-size: 14px;
	color: #333;
}

.inputdiv {
	border-top: 2px solid rgb(81, 81, 81);
	border-bottom: 1px solid rgb(221, 221, 221);
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/header.jsp"%>

	<div class="container">
		<div class="row">

			<div class="col-md-2 col-xs-12">
				<ul class="navbar-nav">
					<li class="nav-item active"><a class="nav-link"
						href="<%=request.getContextPath()%>/member/myinfo">내 정보 보기</a></li>
					<li class="nav-item "><a class="nav-link"
						href="<%=request.getContextPath()%>/member/update">내 정보 수정 </a></li>
					<li class="nav-item "><a class="nav-link"
						href="<%=request.getContextPath()%>/member/infoupdate">개인정보 수정</a></li>
					<li class="nav-item "><a class="nav-link"
						href="<%=request.getContextPath()%>/member/bookmark">북마크한 게시물</a></li>
					<li class="nav-item "><a class="nav-link"
						href="<%=request.getContextPath()%>/member/like">좋아요 표시한 게시물</a></li>
				</ul>

			</div>


			<div class="col-md-10 col-md-offset-2 col-xs-12">
				<div class="row">
					<div class="col-8">
						<form id="updateForm">
							<div>
								<h5>개인 정보 수정</h5>
							</div>
							<div class="inputdiv">
								<div class="row">
									<div class="col-sm-4">
										<label>아이디</label>
									</div>
									<div class="col-sm-4">
										<input type="text" name="userId" value="${memberDto.userId }"
											readonly="${memberDto.userId }">
									</div>
									<div class="colsm-4">여기도  나눠진 구역</div>
								</div>
								<div class="row">
									<div class="col-sm-4">
										<label>비밀번호</label>
									</div>
									<div class="col-sm-4">
										<input type="password" name="password"
											value="${memberDto.password }" placeholder="현재 비밀번호를 입력해주세요.">
									</div>
									<div class="col-sm-4">여기도  나눠진 구역</div>
								</div>
								<div class="row">
									<div class="col-sm-4">
										<label>새 비밀번호</label>
									</div>
									<div class="col-sm-4">
										<input type="password" name="password"
											value="" placeholder="새 비밀번호를 입력해주세요.">
									</div>
									<div class="col-sm-4">여기도  나눠진 구역</div>
								</div>
								<div class="row">
									<div class="col-sm-4">
										<label>새 비밀번호 확인</label>
									</div>
									<div class="col-sm-4">
										<input type="password" name="password"
											value="" placeholder="새 비밀번호를 다시 입력해주세요.">
									</div>
									<div class="col-sm-4">여기도  나눠진 구역</div>
								</div>
								<div class="row">
									<div class="col-sm-4">
										<label>이메일</label>
									</div>
									<div class="col-sm-4">
										<input type="email" name="email"
											value="">
									</div>
									<div class="col-sm-4">
										<button>중복확인</button>
									</div>
								</div>
							</div>
							<div align="center">
								<button id="" type="submit">탈퇴하기</button>
								<button id="modifyBtn" type="submit">회원정보수정</button>
							</div>
						</form>
					</div>
				</div>


			</div>
		</div>
	</div>




	<%@ include file="/WEB-INF/views/footer.jsp"%>
	<%@ include file="/WEB-INF/views/js_import.jsp"%>

	<script>
	$(document).on("click","#modifyBtn", function(event) {
	    event.preventDefault();
	    var password = $.trim($("input[name=password]").val());
	    console.log("~~~~~~~~~~~~~~입력된 암호:" + password);
	    if (password.length !== 0) {
	        $.ajax({
	            url: '<%=request.getContextPath()%>/member/infoupdate',
	            type: 'POST',
	            data: JSON.stringify({password: password}),
	            contentType: 'application/json',
	            success:function(result){
	            	console.log("서버 응답:", result); 
	                if (result === "success") {
	                    console.log("어어 됐다??"+ password);
	                    location.href="<%=request.getContextPath()%>/member/modify";
	                } else {
	                    alert("비밀번호가 일치하지 않습니다.");
	                }
	            },
	            error:function(){
	                alert("오류가 발생하였습니다. 다시 시도해주세요.");
	            }
	        });
	    }
	});
	</script>
</body>
</html>