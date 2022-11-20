<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Petmily</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>

<!-- header[S] -->
<nav class="navbar navbar-expand-lg shadow-sm">
	<div class="container-fluid">
		<a class="navbar-brand" href="home.do"><img
			src="/images/logo.png" width="45" height="40"
			style="margin-right: 1rem;"> PETMILY</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse " id="navbarNavDropdown">
			<ul class="navbar-nav mx-auto">

				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="home.do"> HOME </a></li>

				<li class="nav-item"><a class="nav-link mx-2"
					href="pet_dictionary_card.do?pstype=dog">펫과사전</a></li>
				<li class="nav-item"><a class="nav-link mx-2" href="error.do">도전</a></li>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle mx-2"
					href="posting.do?pcategory=volunteer" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"> 함께 </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item"
							href="posting.do?pcategory=volunteer">함께 봉사</a></li>
						<li><a class="dropdown-item" href="posting.do?pcategory=walk">함께
								산책</a></li>
						<li><a class="dropdown-item"
							href="posting.do?pcategory=petcafe">함께 펫카페</a></li>
					</ul></li>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle mx-2"
					href="posting.do?pcategory=find" role="button"
					data-bs-toggle="dropdown" aria-expanded="false">구조 </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="posting.do?pcategory=find">찾아주세요</a></li>
						<li><a class="dropdown-item"
							href="posting.do?pcategory=found">찾았어요</a></li>
					</ul></li>
			</ul>

			<ul class="navbar-nav justify-content-end">

				<li class="nav-item"><a class="nav-link mx-2"
					href="signup_page.do">회원가입</a></li>

				<li class="nav-item"><a class="nav-link mx-2"
					href="login_page.do">로그인</a></li>

			</ul>
		</div>
	</div>
</nav>
<!-- header[E] -->

<div style="margin: 50px 400px 0px 400px" align="center">
<h1>PETMILY BOARD</h1>
</div>

<!-- search[S] -->
<div style="margin: 50px 0px 0px 200px">
<div class="row my-3">
				<div class="col-3"></div>
				
				<!-- 드롭다운  -->
				<div class="col-1">
					<select class="form-select w-100"
						aria-label="Default select example" name="option">
						<option value="ptitle" selected>번호</option>
						<option value="user_uid">제목</option>
						<option value="plocation">내용</option>
						<option value="plocation">작성자</option>
						<option value="plocation">날찌</option>
					</select>
				</div>
				
				<!-- 검색  -->
				<div class="col-3">
					<input type="text" class="form-control" name="query"
						id="exampleFormControlInput1" placeholder="검색어를 입력해 주세요">
				</div>

				<!-- 검색 버튼 -->
				<div class="col-1">
					<input class="btn btn-warning " type="submit" value="검색">
				</div>
</div>
</div>
<!-- search[E] -->

<!-- table[S] -->
<form action="write_view" method="post">
<div class="row justify-content-center my-5" style="margin: 100px 400px 0px 400px">
		<table class="table text-center" >
			<thead style="background-color: #FB9E58;">
				<tr>
					<th scope="col" style="width: 80px;">번호</th>
					<th scope="col" style="width: 200px;">제목</th>
					<th scope="col" style="width: 500px;">내용</th>
					<th scope="col" style="width: 200px;">작성자</th>
					<th scope="col" style="width: 200px;">날짜</th>
				</tr>
			</thead>

			<tbody>

				<c:forEach items="${list}" var="dto">
					<tr>
						<td>${dto.seqno}</td>
						<td>${dto.title}</td>
						<td><a href="content_view?seqno=${dto.seqno}">${dto.content}</a></td>
						<td>${dto.writer}</td>
						<td>${dto.initdate}</td>
					</tr>
				</c:forEach>			

			</tbody>
		</table>
		<!-- 등록 버튼 -->
		<div class="row justify-content-center my-5 text-center">
			<div class="col-4">
				<input class="btn btn-warning w-100" type="submit" value="등록" >
			</div>
		</div>
</div>
</form>
<!-- table[E] -->
</html>