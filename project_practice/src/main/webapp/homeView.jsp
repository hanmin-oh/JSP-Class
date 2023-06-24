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
	   .vertical-align {
	  vertical-align: middle;
	}
 </style>
</head>
<body>

<div class="container">
  <h2>내 정보</h2>
  <p>안녕하세요~~</p>            
  <table class="table table-hover">
	  <div>
	     <span>신체 정보</span>
	     <div>175</div>
	     <div>68</div>
	     <div>신체 정보</div>
	     <div>175</div>
	     <div>68</div>
	  </div>
  
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
</div>

</body>
</html>