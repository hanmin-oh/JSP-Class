<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>식단입력</title>
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
</table>
	<h2>음식검색</h2>
	<table>
		<tr>
			<td>음식검색 <input type="text"/> 
			<input 
				type="button" 
				value="검색"
				onclick="location.href='foodList.jsp'"/></td>
		</tr>
		
	</table>
	<table>
		<tr class="table-secondary">
			<td colspan="5" align="right">
				<input 
					class="btn btn-outline-primary btn-sm" 
					type="button" 
					value="돌아가기"
					style="font-size: 13px;"
					onclick="location.href='homeView.jsp'"/>
			</td>
		</tr>
		</table>
</body>
</html>