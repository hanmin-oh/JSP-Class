<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.tjoeun.dbcpTest.DBUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.util.logging.SimpleFormatter" %>
<%@ page import="java.text.SimpleDateFormat" %>
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
            <th colspan="3">출석 게시판 Ver 0.01</th>
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

<%-- 테이블에 저장된 글 목록 전체를 글번호(idx)의 내림차순(최신)으로 얻어온다. --%>
<%
    Connection conn = DBUtil.getMysqlConnection();
    String sql = "select * from memolist order by idx desc";
    PreparedStatement pstmt = conn.prepareStatement(sql);
    ResultSet rs = pstmt.executeQuery();

    /*ResultSet 객체에 저장된 다음 데이터가 없을 때 가지 반복하며 얻어온 글 목록을 출력한다.
    next() : RestultSet 객체에 저장된 다음 데이터로 접근한다.=> 다음 데이터가 잇으면 true, 없으면 false*/
    if(rs.next()) {
        do {
            out.println(rs.getInt("idx"));
           //테이블 데이터 출력
        } while (rs.next());
    }

%>

<%-- 테이블에서 얻어온 글 목록을 출력한다.--%>
<table width="1000" align="center" border="1" cellpadding="5" cellspacing="0">
    <tr>
        <th width="80">글번호</th>
        <th width="80">이름</th>
        <th width="80">메모</th>
        <th width="80">작성일</th>
        <th width="80">ip</th>
    </tr>

    <%
        if(rs.next()) {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd(E)");
            do {
    %>
    <tr>
        <td align="center"><%=rs.getInt("idx") %></td>
        <td align="center"><%=rs.getString("name") %></td>
        <td><%=rs.getString("memo") %></td>
        <td align="center"><%=sdf.format(rs.getTimestamp("writeDate")) %></td>
        <td><%=rs.getString("ip") %></td>
    </tr>
    <%
        } while(rs.next());
    } else {
    %>
    <tr>
        <td colspan="5">
            테이블에 저장된 데이터가 없습니다.
        </td>
    <%
        }
    %>
    </tr>
</table>
</body>
</html>
