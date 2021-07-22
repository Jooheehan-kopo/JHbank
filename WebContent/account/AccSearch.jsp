<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>

<html>
<jsp:include page="/include/head.jsp" />
<!--  <!-- Bootstrap CSS -->
<!--     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> --> 

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>

 <style type="text/css">
        * {
            font-family: 'Stylish', sans-serif;
        }

        .wrap {
        	
            width: 400px;
            margin: 0px auto; 
          	display: block;
        }
        
    	.card{
    	position: relative;
    	}
      
    </style>
    
<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">


		<jsp:include page="/include/header.jsp" />


		<!-- Menu -->
		<jsp:include page="/include/menu.jsp" />
		<!-- Main -->
		<div id="main" class="alt">

			<!-- One -->
			<section id="one">
				<div class="inner">
					<header class="major">
						<h1>전체계좌조회</h1>
					</header>
					<span class="image main"><img src="images/pic11.jpg" alt="" /></span>
					<p>${user_id }고객님이현재보유한 계좌 정보입니다.</p>
				</div>
			</section>


		<body>
<div class="wrap">
    
    <div class="card-columns">
        <div class="card">
				<img class="card-img-top" src="<%=request.getContextPath() %>/images/card.png"
					alt="Card image cap">
				<div class="card-body">
					<a href="" class="card-title">"${acc_name }"</a>
					<p class="card-text comment">여기에 코멘트가 들어갑니다.</p>
					<table>
						
						<tr>
							<td>은행명</td>
							<td>계좌번호</td>
							<td>계좌명</td>
							<td>개설일자</td>
						</tr>
						<tr>
							<td><c:out value="${list.bank_name }" /></td>
						</tr>
						
					
					</table>

				</div>
			</div>
        <div class="card">
            <img class="card-img-top"
                 src="https://www.eurail.com/content/dam/images/eurail/Italy%20OCP%20Promo%20Block.adaptive.767.1535627244182.jpg"
                 alt="Card image cap">
            <div class="card-body">
                <a href="http://naver.com/" class="card-title">여기 기사 제목이 들어가죠</a>
                <p class="card-text">기사의 요약 내용이 들어갑니다. 동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라만세 무궁화 삼천리 화려강산...</p>
                <p class="card-text comment">여기에 코멘트가 들어갑니다.</p>
            </div>
        </div>
        <div class="card">
            <img class="card-img-top"
                 src="https://www.eurail.com/content/dam/images/eurail/Italy%20OCP%20Promo%20Block.adaptive.767.1535627244182.jpg"
                 alt="Card image cap">
            <div class="card-body">
                <a href="http://naver.com/" class="card-title">여기 기사 제목이 들어가죠</a>
                <p class="card-text">기사의 요약 내용이 들어갑니다. 동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라만세 무궁화 삼천리 화려강산...</p>
                <p class="card-text comment">여기에 코멘트가 들어갑니다.</p>
            </div>



		</div>
	</div>

	<jsp:include page="/include/script.jsp" />
</body>
</html>
