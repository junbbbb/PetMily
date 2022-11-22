<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
	
	
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



	<div class="container" style="padding-top: 80px">
		<div class="row justify-content-center text-center">

			<div class="col-4">

				<h3>PETMILY</h3>
			</div>
		</div>
		<form action="login" method="post">
		<div class="row justify-content-center ">
			<div class="col-4 mb-3 gy-3">
				<input type="text" class="form-control" name="id"
					placeholder="아이디를 입력해 주세요">
			</div>
		</div>

		<div class="row justify-content-center ">
			<div class="col-4 mb-3">
				<input type="password" class="form-control" name="pw"
					placeholder="비밀번호를 입력해 주세요">
			</div>
		</div>

		<div class="row justify-content-center my-3 text-center">
			<div style="color: red;" >
				${loginStatus }
			</div>
		
			<div class="d-grid gap-2 col-4 mx-auto my-3">
				<input type="submit" class="btn btn-primary" value="로그인" 
					style="background-color: #e8853e; padding-top: 0.9rem; padding-bottom: 0.9rem; box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5); border-color: #a3a3a3">
				<!-- <button class="btn btn-primary" type="button"
					onClick="location.href='login.jsp'"
					style="background-color: #e8853e; padding-top: 0.9rem; padding-bottom: 0.9rem; box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5); border-color: #a3a3a3">
					로그인</button> -->
			</div>
		</div>
		</form>	

		<div class="row justify-content-center">
			<div class="d-flex col-4 mb-3">
				<div class="me-auto p-2">
					<a href="signup.jsp" style="color: #a3a3a3;">회원가입</a>
				</div>
				<div class="p-2">
					<a href="#" style="color: #a3a3a3;">ID 찾기</a>
				</div>
				<div class="p-2">
					<a href="#" style="color: #a3a3a3;">PW 찾기</a>
				</div>
			</div>

		</div>

		<div class="row justify-content-center my-3">
			<div class="d-grid gap-2 col-4 mx-auto">
				<a
					href="https://kauth.kakao.com/oauth/authorize?client_id=c0adedd90ef6ae1146e57b65fcf48e85&redirect_uri=	
								http://localhost:8080/PetmilyCustomer/sign_up_kakao.do&response_type=code">
					<button class="btn btn-warning" type="button"
						style="color: #A39A42; font-padding: 1 rem; width: 100%; padding-top: 0.75rem; padding-bottom: 0.75rem; box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5); background-color: #FFE700; border-color: #FFE700">
						<img src="images/kakaotalk.png"
							style="width: 1.8rem; height: 1.8rem; margin-right: 0.6rem">카카오
						로그인
					</button>
				</a>
			</div>
		</div>
		<div class="row justify-content-center my-3">
			<div class="d-grid gap-2 col-4 mx-auto">
				<button class="btn btn-outline-secondary" type="button"
					style="color: #a3a3a3; padding-top: 0.75rem; padding-bottom: 0.75rem; box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5); border-color: #a3a3a3">
					<img src="images/google.png"
						style="width: 1.8rem; height: 1.8rem; margin-right: 0.6rem">
					구글 로그인
				</button>
			</div>
		</div>

	</div>

</body>
</html>