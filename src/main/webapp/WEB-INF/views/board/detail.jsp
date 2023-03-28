<%@page import="java.security.Principal"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
</head>
<body>


<table border="1">
		<tr>
			<th>글번호</th>
			<th>닉네임 </th>
			<th>음식 이름</th>
			<th>음식 재료</th>
			<th>내용</th>
			<th>작성일</th>
		</tr>

		<tr>
			<td>${post.postId }</td>
			<td>${post.nickname }</td>
			<td>${post.foodName }</td>
			<td>
				<c:forEach items="${post.ingredients }" var="ing" varStatus="status">
					${ing.ingredient } : ${ing.amount } /
				</c:forEach>
			</td>
			<td>${post.content }</td>
			<td>${post.createDate }</td>
		</tr>
</table>

아이콘으로 대체 예정
<div id="bookmark">
북마크 :

	<c:if test="${isBookmarked }">
		<span id="isBookmarked">O</span>
		<button id="bookmarkBtn">북마크 취소</button>
	</c:if>
	<c:if test="${isBookmarked eq false }">
		<span id="isBookmarked">X</span>
		<button id="bookmarkBtn">북마크 하기</button>
	</c:if>

</div>



<div id="follow">
팔로우 :

	<c:if test="${isFollowed }">
		<span id="isFollowed">O</span>
		<button id="followBtn">팔로우 취소</button>
	</c:if>
	<c:if test="${isFollowed eq false }">
		<span id="isFollowed">X</span>
		<button id="followBtn">팔로우</button>
	</c:if>



</div>

<div id="like">
좋아요:

	<c:if test="${isLiked }">
	 	<span id="isLiked">O</span> 
		<button id="likeBtn">좋아요 취소</button>
	</c:if>
	<c:if test="${isLiked eq false }">
		<span id="isLiked">X</span>
		<button id="likeBtn">좋아요</button>
	</c:if>


</div>

<div>
	<a href="<%=request.getContextPath()%>/board/list/update/${post.postId }">게시글 수정</a>
</div>
<div>
	<table>
		<c:forEach items="${comment }" var="cvo" varStatus="s">
			<tr>
				<td colspan="2">${cvo.userId }</td>
			</tr>
			<tr>
				<td colspan="2">${cvo.content }</td>
			</tr>
			<tr>
				<td>${cvo.updateAt }</td>
				<td>
				댓글쓰기
				<sec:authorize var="loggedIn" access="isAuthenticated()" />
				<c:if test="${loggedIn }">
					<c:set var="lgnuser"><%=request.getUserPrincipal().getName() %></c:set>
				</c:if>
					<c:choose>
						<c:when test="${loggedIn}">
							<c:if test="${lgnuser eq cvo.userId }">
								| 댓글수정 | 댓글삭제
							</c:if>
						</c:when>
						<c:otherwise />
					</c:choose>
				</td>
			</tr>
			<tr class="editbox ${cvo.cmtId }">
				<td>
					<textarea rows="3" cols="70">${cvo.content }</textarea>
					<br>
					<button type="button">수정</button>
					<button type="exit_box_${cvo.cmtId }">취소</button>
				</td>
			</tr>
		</c:forEach>
	</table>
</div>
<div>
	<sec:authorize var="loggedIn" access="isAuthenticated()" />
	<c:choose>
		<c:when test="${loggedIn}">
			<form action="<%=request.getContextPath() %>/board/insertcmt/${post.postId }" method="post">
				<textarea rows="3" cols="70"></textarea>
				<br>
				<button type="button">댓글 작성</button>
			</form>
		</c:when>
		<c:otherwise />
	</c:choose>
</div>
<div>
	<c:if test="${loggedIn}">
		<c:set var="user" value="<%=request.getUserPrincipal().getName() %>"/>
		<c:if test="${user eq post.userId}">
			<button id="deletePost">게시글 삭제</button>
		</c:if>
	</c:if>
</div>


<script type="text/javascript">
$(document).ready(function() {
	$(".editbox").hide();
})

$(document).on("click","#bookmark" ,function() {
	$.ajax({
		url: "<%=request.getContextPath()%>/bookmark",
		type: "POST", 
		data: {postId: ${post.postId}},
		async : false,
		success:function(result){
			if(result==false){
				var htmlVal= "북마크 : <span id='isBookmarked'> X </span><button id='bookmarkBtn'>북마크</button>";
				$("#bookmark").html(htmlVal);
			}else if(result==true){
				var htmlVal= "북마크 : <span id='isBookmarked'> O </span><button id='bookmarkBtn'>북마크 취소</button>";
				$("#bookmark").html(htmlVal);
			}
		}
		
	});
});


$(document).on("click","#followBtn" ,function() {
	var isFollowed = $("#isFollowed").text();
	$.ajax({
		url: "<%=request.getContextPath()%>/follow",
		type: "POST", 
		data: {fwId: "${post.userId }" },
		async : false,
		success:function(result){
			if(result==false){
				var htmlVal= "팔로우 : <span id='isFollowed'> X </span><button id='followBtn'>팔로우</button>";
				$("#follow").html(htmlVal);
			}else if(result==true){
				var htmlVal= "팔로우 : <span id='isFollowed'> O </span><button id='followBtn'>팔로우 취소</button>";
				$("#follow").html(htmlVal);
			}
		}
		
	});
});


$(document).on("click","#like" ,function() {
	$.ajax({
		url: "<%=request.getContextPath()%>/like",
		type: "POST", 
		data: {postId: ${post.postId}},
		async : false,
		success:function(result){
			if(result==false){
				var htmlVal= "좋아요 : <span id='isLiked'> X </span><button id='likeBtn'>좋아요</button>";
				$("#like").html(htmlVal);
			}else if(result==true){
				var htmlVal= "좋아요 : <span id='isLiked'> O </span><button id='likeBtn'>좋아요 취소</button>";
				$("#like").html(htmlVal);
			}
		}
		
	});
});

$("#deletePost").click(function(){
	$.ajax({
	  url: "<%=request.getContextPath()%>/board/delete",
	  type: "POST", 
	  data: {postId: ${post.postId}},
	  success:function(result){
			console.log(result);
			location.href ="<%=request.getContextPath()%>/board/list"
		}
	});

})



</script>

</body>
</html>