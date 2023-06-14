<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>카테고리 프로젝트</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="./js/formCheck.js" defer></script>

</head>
<body class="p-3">

    <h1 class="m-3">Category Project</h1>

    <%-- 메인 카테고리 입력 --%>
    <%-- javascript로 메인 카테고리 입력 폼 체크--%>
    <form class="row m-3" action="insert.jsp" method="post" onsubmit="return mainFormCheck(this)">
        <div class="col-md-3">
            <input class="form-control" type="text" name="category"/>
        </div>
        <div class="col-md-2">
            <input class="btn btn-outline-success" type="submit" value="메인 카테고리 만들기"/>
        </div>
    </form>
    <hr style="color: #76e7a3"/>

<%--  서브 카테고리 개수만큼 반복하며 카테고리 목록을 출력하고 서브 카테고리를 입력받는다.    --%>
    <c:forEach var="vo" items="${categoryList.list}">
        <form class="row m-3" action="reply.jsp" method="post" onsubmit="return subFormCheck(this)">
            <div class="col-md-4">
                <%-- idx, gup, lev, seq를 표시하는 텍스트 상자는 테스트가 완료되면 모두 hidden으로 변경한다. --%>
                <input class="form-control" type="text" name="idx" value="${vo.idx}" style="width: 50px;"/>
                <input class="form-control" type="text" name="gup" value="${vo.gup}" style="width: 50px;"/>
                <input class="form-control" type="text" name="lev" value="${vo.lev}" style="width: 50px;"/>
                <input class="form-control" type="text" name="seq" value="${vo.seq}" style="width: 50px;"/>
                ${vo.category}
            </div>

            <div class="col-md-3">
                <input class="form-control" type="text" name="category">
            </div>

        </form>
        ${vo.cateogyList}<br/>
    </c:forEach>
</body>
</html>
