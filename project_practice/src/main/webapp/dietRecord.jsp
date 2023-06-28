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
</head>
<body>
<body>

	<table>
	  <tr>
	 	<th>총 섭취량</th>
	    <td>칼로리<input type="text"/></td>
	    <td>단백질<input type="text"/></td>
	    <td>지방<input type="text"/></td>
	  </tr>
	</table>
	탄수화물
    <div class="progress" style="width:50%">
	  <div class="progress-bar" role="progressbar" aria-valuenow="70"
	  aria-valuemin="0" aria-valuemax="100" style="width:70%">
	    70%
	  </div>
	</div>
	단백질
    <div class="progress" style="width:50%">
	  <div class="progress-bar" role="progressbar" aria-valuenow="70"
	  aria-valuemin="0" aria-valuemax="100" style="width:70%">
	    70%
	  </div>
	</div>
	지방
    <div class="progress" style="width:50%">
	  <div class="progress-bar" role="progressbar" aria-valuenow="70"
	  aria-valuemin="0" aria-valuemax="100" style="width:70%">
	    70%
	  </div>
	</div>
	<table>
		<tr>
			<td>
				<input type="button" value="수정하기" onclick=""/>
			</td>
			<td>
				<input type="button" value="삭제하기" onclick=""/>
			</td>
			<td>
				<input type="button" value="식단보기" onclick=""/>
			</td>
		</tr>
	</table>
</body>
</html>