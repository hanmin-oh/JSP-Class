<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.ParseException" %>
<%@ page import="com.tjoeun.vo.GuestbookVO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<%
    request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    String memo = request.getParameter("memo");
    String writeDateStr = request.getParameter("writeDate");
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
    String ip = request.getParameter("ip");
    Date writeDate = null;
    try {
      writeDate = dateFormat.parse(writeDateStr);
    } catch (ParseException e) {
      // 날짜 파싱 오류 처리
      e.printStackTrace();
    }

    String idxStr = request.getParameter("idx");
    int idx = 0; // 기본값 설정

    try {
      idx = Integer.parseInt(idxStr);
    } catch (NumberFormatException e) {
      // 숫자 변환 오류 처리
      e.printStackTrace();
    }

    GuestbookVO vo = new GuestbookVO(idx, name, password, memo, writeDate, ip);
    out.println(vo + "<br/>");
%>



</body>
</html>
