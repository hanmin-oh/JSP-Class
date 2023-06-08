<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="com.tjoeun.dbcpTest.DBUtil" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>글 삭제</title>
</head>
<body>

<%
    request.setCharacterEncoding("UTF-8");
    //memoList4.jsp에서 넘어오는 삭제할 글번호(idx)와 삭제 후 돌아갈 페이지 번호(currentPage)를 받는다.
    String tempIdx = request.getParameter("idx");
    String tempCurrentPage = request.getParameter("currentPage");

    //  1. 삭제할 글번호와 삭제 후 돌아갈 페이지 번호가 모두 넘어왔나 검사한다.
    if(tempIdx != null && tempIdx.trim().length() != 0 && tempCurrentPage != null && tempCurrentPage.trim().length() != 0) {
    //  2. 삭제할 글번호 또는 돌아갈 페이지 번호가 모두 숫자인지 검사한다.
        try {
            int idx = Integer.parseInt(tempIdx);
            int currentPage = Integer.parseInt(tempCurrentPage);

            // 3. 삭제할 글번호에 해당되는 글이 테이블에 존재하는가 확인하기 위해 글번호에 해당되는 글을 얻어온다.
            Connection conn = DBUtil.getMysqlConnection();
            String sql = "select * from memolist where idx = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, tempIdx);
            ResultSet rs = pstmt.executeQuery();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd(E)");
%>
        <tr>
            <td align="center"><%=rs.getInt("idx")%></td>
            <td align="center"><%=rs.getString("name").replace("<" , "&lt;") %></td>
            <td><%=rs.getString("memo").replace("<" , "&lt;") %></td>
            <td align="center"><%=sdf.format(rs.getTimestamp("writeDate")) %></td>
            <td><%=rs.getString("ip") %></td>
        </tr>

<%

            sql = "delete from memolist where idx=?";
            pstmt = conn.prepareStatement(sql);
            //3. "?"에 데이터를 채운다.
            pstmt.setString(1, tempIdx);
            //4. sql 명령을 실행한다.
            pstmt.executeUpdate();
            // 5. memoList4로 돌아간다.
            //response.sendRedirect("memoList4.jsp");
        }catch (NumberFormatException e) {
            //삭제할 글번호 또는 돌아갈 페이지 번호가 숫자가 아니므로 에러 메시지를 출력하고 memoList4로 돌려보낸다.
            out.println("<script>");
            out.println("alert('삭제할 글번호 또는 돌아갈 페이지 번호가 모두 숫자가 아닙니다.')");
            out.println("location.href='memoList4.jsp'");
            out.println("</script>");
        }
    } else {
       // 삭제할 글번호 또는 돌아갈 페이지 번호가 넘어오지 않았으므로 에러 메시지를 출력하고 memoList4.jsp로 돌려보낸다.
        out.println("<script>");
        out.println("alert('삭제할 글번호 또는 돌아갈 페이지 번호가 넘어오지 않았습니다.')");
        out.println("location.href='memoList4.jsp'");
        out.println("</script>");
    }


%>


</body>
</html>
