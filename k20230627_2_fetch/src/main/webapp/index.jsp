<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한국을 빛낸 100명의 위인들</title>
<link rel="icon" href="./images/logo.png"/>
<link rel="stylesheet" href="./style.css"/>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script src="./javascript.js"></script>
</head>
<body>

<h2><a href="./summary.jsp">한국을 빛낸 100명의 위인들</a></h2>

<!-- fetch()를 실행하는 중복되는 코드가 여러번 나온다. => 함수로 만들어 호출한다.  -->
<ol>
	<li>
		<a onclick="view()">개요</a>
	</li>
	
</ol>

<div id="text">
	가사가 출력될 영역
</div>



</body>
</html>