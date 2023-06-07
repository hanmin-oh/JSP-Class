<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.tjoeun.memoList.DBUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.util.logging.SimpleFormatter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<!-- 입력 화면 시작 -->
<form action="memoInsert.jsp" method="post">
    <table width="1000" align="center" border="1" cellpadding="5" cellspacing="0">
        <tr>
            <th colspan="3">아주 아주 많이 허접해 보이는 출첵 게시판 Ver 0.01</th>
        </tr>
        <tr>
            <th width="100">이름</th>
            <th width="100">비밀번호</th>
            <th width="800">메모</th>
        </tr>
        <tr>
            <td align="center">
                <input type="text" name="name" style="width: 90%; height: 25px;"/>
            </td>
            <td align="center">
                <input type="text" name="password" style="width: 90%; height: 25px;"/>
            </td>
            <td align="center">
                <input type="text" name="memo" style="width: 92%; height: 25px;"/>
                <input type="submit" value="저장" style="height: 28px;"/>
            </td>
        </tr>
    </table>
</form>
<!-- 입력 화면 끝 -->

<br/>
<hr size="3" color="dodgerblue"/>
<br/>



<%-- 테이블에서 얻어온 글 목록을 출력한다.--%>
<table width="1200" align="center" bgcolor="1" cellpadding="5" cellspacing="0">
    <tr>
        <th width="80">글번호</th>
        <th width="80">이름</th>
        <th width="80">메모</th>
        <th width="80">작성일</th>
        <th width="80">ip</th>
    </tr>
</table>
</body>
</html>
