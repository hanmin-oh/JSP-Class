<%@ page import="com.tjoeun.service.CategoryService" %>
<%@ page import="com.tjoeun.vo.CategoryVO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>삭제</title>
</head>
<body>
<body>


<%
  request.setCharacterEncoding("UTF-8");
%>


<jsp:useBean id="vo" class="com.tjoeun.vo.CategoryVO">
  <jsp:setProperty  property="*" name="vo"/>
</jsp:useBean>
${vo}

<%

  //삭제한 카테고리 이름을 삭제 완료 메시지에 표시하기 위해서 삭제하기 전에 삭제할 카테고리를 얻어온다.
  CategoryService service = CategoryService.getInstance();

  //CategoryVO original = service.selectByIdx(vo.getIdx());

//  1. 삭제 버튼이 클릭되면 해당 카테고리를 테이블에서 완전히 삭제한다.
//  service.delete(vo.getIdx());

//  2. 삭제 버튼이 클릭되면 해당 카테고리 자체를 "삭제된 카테고리 입니다" 로 수정한다.
//  service.deleteMessage(vo.getIdx());
//  3. 삭제 버튼이 클릭되면 deleteCheck 필드의 값을 "YES"로 수정한다.
  service.deleteAll();



//  카테고리 목록을 얻어오는 페이지를 호출한다.
  out.println("<script>");
  //out.println("alert('" + original.getCategory() + " 카테고리가 삭제되었습니다.')");
  out.println("location.href='list.jsp'");
  out.println("</script>");
%>

</body>
</html>
