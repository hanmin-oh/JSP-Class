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
	th {
		border: 1px solid black;
	}
	td {
		border: 1px solid black;
	}
</style>
</head>
<body>
<body>

	<table>
	  	<tr>
		 	<th>일시</th>
		    <td><input type="text"/></td>
	  	</tr>
		<tr>
			<th>식품</th>
			<td>
				<input type="text"/>
			</td>
			<td>
				<input type="button" value="검색" onclick=""/>
			</td>
			<td>
				<input type="text" placeholder="직접입력" onclick=""/>
			</td>
			<td>
				<input type="button" value="식품추가" onclick=""/>
			</td>
		</tr>
		<tr>
		 	<td>칼로리<input type="text"/></td>
		    <td>단백질<input type="text"/></td>
		    <td>지방<input type="text"/></td>
		</tr>
		<tr>
		 	<td colspan="4">
		 		<textarea rows="auto" cols="">
			 		메모
		 		</textarea>
	 		</td>
		</tr>
		<tr>
		 	<td><input type="text" placeholder="사진파일명" onclick=""/></td>
		    <td><input type="button" value="파일찾기"/></td>
	  	</tr>
		<tr>
		    <td><input type="button" value="기록하기"/></td>
		    <td><input type="button" value="다시쓰기"/></td>
	  	</tr>
	</table>
</body>
</html>