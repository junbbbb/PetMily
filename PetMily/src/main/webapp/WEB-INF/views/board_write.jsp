<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style>


#inputGroupFile04 {
	color: #a3a3a3;
	padding-top: 0.85rem;
	padding-bottom: 0.85rem;
	box-shadow: 0px 0px 0px 0px rgba(0, 0, 0, 0);
	border-color: #a3a3a3;
	border-radius: 0px;
}

#list {
	color: #a3a3a3;
	border-radius: 10px;
	border-color: #a3a3a3;
	padding-top: 0.75rem;
	padding-bottom: 0.75rem;
	box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5);
}
</style>
</head>
<body>
<form action="write" enctype="multipart/form-data" method="post">
	<div class="container">
		<div class="row text-center">
			<h3 style="margin: 100px 50px 10px 0px">
				<strong>게시물 작성</strong>
			</h3>
		</div>

		<div class="row justify-content-center">
			<div class="row justify-content-center ">
				<div class="col-4 mb-3 gy-4">
					<label for="exampleFormControlInput1" class="form-label">작성자
					</label> <input type="text" class="form-control" name="writer"
						id="exampleFormControlInput1" placeholder="닉네임을 입력해 주세요">
				</div>
				<div class="col-2"></div>
			</div>
		</div>
		
		<div class="row justify-content-center">
			<div class="row justify-content-center ">
				<div class="col-4 mb-3 gy-4">
					<label for="exampleFormControlInput1" class="form-label">제목
					</label> <input type="text" class="form-control" name="title"
						id="exampleFormControlInput1" placeholder="제목을 입력해 주세요">
				</div>
				<div class="col-2"></div>
			</div>
		</div>


		<div class="row justify-content-center">
			<div class="col-6 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">내용</label>
				<textarea class="form-control" id="exampleFormControlTextarea1" name="content"
					rows="10"></textarea>
			</div>
		</div>

		<!-- 주소 -->
		<div class="row justify-content-center ">
			<div class="col-4 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">주소
				</label> <input type="text" class="form-control" name="plocation_basic"
					id="plocation_basic" placeholder="주소를 입력해 주세요" readonly>
			</div>
			<!-- 주소 검색 버튼 -->
			<button class="btn btn-warning col-1 gy-2 align-self-center"
				type="button" id="address_search" onclick="sample4_execDaumPostcode()"
				style="margin-top: 1.5rem; padding-top: 0.7rem; padding-bottom: 0.7rem;">검색</button>
			<div class="col-1 gy-2"></div>
		</div>

		<!-- 상세주소 입력 -->
		<div class="row justify-content-center ">
			<div class="col-6 mb-3">
				<input type="text" class="form-control" name="plocation_detail"
					id="exampleFormControlInput1" placeholder="상세 주소를 입력해 주세요">
			</div>
		</div>

		<!-- 폴더에서 사진 추가 -->
		<div class="row justify-content-center">
			<div class="col-6 mb-3 gy-3">
				<label for="exampleFormControlInput1" class="form-label">사진
					업로드 </label>
					<input type="file" class="form-control my-2" id="file1" name="file1"
						aria-describedby="inputGroupFileAddon04" aria-label="Upload" accept="image/*">
						<input type="file" class="form-control my-2" id="file2" name="file2"
						aria-describedby="inputGroupFileAddon04" aria-label="Upload" accept="image/*">
						<input type="file" class="form-control my-2" id="file3" name="file3"
						aria-describedby="inputGroupFileAddon04" aria-label="Upload" accept="image/*">
					
			</div>

		</div>

		<!-- 등록 버튼 -->
		<div class="row justify-content-center my-5 text-center">
			<div class="col-4">
				<input class="btn btn-warning w-100" type="submit" value="등록" >
			</div>
		</div>
	</div>
</form>
</body>
</html>