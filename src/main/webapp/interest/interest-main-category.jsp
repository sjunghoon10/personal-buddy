<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>설문조사 카테고리</title>
<link rel="stylesheet" href="../assets/css/global.css">
<link rel="stylesheet" href="../assets/css/interest/interest-category.css">
</head>
<body>
	<div class="container">
        <!-- 왼쪽 말풍선 -->
        <div class="container-left">
            <div class="speech-bubble">
                더 나은 맞춤형 경험을 위해 당신의 관심사를<br>
                알려주세요! 선택해주신 관심사를 바탕으로<br>
                유용한 정보와 맞춤형 추천을 제공해드립니다.
            </div>
            <img src="../assets/images/interest/logo.png" alt="로고 이미지" class="logo-img">
        </div>

        <!-- 오른쪽 관심사 선택 -->
        <div class="container-right">
	        <div class="container-right-wrapper">
	        	<div class="wrapper">
					<div class="main-title">
						<span>0. 관심사를 선택해 주세요</span>
					</div>
					<div class="sub-title">
						<span>최소 2개 이상</span>
					</div>     
		            <div class="tags">
		                <span class="tag">맛집 탐방</span>
		                <span class="tag">운동</span>
		                <span class="tag">구기 종목</span>
		                <span class="tag">음악 감상</span>
		                <span class="tag">영화 감상</span>
		                <span class="tag">독서</span>
		                <span class="tag">패션</span>
		                <span class="tag">여행</span>
		                <!-- <span class="tag">쇼핑</span> -->
		                <span class="tag">연주</span>
		            </div>
	        	</div>
	        	<div class="next-btn-wrapper">
	        		<form class="next-form" action="interest-select-main-category.interest" method="post">
	        			<input type="hidden" class="hidden-input" name="mainCategory">
			            <button type="button" class="next-btn">다음으로</button>
	        		</form>
	        	</div>
	        </div>
        </div>
    </div>
</body>
<script src="../assets/js/interest/interest-category.js"></script>
</html>