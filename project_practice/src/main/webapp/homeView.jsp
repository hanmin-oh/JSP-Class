<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- bootstrap -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- bootstrap icon -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<style>
table, th, td {
  border:1px solid black;
}
</style>
</head>
<body>

<h2>안녕하세요 푸드어리입니다~</h2>

<table style="width:50%; border-right: none;">
  <tr>
 	<th>내 정보</th>
    <td>175cm</td>
    <td>67kg</td>
    <td>근력증가</td>
  </tr>
  </table>
  
  <h2>식단</h2>
  <table style="width:50%">
  <tr>
    <th>아침</th>
    <td>탄수화물: </td>
    <td>단백질: </td>
    <td>지방: </td>
    <td style="border: none;">
    	<input 
			class="btn btn-outline-primary btn-sm" 
			type="button" 
			value="식단입력"
			style="font-size: 13px;"
			onclick="location.href='foodInput.jsp'"/>
	</td>
  </tr>
  <tr>
    <th>점심</th>
    <td>탄수화물: </td>
    <td>단백질: </td>
    <td>지방: </td>
     <td style="border: none;">
    	<input 
			class="btn btn-outline-primary btn-sm" 
			type="button" 
			value="식단입력"
			style="font-size: 13px;"
			onclick="location.href='login.jsp'"/>
	</td>
  </tr>
  <tr>
    <th>저녁</th>
    <td>탄수화물: </td>
    <td>단백질: </td>
    <td>지방: </td>
     <td style="border: none;">
    	<input 
			class="btn btn-outline-primary btn-sm" 
			type="button" 
			value="식단입력"
			style="font-size: 13px;"
			onclick="location.href='login.jsp'"/>
	</td>
  </tr>
  <tr>
    <th>간식/기타</th>
    <td>탄수화물: </td>
    <td>단백질: </td>
    <td>지방: </td>
     <td style="border: none;">
    	<input 
			class="btn btn-outline-primary btn-sm" 
			type="button" 
			value="식단입력"
			style="font-size: 13px;"
			onclick="location.href='login.jsp'"/>
	</td>
  </tr>
</table>
	<h6>탄수화물</h6>
    <div class="progress" style="width:50%">
	  <div class="progress-bar" role="progressbar" aria-valuenow="70"
	  aria-valuemin="0" aria-valuemax="100" style="width:70%">
	    70%
	  </div>
	</div>
	<br/>
	<h6>단백질</h6>
    <div class="progress" style="width:50%">
	  <div class="progress-bar" role="progressbar" aria-valuenow="70"
	  aria-valuemin="0" aria-valuemax="100" style="width:70%">
	    70%
	  </div>
	</div>
	<br/>
	<h6>지방</h6>
    <div class="progress" style="width:50%">
	  <div class="progress-bar" role="progressbar" aria-valuenow="70"
	  aria-valuemin="0" aria-valuemax="100" style="width:70%">
	    70%
	  </div>
	</div>
	<table>
		<tr class="table-secondary">
			<td colspan="5" align="right">
				<input 
					class="btn btn-outline-primary btn-sm" 
					type="button" 
					value="로그아웃"
					style="font-size: 13px;"
					onclick="location.href='login.jsp'"/>
			</td>
		</tr>
		</table>
</body>
</html>