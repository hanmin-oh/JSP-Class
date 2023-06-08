<%@page import="com.tjoeun.dbcpTest.DBUtil"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>mysql에 연결하기</title>
</head>
<body>

<%
  Connection conn = DBUtil.getMysqlConnection();
  out.println("연결성공: " + conn);
  DBUtil.close(conn);
%>

</body>
</html>
