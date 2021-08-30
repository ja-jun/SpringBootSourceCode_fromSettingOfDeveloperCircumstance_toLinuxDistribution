<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 리스트</title>
<style>
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

html {
	font-family: "Noto Sans KR", sans-serif;
}

/* 노말라이즈 */
body, ul, li {
	margin: 0;
	padding: 0;
	list-style: none;
}

/* 라이브러리 */
.con {
	margin-left: auto;
	margin-right: auto;
}

/* 커스텀 */
.con {
	width: 1000px;
}

.list-box-1>table {
	width: 100%;
	border-collapse: collapse;
}

.list-box-1>table th, .list-box-1>table td {
	border: 1px solid black;
	padding: 10px;
	font-weight: bold;
}

.list-box-1>table>tbody>tr>td:nth-child(1) {
	text-align: center;
}
</style>
</head>
<body>
	<h1 class="con">게시물 리스트</h1>

	<div class="con list-box-1">
		<table>
			<colgroup>
				<col width="100">
			</colgroup>
			<thead>
				<tr>
					<th>ID</th>
					<th>제목</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${articleList}" var="article">
					<tr>
						<td>${article.id}</td>
						<td>${article.title}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>