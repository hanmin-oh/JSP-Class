<%@ page import="com.tjoeun.service.FreeboardService" %>
<%@ page import="com.tjoeun.vo.FreeboardVO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>updateOK</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.js"></script>
</head>
<body>

<jsp:useBean id="vo" class="com.tjoeun.vo.FreeboardVO">
    <jsp:setProperty  property="*" name="vo"/>
</jsp:useBean>
${vo}
<%
    request.setCharacterEncoding("UTF-8");
    out.println(vo.getPassword());
    int idx = Integer.parseInt(request.getParameter("idx"));
    int currentPage = Integer.parseInt(request.getParameter("currentPage"));
    FreeboardVO original = FreeboardService.getInstance().selectByIdx(idx);
  if(vo.getPassword().trim().equals(original.getPassword().trim())) {
    FreeboardService.getInstance().delete(idx);
    out.println("<script>");
    out.println("alert('비밀번호를 맞음')");
    out.println("location.href='list.jsp?currentPage=" +  currentPage + "'");
    out.println("</script>");
  } else {
      out.println("<script>");
      out.println("alert('틀렸음')");
      out.println("location.href='list.jsp?currentPage=" +  currentPage + "'");
      out.println("</script>");
  }
%>

</body>
</html>
