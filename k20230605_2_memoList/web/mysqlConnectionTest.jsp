<%@ page import="java.sql.*" %>
<%--<%@ page import="com.tjoeun.memoList.DBUtil" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>mysql에 연결하기</title>
</head>
<body>

<%
    Connection conn = null;
//    Statement stmt = null;
//    ResultSet rs = null;

    //try {
        // Oracle JDBC 드라이버 로드
        Class.forName("com.mysql.jdbc.Driver");

      /*  // Oracle 데이터베이스와 연결
        String url = "jdbc:oracle:thin:@localhost:1521:your_database";
        String username = "your_username";
        String password = "your_password";
        conn = DriverManager.getConnection(url, username, password);

        // SQL 쿼리 실행
        stmt = conn.createStatement();
        String sql = "SELECT * FROM your_table_name";
        rs = stmt.executeQuery(sql);

        // 결과 출력
        while (rs.next()) {
            String column1 = rs.getString("column1_name");
            String column2 = rs.getString("column2_name");
            // 추가적인 작업 수행
            System.out.println("Column 1: " + column1 + ", Column 2: " + column2);
        }
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        // 리소스 해제
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (stmt != null) {
            try {
                stmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }*/
%>


</body>
</html>
