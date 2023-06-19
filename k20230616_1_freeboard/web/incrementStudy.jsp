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
%>
<jsp:useBean id="vo" class="com.tjoeun.vo.FreeboardVO">
  <jsp:setProperty  property="*" name="vo"/>
</jsp:useBean>
${vo}<br/>



<%
  String idx = request.getParameter("idx");


  %>
  Received idx: <%= idx %>
<%
  FreeboardService service = FreeboardService.getInstance();
  service.hitsPlus(vo.getIdx());

 /* out.println("<script>");
  //out.println("alert('" + original.getCategory() +" 카테고리를 신고완료!!')");
  out.println("location.href='list.jsp'");
  out.println("</script>");*/
%>
${vo}



</body>
</html>
