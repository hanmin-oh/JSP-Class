<%@ page import="com.tjoeun.service.FreeboardService" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>insertOK</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.js"></script>
</head>
<body>
<%
  request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="vo" class="com.tjoeun.vo.FreeboardVO">
  <jsp:setProperty  property="*" name="vo"/>
</jsp:useBean>
${vo}

<%
//  insert.jsp에서 넘어온 메인글을 테이블에 저장하는 메소드를 실행한다.
  FreeboardService.getInstance().insert(vo);
//  메인글 1페이지 분량의 글 목록을 얻어노는 페이지(list.jsp)로 넘겨준다.
  response.sendRedirect("list.jsp");
%>

</body>
</html>
