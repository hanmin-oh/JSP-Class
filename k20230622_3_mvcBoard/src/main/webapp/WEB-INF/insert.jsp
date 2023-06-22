<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>답변형 게시판 글 입력</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css"> -->
</head>
<body>

<div class="container">
	<form action="insertOK.ohm" method="post">
		<table class="table" style="width: 600px; margin: 0 auto; border: none; padding: 5px; border-collapse: collapse;">
			<tr>
				<th colspan="2">답변형 게시판 글 입력하기</th>
			</tr>	
			<tr class="success" style="border:1px solid black; border-radius: 150px;">
				<th width="100">이름</th>
				<td width="500">
					<input type="text" name="name"/>
				</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>
					<input type="text" name="subject" style="width: 98%"/>
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
					<textarea rows="10" name="content" style="width: 98%; resize: none;"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="저장하기"/>
					<input type="reset" value="다시쓰기"/>
					<input type="button" value="돌아가기" onclick="history.back()"/>
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>