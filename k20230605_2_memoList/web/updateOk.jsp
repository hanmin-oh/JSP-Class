<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="com.tjoeun.dbcpTest.DBUtil" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>글 삭제</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    //memoupdate.jsp에서 넘어오는 삭제할 글번호(idx), 돌아갈 페이지 번호(currentPage),삭제하기 위해 입력한 비밀번호(password)
    // 수정할 데이터(name, memo)를 받는다.
    Connection conn = DBUtil.getMysqlConnection();
    int idx = Integer.parseInt(request.getParameter("idx"));
    int currentPage = Integer.parseInt(request.getParameter("currentPage"));
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String memo = request.getParameter("memo");
    //삭제하기 위해 입력한 비밀번호와 삭제할 글의 비밀번호를 비교하기 위해 삭제할 글을 얻어온다.
    String sql = "select * from memolist where idx = ?";
    PreparedStatement pstmt = conn.prepareStatement(sql);
    pstmt.setInt(1, idx);
    ResultSet rs = pstmt.executeQuery();
    rs.next();

    //삭제하기 위해 입력한 비밀번호(password)와 삭제할 글의 비밀번호(rs.getString("password"))를 비교해서 일치하면 글을 삭제
    out.println("<script>");
    if(password.equals(rs.getString("password"))) {
        sql = "update memolist set name = ?, memo = ? where idx = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, name);
        pstmt.setString(2, memo);
        pstmt.setInt(3, idx);
        pstmt.executeUpdate();
        out.println("alert(' " + idx + "번글 수정 성공')");
    } else {
        out.println("alert('비밀번호가 잘못됐습니다.')");
    }
    DBUtil.close(conn);

    // memoList4.jsp로 돌아간다.
    out.println("location.href='memoList4.jsp?currentPage=" + currentPage + "'");
    out.println("</script>");
%>
</body>
</html>
