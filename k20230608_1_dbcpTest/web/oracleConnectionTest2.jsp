<%@ page import="java.sql.Connection" %>
<%@ page import="com.tjoeun.dbcpTest.DBUtil" %><%--
  Created by IntelliJ IDEA.
  User: TJ
  Date: 2023-06-08
  Time: 오후 8:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  Connection conn = DBUtil.getOracleConnection();
  out.println("연결성공: " + conn + "<br/>");
  DBUtil.close(conn);
%>
</body>
</html>
