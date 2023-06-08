<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="com.tjoeun.dbcpTest.DBUtil" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>글 삭제</title>

  <%
    request.setCharacterEncoding("UTF-8");
    //memoDelete.jsp에서 넘어오는 삭제할 글번호(idx), 돌아갈 페이지 번호(currentPage),삭제하기 위해 입력한 비밀번호(password)를 받는다.
    Connection conn = DBUtil.getMysqlConnection();
    int tempIdx = Integer.parseInt(request.getParameter("idx"));
    int tempCurrentPage = Integer.parseInt(request.getParameter("currentPage"));
    String tempPassword = request.getParameter("password");
    //삭제하기 위해 입력한 비밀번호와 삭제할 글의 비밀번호를 비교하기 위해 삭제할 글을 얻어온다.
    String sql = "select * from memolist where idx = ?";
    PreparedStatement pstmt = conn.prepareStatement(sql);
    pstmt.setInt(1, tempIdx);
    ResultSet rs = pstmt.executeQuery();

    //삭제하기 위해 입력한 비밀번호(password)와 삭제할 글의 비밀번호(rs.getString("password")를 비교해서 일치하면 글을 삭제
    sql = "SELECT * FROM memolist WHERE password=?";
    PreparedStatement pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, tempPassword);
    ResultSet rs = pstmt.executeQuery();
     if(tempPassword == String.valueOf(rs)) {
     sql = "delete from memolist where idx=?";
      pstmt = conn.prepareStatement(sql);
      // 5. "?"에 데이터를 채운다.
      pstmt.setInt(1, tempIdx);
      // 6. sql 명령을 실행한다.
      pstmt.executeUpdate();
      // . memoList4로 돌아간다.
      //response.sendRedirect("memoList4.jsp");
    } else {
        out.println("<script>");
        out.println("alert('비밀번호가 잘못됐습니다.')");
        out.println("location.href='memoList4.jsp'");
        out.println("</script>");
    }
  %>
</head>
<body>

</body>
</html>
