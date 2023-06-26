<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery ajax</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<link rel="icon" href="./images/logo.png"/>
<link rel="stylesheet" href="./css/bootstrap.css"/>
<script type="text/javascript" src="./js/jquery-3.7.0.js"></script>
<script type="text/javascript" src="./js/bootstrap.js"></script>
<script type="text/javascript" src="./js/ajax.js"></script> <!-- ajax 구현 -->
</head>
<body>

<div class="container" style="margin-top: 20px;">
	<form action="./UserRegister" method="post"> <!-- 1 -->
		<table class="table table-hover table-bordered" style="border: 1px solid black;">
			<thead>
				<tr class="success">
					<th class="primary" colspan="3" style="text-align: center; font-size: 25px;">
						<h2>회원가입</h2>
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th class="primary">
						<h4>아이디</h4>
					</th>
					<td>
						<input id="userID" class="form-control" type="text" name="userID"/>
					</td>
					<td>
						<button id="userID" class="form-control" type="button" name="userID" onclick="">
							중복검사
						</button>
					</td>
				</tr>
				<tr>
					<td colspan="3">
					<!-- ID 중복 검사 결과 메시지가 출력될 영역 -->
						<h5 id="idCheckMessage" style="color: red; font-weight: bold;"></h5>
					</td>
				</tr>
				<tr>
					<th class="primary">
						<h4>비밀번호</h4>
					</th>
					<td colspan="2">
						<input id="userPassword1" class="form-control" type="password" name="userPassword1" 
							autocomplete="off" onkeyup="passwordCheckFunction()"/>
					</td>
				</tr>
				<tr>
					<th class="primary">
						<h4>비밀번호확인</h4>
					</th>
					<td colspan="2">
						<input id="userPassword2" class="form-control" type="password" name="userPassword2"  
							autocomplete="off" onkeyup="passwordCheckFunction()"/>
					</td>
				</tr>
				<tr>
					<!-- 비밀번호 일치 검사 결과 메시지가 출력될 영역 -->
					<td colspan="3">
						<h5 id="passwordCheckMessage" style="color: red; font-weight: bold;"></h5>
					</td>
				</tr>
				<tr>
					<th class="primary">
						<h4>이름</h4>
					</th>
					<td colspan="2">
						<input id="userName" class="form-control" type="text" name="userName" 
							autocomplete="off" onkeyup=""/>
					</td>
				</tr>
				<tr>
					<th class="primary">
						<h4>나이</h4>
					</th>
					<td colspan="2">
						<input id="userAge" class="form-control" type="text" name="userAge" 
						autocomplete="off" onkeyup=""/>
					</td>
				</tr>
				<tr>
					<th class="primary">
						<h4>성별</h4>
					</th>
					<td colspan="2">
						<div class="btn-group" data-toogle="buttons">
							<label class="btn btn-primary">
								<input type="radio" name="userGender" value="남자"/>남자
							</label>
							<label class="btn btn-primary">
								<input type="radio" name="userGender" value="여자"/>여자
							</label>
						</div>
					</td>
				</tr>
				<tr>
					<th class="primary">
						<h4>이메일</h4>
					</th>
					<td colspan="2">
						<input id="userEmail" class="form-control" type="email" 
							autocapitalize="off" name="userEmail"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<h5 id="idErrorMessage" style="color: red; font-weight: bold;">
							${messageType} : ${messageContent}
						</h5>
					</td>
				</tr>
				<tr>
					<td colspan="3" style="text-align: center;">
						<input class="btn btn-primary" type="submit" value="회원가입"/>  <!-- 1 -->
						<input class="btn btn-primary" type="reset" value="다시쓰기"/>
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</div>


<%
//	session에 저장된 메시지 얻어온다.
	String messageType = null;
	if (session.getAttribute("messageType") != null) {
		messageType = (String) session.getAttribute("messageType");
		// out.println("messageType: " + messageType + "<br/>");
	}
	String messageContent = null;
	if (session.getAttribute("messageContent") != null) {
		messageContent = (String) session.getAttribute("messageContent");
		// out.println("messageContent: " + messageContent + "<br/>");
	}
	
//	session에 메시지가 있으면 메시지를 표시하는 모달 창을 띄운다.
	if (messageContent != null) {

%>
	
<div id="messageModal" class="modal fade" role="dialog" aria-hidden="true">
	<div class="vertical-alignment-helper">
		<div class="modal-dialog vertical-align-center">
			<!-- 모달 창의 종류(색상)를 설정한다. -->
			<div class="modal-content 
<%
	if (messageType.equals("오류 메시지")) {
		out.println("panel-warning");
	} else {
		out.println("panel-success");
	}
%>		
	">
				<!-- 헤더 -->
				<div class="modal-header panel-heading">
					<!-- 헤더 오른쪽 상단에 "X" 버튼 표시 -->
					<button class="close" type="button" data-dismiss="modal">
						<span aria-hidden="true">&times;</span>
						<span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title">
						${messageType}
					</h4>
				</div>
				<!-- 바디 -->
				<div class="modal-body">
					${messageContent}
				</div>
				<!-- 풋터 -->
				<div class="modal-footer">
					<button class="btn btn-primary" type="button" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	$('#messageModal').modal('show');
</script>
	
<%
	}
%>
	
</body>
</html>