<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드</title>
</head>
<body>

<%
request.setCharacterEncoding("UTF-8");

//enctype 속성이 multipart/form-date로 설정된 폼에서 넘어오는 데이터를 받으려면 request로 받을 수 없고 multpart를 지원하는 객체로 받아야 한다.
 MultipartRequest mr = new MultipartRequest(
		 request, // 요청 객체
		 application.getRealPath("./upload/"),// 파일이 업로드 될 실제 경로
		 5 * 1024 * 1024,// 업로드 할 파일의 최대 크기를 바이트 단위로 지정한다.
		 "UTF-8",// 문자 인코딩 방식
		 new DefaultFileRenamePolicy()// 업로드 되는 파일과 같은 이름의 파일이 존재할 경우 이름을 자동을 변경해주는 객체
		 );
%>


</body>
</html>


















