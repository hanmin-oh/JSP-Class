<%--
  Created by IntelliJ IDEA.
  User: TJ
  Date: 2023-06-02
  Time: 오전 11:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP의 시스템 영역</title>
</head>
<body>
<%
    //pageContext.setAttribute("var" , "scopeTest.jsp의 pageContext 영역 변수");
    //request.setAttribute("var" , "scopeTest.jsp의 request 영역 변수");
    //session.setAttribute("var" , "scopeTest.jsp의 session 영역 변수");
    application.setAttribute("var" , "scopeTest.jsp의 application 영역 변수");
%>

<%--
    영역 변수에 저장된 데이터를 얻어올 때 영역 객체 이름을 사용하지 않고 영역 변수 이름만 사용하면
--%>
${var}

</body>
</html>
