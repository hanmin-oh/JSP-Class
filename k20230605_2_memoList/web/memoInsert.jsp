<%@ page import="java.sql.Connection" %>
<%@ page import="com.tjoeun.memoList.DBUtil" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>메모 저장소</title>
</head>
<body>

<%
  request.setCharacterEncoding("UTF-8");
  String name = request.getParameter("name");
  String password = request.getParameter("password");
  String memo = request.getParameter("memo");
  //접속자 ip 주소를 받는다.
  String ip = request.getRemoteAddr();
  out.println(name + password + memo + ip);

  //데이터베이스에 접속한다.
  Connection conn = DBUtil.getMysqlConnection();
  //out.println(conn);

  //Statement를 사용해서 넘겨받은 데이터를 테이블에 저장한다.
  //sql 명령을 만든다.
  //String sql = "INSERT INTO memoList(NAME, PASSWORD, memo, ip) VALUES ('" + name + "' ,'" + password + " ', ' " + memo + "' ,'" + ip + "')";
  String sql = String.format(
          "INSERT INTO memoList(NAME, PASSWORD, memo, ip) VALUES ('%s' ,'%s', '%s' ,'%s')",name, password, memo, ip);
  out.println(sql);
*//*
  //Statement를 이용해서 sql 명령을 실행할 준비를 한다.
  Statement stmt = conn.createStatement();
  //sql 명령을 실행한다.
  //executeQuery() => 테이블에 저장된 데이터가 갱신되지 않는 sql 명령을 실행한다. => select
  //executeUpdate() => 테이블에 저장된 데이터가 갱신되는 sql 명령을 실행한다. => insert, delete, update
  stmt.executeUpdate(sql);*//*

//  PreparedStatement을 사용해서 넘겨받은 데이터베이스

%>


</body>
</html>
