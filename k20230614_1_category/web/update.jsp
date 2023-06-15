<%@ page import="com.tjoeun.service.CategoryService" %>
<%@ page import="com.tjoeun.vo.CategoryVO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>수정</title>
</head>
<html>
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

  CategoryVO original = service.selectByIdx(vo.getIdx());

  service.update(vo);

//  카테고리 목록을 얻어오는 페이지를 호출한다.
  out.println("<script>");
  out.println("alert('" + original.getCategory() +" 카테고리를" + vo.getCategory() + "카테고리로 복구 완료')");
  out.println("location.href='list.jsp'");
  out.println("</script>");

%>

</body>
</html>
