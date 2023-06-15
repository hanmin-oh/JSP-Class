<%@ page import="com.tjoeun.vo.CategoryList" %>
<%@ page import="com.tjoeun.service.CategoryService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
//    테이블에 저장된 전체 카테고리 목록을 얻어와서 CategoryList 클래스의 ArrayList에 저장한 후 Category 클래스 객체를
//    reques영역에 저장해서 카테고리 목록을 출력하는 CategoryView.jsp)로 넘겨준다.
    CategoryList categoryList = CategoryService.getInstance().selectList();
    request.setAttribute("categoryList" , categoryList);
    pageContext.forward("categoryView2.jsp");
%>
</body>
</html>
