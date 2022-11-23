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
	
	<link rel='stylesheet' href='//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css'>
<style>
.bd-navbar {
  position: sticky;
  top: 0;
  z-index: 1071;
  min-height: 4rem;
  box-shadow: 0 0.5rem 1rem rgba(0,0,0,.05), inset 0 -1px 0 rgba(0,0,0,.1);
}
.bd-sidebar {
  position: sticky;
  top: 4rem;
  z-index: 1000;
  height: calc(100vh - 4rem);
  background: #eee;
  border-right: 1px solid rgba(0,0,0,.1);
  overflow-y: auto;
  min-width: 160px;
  max-width: 220px;
}
.bd-sidebar .nav {
  display: block;
}
.bd-sidebar .nav>li>a {
  display: block;
  padding: .25rem 1.5rem;
  font-size: 90%;
}
</style>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
	
	
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

<!-- sidebar[S] -->

<div class="container-fluid">
    <div class="row flex-nowrap">
        <div class="col-auto col-md-3 col-xl-2 px-sm-2 px-0  bg-light text-dark">
            <div class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-white min-vh-100">
                <a href="/" class="d-flex align-items-center pb-3 mb-md-0 me-md-auto text-white text-decoration-none">
                    <span class="fs-5 d-none d-sm-inline ">Menu</span>
                </a>
                <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start" id="menu">
                    <li class="nav-item" style="padding-top: 20px">
                        <a href="/list" class="nav-link align-middle px-0">
                        <img src="images/notice.png" width="30" height="30">
                             <h4 class="ms-1 d-none d-sm-inline  bg-light text-dark" >공지사항</h4>
                        </a>
                    </li>
                    <li class="nav-item" style="padding-top: 20px">
                        <a href="#" class="nav-link align-middle px-0">
                        <img src="images/user.png" width="30" height="30">
                             <h4 class="ms-1 d-none d-sm-inline  bg-light text-dark" >마이페이지</h4>
                        </a>
                    </li>
                    <li class="nav-item" style="padding-top: 20px">
                        <a href="#" class="nav-link align-middle px-0">
                        <img src="images/routine.png" width="30" height="30">
                             <h4 class="ms-1 d-none d-sm-inline  bg-light text-dark" >일상이야기</h4>
                        </a>
                    </li>
                    <li class="nav-item" style="padding-top: 20px">
                        <a href="#" class="nav-link align-middle px-0">
                        <img src="images/pethouse.png" width="30" height="30">
                             <h4 class="ms-1 d-none d-sm-inline  bg-light text-dark" >댕댕이 작명소</h4>
                        </a>
                    </li>
                    <li class="nav-item" style="padding-top: 20px">
                        <a href="#" class="nav-link align-middle px-0">
                        <img src="images/connection.png" width="30" height="30">
                             <h4 class="ms-1 d-none d-sm-inline  bg-light text-dark" >너와나의 연결고리</h4>
                        </a>
                    </li>
                    <li class="nav-item" style="padding-top: 20px">
                        <a href="#" class="nav-link align-middle px-0">
                        <img src="images/youtube.png" width="30" height="30">
                             <h4 class="ms-1 d-none d-sm-inline  bg-light text-dark" >1일 1영상</h4>
                        </a>
                    </li>
                    <li class="nav-item" style="padding-top: 20px">
                        <a href="#" class="nav-link align-middle px-0">
                        <img src="images/messenger.png" width="30" height="30">
                             <h4 class="ms-1 d-none d-sm-inline  bg-light text-dark" >채팅</h4>
                        </a>
                    </li>
                   
                    
                </ul>
                <hr>
                <div class="dropdown pb-4">
                    <a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="images/upArrow.png" alt="hugenerd" width="30" height="30" class="rounded-circle">
                        <span class="d-none d-sm-inline mx-1">loser</span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-dark text-small shadow">
                        <li><a class="dropdown-item" href="#">New project...</a></li>
                        <li><a class="dropdown-item" href="#">Settings</a></li>
                        <li><a class="dropdown-item" href="#">Profile</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="#">Sign out</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col py-3">
     
     <!-- sidebar content[S] -->       
             

<div class="col-12 text-center" style="padding-bottom : 10px">
		<img src="images/subtitle2.png" style="height: 110px">
</div>

<!-- carousel[S] -->

<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel" align="center">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/pets.jpg" class="d-block w-50">
    </div>
    <div class="carousel-item">
      <img src="images/puppy.jpg" class="d-block w-50">
    </div>
    <div class="carousel-item">
      <img src="images/puppy.jpg" class="d-block w-50">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<!-- carousel[E] -->

<!-- 펫과사전[S] -->

	<div class="col-12 text-center" style="padding-top: 50px">
		<h2 class="mb-3 text-warning">알면 알수록 쓸모있는 펫과사전</h2>
	</div>
				
<div class="container" style="padding-top: 20px" align="center">
  <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4">
    <div class="col">  
    	<img src="images/bichon.png" class="rounded-circle" alt="Cinque Terre" width="180" height="180"> 
  		<h4 class="text-secondary" style="padding-top: 20px"><a href="delete?seqno=${content_view.seqno}">비숑</a></h4>
	</div>
    <div class="col">
	    <img src="images/shihtzu.png" class="rounded-circle" alt="Cinque Terre" width="180" height="180"> 
  		<h4 class="text-secondary" style="padding-top: 20px"><a href="delete?seqno=${content_view.seqno}">시츄</a></h4>
    </div>
    <div class="col">
	    <img src="images/siberianhusky.png" class="rounded-circle" alt="Cinque Terre" width="180" height="180"> 
  		<h4 class="text-secondary" style="padding-top: 20px"><a href="delete?seqno=${content_view.seqno}">시베리안 허스키</a></h4>
    </div>
    <div class="col">
    	<img src="images/goldenretriever.png" class="rounded-circle" alt="Cinque Terre" width="180" height="180"> 
  		<h4 class="text-secondary" style="padding-top: 20px"><a href="delete?seqno=${content_view.seqno}">골든 리트리버</a></h4>
    </div>
  </div>
</div>

<!-- 펫과사전[E] -->
            
<!-- sidebar content[E] -->     
            
        </div>
    </div>
</div>
<!-- sidebar[E] -->

</body>
</html>