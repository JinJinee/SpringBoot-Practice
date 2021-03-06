<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
	.boardList{
		overflow: auto;
	}
	
	.boardList li{
		float: left;
		width: 10%;
		border-bottom: solid 1px gray;
	}
	
	.boardList li:nth-child(5n+2){
		width: 50%;
	}
	
	.boardList li:nth-child(5n){
		width: 20%;
	}

</style>

<div class="container">
	<h1>게시판 글목록</h1>
	<div>
		<a href="#">글쓰기</a>
	</div>
	<form method="post" action="/myapp/board/multiDel" id="listFrm">
		<ul class="boardList">
			<li>번호</li>
			<li>제목</li>
			<li>글쓴이</li>
			<li>조회수</li>
			<li>등록일</li>
			
			<c:forEach var="vo" items="${lst}">
				<li>${vo.no}</li>
				<li><a href="#">${vo.subject}</a></li>
				<li>${vo.userid}</li>
				<li>${vo.hit}</li>
				<li>${vo.writedate}</li>
			</c:forEach>
			
		</ul>
		
	</form>
	
</div>