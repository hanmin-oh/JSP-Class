<%@ page import="com.tjoeun.vo.GuestbookVO" %>
<%@ page import="com.tjoeun.service.SelectService" %>
<%@ page import="java.util.Objects" %>
<%@ page import="com.tjoeun.service.DeleteService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>수정</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    //delete.jsp에서 넘어오는 데이터를 받는다.
    int currentPage = Integer.parseInt(request.getParameter("currentPage"));
%>
<jsp:useBean id="vo" class="com.tjoeun.vo.GuestbookVO" >
    <jsp:setProperty name="vo" property="*"/>
</jsp:useBean>
<%
//    수정할 글의 비밀번호와 수정하기 위해 입력한 비밀번호를 비교하기 위해 수정할 글을 얻어온다.
    GuestbookVO original = SelectService.getInstance().selectIdx(vo.getIdx());

//     oracle은 필드 선언시 데이터 타입을 char(고정길이 문자열)로 선언하면 필드의 크기보다 입력된 문자열의 크기가 작을 때
//    남는 자리가 모드 공백으로 리턴된다.
//    해결방법 1 - char 대신 varchar(가변길이 문자열)로 선언한다.
//    해결방법 2 - 이미 테이블이 char로 설계된 상태라면 trim() 메소드로 불필요한 빈 칸을 제거해서 사용한다.
    out.println("<script>");
    if(original.getPassword().trim().equals(vo.getPassword().trim())) {
        out.println("alert('" + original.getIdx() + "번 글이 삭제되었습니다')");
        DeleteService.getInstance().delete(original.getIdx());
    } else {
        out.println("alert('비밀번호가 일치하지 않습니다.')");
    }
    out.println("location.href='list.jsp?currentPage=" + currentPage + "'");
    out.println("</script>");
%>

</body>
</html>
