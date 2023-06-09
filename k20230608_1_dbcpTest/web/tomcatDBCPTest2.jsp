<%@page import="java.sql.SQLException"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.Connection"%>
<%@ page import="com.tjoeun.dbcpTest.DBUtil" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%

  Connection conn = DBUtil.getTomcatDBCPConnection();
  out.println("연결성공: " + conn + "<br/>");
  DBUtil.close(conn);

%>


</body>
</html>
