<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인 페이지 삽입</title>
</head>
<body>

<%-- include 디렉티브를 사용해서 중복되는 jsp 코드 삽입하기 --%>
<%--  '<%'표현식은 자제하는게 좋다. <%@include file="loginTest.jsp"%>  --%>

<hr/>

<%-- include 액션 태그를 사용해서 중복되는 jsp 코드 삽입하기 --%>
<jsp:include page="loginTest.jsp"></jsp:include>


</body>
</html>
