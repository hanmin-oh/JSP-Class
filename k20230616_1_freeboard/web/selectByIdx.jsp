<%@ page import="com.tjoeun.vo.FreeboardList" %>
<%@ page import="com.tjoeun.vo.FreeboardVO" %>
<%@ page import="com.tjoeun.service.FreeboardService" %>
<%@ page import="java.util.Set" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="java.util.HashSet" %>
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
  //increment.jsp에서 넘어오는 조회수를 증가시킬 글번호와 메인글 확인 후 돌아갈 페이지 번호를 반든다.
  int idx = Integer.parseInt(request.getParameter("idx"));
  int currentPage = Integer.parseInt(request.getParameter("currentPage"));
  String job = request.getParameter("job");

//  메인글 1건을 얻어오는 메소드를 호출한다.
  FreeboardVO vo = FreeboardService.getInstance().selectByIdx(idx);
  request.setAttribute("vo" , vo);
  request.setAttribute("currentPage" , currentPage);
  request.setAttribute("enter" , "\r\n");

//  조회수를 증가시킨 메인글을 보여주는 페이지(contentView.jsp)로 넘겨주고  contentView.jsp에서 넘어온 경우
//  수정, 삭제하는 페이지로 request영역에 저장된 내용을 가지고 넘겨준다.
  pageContext.forward(job + ".jsp");

%>

</body>
</html>
