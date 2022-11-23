<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>

.btn-warning {
    --bs-btn-color: #000;
    --bs-btn-bg: #FB9E58;
    --bs-btn-border-color: #FB9E58;
    --bs-btn-hover-color: #000;
    --bs-btn-hover-bg: #F9B581;
    --bs-btn-hover-border-color: #F9B581;
    --bs-btn-focus-shadow-rgb: 217,164,6;
    --bs-btn-active-color: #000;
    --bs-btn-active-bg: #F9B581;
    --bs-btn-active-border-color: #F9B581;
    --bs-btn-active-shadow: inset 0 3px 5pxrgba(0, 0, 0, 0.125);
    --bs-btn-disabled-color: #000;
    --bs-btn-disabled-bg: #F9B581;
    --bs-btn-disabled-border-color: #F9B581;
}
.form-control {
	color: #a3a3a3;
	border-color: #a3a3a3;
	border-radius: 30px;
}

.page-link {
	color: black;
}
</style>
</head>
<body>
	
	<div class = "container-fluid ">
		<div class="row">
			<div class="col-2">
			
			
			</div>
			<div class="col-10 pt-3" style="background-color: #F6F5F9">
				


<div class="container">
	<form action="posting.do" name="posting">

		<h3 align="center" style="color: #E8853E">게시물 관리</h3>
			<c:set var="pcategory" value="volunteer" />
		
		
		
		<div class="row justify-content-start my-2">

			<input type="hidden" name="pcategory" id="pcategory"
				value="${pcategory }">
			<h5>게시판 카테고리 선택</h5>
			
			<h3 style="color: red;">${deleteMessege }</h3>
		</div>
		
			<div class="btn-group d-flex " style="border: 1px solid silver;" role="group"
					aria-label="Basic radio toggle button group">
			
			
			<!-- 
					<input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" OnClick="window.location.href='posting.do?pcategory=volunteer';" checked> 
						<label class="btn btn-outline-secondary" for="btnradio1">전체 보기</label> 
					<input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off" OnClick="window.location.href='posting.do?pcategory=volunteer';"> 
						<label class="btn btn-outline-secondary" for="btnradio2">함께 봉사</label> 
					<input type="radio" class="btn-check" name="btnradio" id="btnradio3" autocomplete="off" OnClick="window.location.href='posting.do?pcategory=walk';"> 
						<label class="btn btn-outline-secondary" for="btnradio3">함께 산책</label>
					<input type="radio" class="btn-check" name="btnradio" id="btnradio4" autocomplete="off" OnClick="window.location.href='posting.do?pcategory=petcafe';"> 
						<label class="btn btn-outline-secondary" for="btnradio4">함께 팻카페</label>
					<input type="radio" class="btn-check" name="btnradio" id="btnradio5" autocomplete="off" OnClick="window.location.href='posting.do?pcategory=find';"> 
						<label class="btn btn-outline-secondary" for="btnradio5">찾아주세요</label>
					<input type="radio" class="btn-check" name="btnradio" id="btnradio6" autocomplete="off" OnClick="window.location.href='posting.do?pcategory=found';"> 
						<label class="btn btn-outline-secondary" for="btnradio6">찾았어요</label>
			 -->
				
			
			
			
			
			  <a href="posting.do?pcategory=all" class="btn btn-light active " aria-current="page" >전체 보기</a>
			  <a href="posting.do?pcategory=volunteer" class="btn btn-light">함께 봉사</a>
			  <a href="posting.do?pcategory=walk" class="btn btn-light">함께 산책</a>
			  <a href="posting.do?pcategory=petcafe" class="btn btn-light">함께 펫카페</a>
			  <a href="posting.do?pcategory=find" class="btn btn-light">찾아주세요</a>
			  <a href="posting.do?pcategory=found" class="btn btn-light">찾았어요</a>
			
			</div>
		
		<div class="row my-3">
				<div class="col-3"></div>
				<!-- 드롭다운  -->
			
				<div class="col-1">
					<select class="form-select " 
						aria-label="Default select example" name="option">
						<option value="ptitle" selected>제목</option>
						<option value="user_uid">작성자</option>
						<option value="plocation">장소</option>
					</select>
				</div>
				<!-- 검색  -->
				<div class="col-4">
					<input type="text" class="form-control" name="query"
						id="exampleFormControlInput1" placeholder="검색어를 입력해 주세요">
				</div>

				<!-- 검색 버튼 -->
				<div class="col-2">
					<input class="btn btn-warning " name="inputtype" type="submit" value="검색">
					<input class="btn btn-warning " name="inputtype" type="submit" value="삭제">
				</div>
			
			
				
			<div class="col-1">
				<c:choose>
					<c:when test="${user.utype eq 'companion' }">
						<button class="btn btn-warning" type="button"
							onclick="changeForm()" style="display: block">작성</button>
					</c:when>

					<c:otherwise>
						<button class="btn btn-warning" type="button"
							onclick="changeForm()" style="display: none">작성</button>
					</c:otherwise>
				</c:choose>
			</div>
			<div class="col-1"></div>
		</div>

		<div class="row justify-content-center my-5">
			<table class="table ">
				<thead style="background-color: #FB9E58;" align="center">
					<tr>
						<th scope="col">번호</th>
						<th scope="col">제목</th>
						<th scope="col">작성자</th>
						<th scope="col">시간</th>
						<th scope="col">장소</th>
					</tr>
				</thead>

				<tbody style="background-color: #FFFFFF;">
					<!--   -->
					<c:forEach var="list" items="${postingList}" varStatus="status">
						<tr>
							<th scope="row"><input type="checkbox" name="deletecheck" value="${list.pid }"> &nbsp; ${paging.endRow - status.index }</th>
							<td><a
								href="posting_click.do?pid=${list.pid }&user_uid=${list.user_uid}&pcategory=${list.pcategory}">${list.ptitle }</a></td>
							<td>${list.user_uid }</td>
							<td>${list.pinitdate }</td>
							<td>${list.plocation }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

		<div class="row justify-content-center my-2">

			<nav aria-label="Page navigation example ">
				<ul class="pagination justify-content-center">
					<c:set var="startPage" value="paging.startPage" />
					<c:choose>

						<c:when test="${paging.startPage eq '1'}">
							<!-- if -->
							<li class="page-item"><a class="page-link" href="#">Previous
							</a></li>
						</c:when>

						<c:otherwise>
							<!-- else -->
							<li class="page-item"><a class="page-link"
								href="posting.do?page=${paging.startPage - 1}&pcategory=${param.pcategory }">Previous
							</a></li>
						</c:otherwise>

					</c:choose>
					<!-- int = startPage; i <= endPage; i++ -->
					<c:forEach var="count" begin="${paging.startPage}"
						end="${paging.endPage}">
						<li class="page-item"><a class="page-link"
							href="posting.do?page=${count}&pcategory=${param.pcategory }">${count}
						</a></li>
					</c:forEach>

					<c:choose>

						<c:when test="${paging.totalPages eq paging.endPage}">
							<!-- if -->
							<li class="page-item"><a class="page-link" href="#">> </a></li>
						</c:when>

						<c:otherwise>
							<!-- else -->
							<li class="page-item"><a class="page-link"
								href="posting.do?page=${paging.endPage + 1}&pcategory=${param.pcategory }">Next
							</a></li>
						</c:otherwise>

					</c:choose>
				</ul>
			</nav>
		</div>
	</form>
</div>

				<!-- command에서 이걸 갈아 끼울 것이다.  -->			
				<%-- <jsp:include page="component/${content_viewpage }"></jsp:include> --%>			
			</div>
		</div>
	
	</div>
	
	
<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
</html>