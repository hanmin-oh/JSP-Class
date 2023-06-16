<%@ page import="com.tjoeun.vo.FreeboardList" %>
<%@ page import="com.tjoeun.vo.FreeboardVO" %>
<%@ page import="com.tjoeun.service.FreeboardService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>메인글 쓰기</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.js"></script>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");

//   이전 페이지에서 넘어오는 화면에 표시할 페이지 번호를 받는다.
//  String currentPage = request.getParameter("currentPage");
  int currentPage = 1;
  try {
      currentPage = Integer.parseInt("currentPage");
  } catch (NumberFormatException | NullPointerException e) {
    // 예외 처리 내용 작성
  }
//   모든 공지글을 얻어온다.

//   1페이지 분량의 메인글을 얻어온다.
    FreeboardList freeboardList = FreeboardService.getInstance().selectList(currentPage);

//   공지글과 메인글의 댓글 개수를 얻어와서 FreeboardVO 클래스의 commentCount에 저장한다.

//   공지글과 메인글의 목록을 request 영역에 저장해서 메인글을 화면에 표시하는 페이지(listView.jsp)로 넘겨준다.
    request.setAttribute("freeboardList", freeboardList);
    request.setAttribute("currentPage", currentPage);
    pageContext.forward("listView.jsp");
%>

</body>
</html>
