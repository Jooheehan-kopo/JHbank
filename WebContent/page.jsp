<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

<!-- 구글폰트 -->
<link
	href="https://fonts.googleapis.com/css?family=Stylish&display=swap"
	rel="stylesheet">

<title>스파르타코딩클럽 | 부트스트랩 연습하기</title>

<!-- style -->
<style type="text/css">
* {
	font-family: 'Stylish', sans-serif;
}

.wrap {
	width: 900px;
	margin: auto;
}

.comment {
	color: blue;
	font-weight: bold;
}
</style>

<script>
	function hey() {
		alert('안녕!!');
	}
</script>

</head>

<body>
	<div class="wrap">
		<div class="jumbotron">
			<h1 class="display-4">나홀로 링크 메모장!</h1>
			<p class="lead">중요한 링크를 저장해두고, 나중에 볼 수 있는 공간입니다</p>
			<hr class="my-4">
			<p class="lead">
				<a onclick="hey()" class=btn btn-primary btn-lg" href="#"
					role="button">포스팅박스 열기</a>
			</p>
		</div>
		<div class="card-columns">
			<div class="card">
				<img class="card-img-top" src="/images/JHlogo.png"
					alt="Card image cap">
				<div class="card-body">
					<a href="" class="card-title">${acc_name }</a>
					<p class="card-text comment">여기에 코멘트가 들어갑니다.</p>

				</div>
			</div>
			<div class="card">
				<img class="card-img-top"
					src="https://www.eurail.com/content/dam/images/eurail/Italy%20OCP%20Promo%20Block.adaptive.767.1535627244182.jpg"
					alt="Card image cap">
				<div class="card-body">
					<a href="http://naver.com/" class="card-title">여기 기사 제목이 들어가죠</a>
					<p class="card-text">기사의 요약 내용이 들어갑니다. 동해물과 백두산이 마르고 닳도록 하느님이
						보우하사 우리나라만세 무궁화 삼천리 화려강산...</p>
					<p class="card-text comment">여기에 코멘트가 들어갑니다.</p>
				</div>
			</div>
			<div class="card">
				<img class="card-img-top"
					src="https://www.eurail.com/content/dam/images/eurail/Italy%20OCP%20Promo%20Block.adaptive.767.1535627244182.jpg"
					alt="Card image cap">
				<div class="card-body">
					<a href="http://naver.com/" class="card-title">여기 기사 제목이 들어가죠</a>
					<p class="card-text">기사의 요약 내용이 들어갑니다. 동해물과 백두산이 마르고 닳도록 하느님이
						보우하사 우리나라만세 무궁화 삼천리 화려강산...</p>
					<p class="card-text comment">여기에 코멘트가 들어갑니다.</p>
				</div>
			</div>
			<div class="card">
				<img class="card-img-top"
					src="https://www.eurail.com/content/dam/images/eurail/Italy%20OCP%20Promo%20Block.adaptive.767.1535627244182.jpg"
					alt="Card image cap">
				<div class="card-body">
					<a href="http://naver.com/" class="card-title">여기 기사 제목이 들어가죠</a>
					<p class="card-text">기사의 요약 내용이 들어갑니다. 동해물과 백두산이 마르고 닳도록 하느님이
						보우하사 우리나라만세 무궁화 삼천리 화려강산...</p>
					<p class="card-text comment">여기에 코멘트가 들어갑니다.</p>
				</div>
			</div>
			<div class="card">
				<img class="card-img-top"
					src="https://www.eurail.com/content/dam/images/eurail/Italy%20OCP%20Promo%20Block.adaptive.767.1535627244182.jpg"
					alt="Card image cap">
				<div class="card-body">
					<a href="http://naver.com/" class="card-title">여기 기사 제목이 들어가죠</a>
					<p class="card-text">기사의 요약 내용이 들어갑니다. 동해물과 백두산이 마르고 닳도록 하느님이
						보우하사 우리나라만세 무궁화 삼천리 화려강산...</p>
					<p class="card-text comment">여기에 코멘트가 들어갑니다.</p>
				</div>
			</div>
			<div class="card">
				<img class="card-img-top"
					src="https://www.eurail.com/content/dam/images/eurail/Italy%20OCP%20Promo%20Block.adaptive.767.1535627244182.jpg"
					alt="Card image cap">
				<div class="card-body">
					<a href="http://naver.com/" class="card-title">여기 기사 제목이 들어가죠</a>
					<p class="card-text">기사의 요약 내용이 들어갑니다. 동해물과 백두산이 마르고 닳도록 하느님이
						보우하사 우리나라만세 무궁화 삼천리 화려강산...</p>
					<p class="card-text comment">여기에 코멘트가 들어갑니다.</p>
				</div>
			</div>
		</div>
	</div>
</body>

</html>