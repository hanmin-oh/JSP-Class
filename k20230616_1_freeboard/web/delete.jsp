<%@ page import="com.tjoeun.vo.FreeboardList" %>
<%@ page import="com.tjoeun.vo.FreeboardVO" %>
<%@ page import="com.tjoeun.service.FreeboardService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>메인글 쓰기</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <link rel="stylesheet" href="style.css">
</head>
<body>


<form action="deleteOK.jsp" method="post">
    <table class="table" style="width: 800px; margin-left: auto; margin-right: auto; border: 1px solid black;">
        <tr class="table-primary">
            <th colspan="5" style="font-size: 30px; text-align: center;">삭제할 글 보기</th>
        </tr>
        <tr>
            <td style="width: 80px; text-align: center;">글번호</td>
            <td style="width: 120px; text-align: center;">이름</td>
            <td style="width: 150px; text-align: center;">작성일</td>
            <td style="width: 100px; text-align: center;">조회수</td>
        </tr>
        <tr align="center">
            <td>
                ${vo.idx}
            </td>
            <td>
                <c:set var="name" value="${fn:replace(vo.subject , '<' , '&lt;')}"/>
                <c:set var="name" value="${fn:replace(subject , '>' , '&gt;')}"/>
                ${vo.name}
            </td>
            <td>
                <c:if test="${date.year == vo.writeDate.year && date.month == vo.writeDate.month &&
                    date.date == vo.writeDate.date}">
                    <fmt:formatDate value="${vo.writeDate}" pattern="a h:mm:ss"></fmt:formatDate>
                </c:if>
                <c:if test="${date.year != vo.writeDate.year || date.month != vo.writeDate.month ||
                    date.date != vo.writeDate.date}">
                    <fmt:formatDate value="${vo.writeDate}" pattern="yyyy.MM.dd(E)"/>
                </c:if>
            </td>
            <td>
                ${vo.hit}
            </td>
        </tr>
        <tr>
            <th colspan="1" class="align-middle" style="border: 1px solid black">제목</th>
            <td colspan="4">
                <c:set var="subject" value="${fn:replace(vo.subject , '<' , '&lt;')}"/>
                <c:set var="subject" value="${fn:replace(subject , '>' , '&gt;')}"/>
                    ${vo.subject}
            </td>
        </tr>
        <tr>
            <th colspan="1" class="align-middle" style="border: 1px solid black">내용</th>
            <td colspan="4">
                <c:set var="subject" value="${fn:replace(vo.subject , '<' , '&lt;')}"/>
                <c:set var="subject" value="${fn:replace(subject , '>' , '&gt;')}"/>
                <c:set var="subject" value="${fn:replace(subject , 'enter' , '<br/>')}"/>
                    ${vo.content}
            </td>
        </tr>
        <tr>
            <th colspan="1" class="align-middle" style="border: 1px solid black">비밀번호</th>
            <td colspan="4">
                <input id="password" type="password" name="password"/>
            </td>
        </tr>
        <tr class="last" >
            <td colspan="4" align="center">
                <div style="float: left;">
                    <input
                            class="btn btn-outline-primary"
                            type="button"
                            value="돌아가기"
                            style="font-size: 13px;"
                            onclick="location.href='list.jsp?currentPage=${currentPage}'"/>
                    <%-- history.back(), (-1)를 사용하면 전 화면으로 돌아가기 때문에 조회수 반영 X --%>
                </div>
                <div style="float: right">
                    <input
                            class="btn btn-outline-danger"
                            type="submit"
                            value="삭제하기"
                            style="font-size: 13px;"
                            onclick="location.href='deleteOK.jsp?idx=${vo.idx}&currentPage=${currentPage}&job=deleteOK'"/>
                </div>
            </td>
        </tr>
    </table>

    <input type="hidden" name="idx" value="${vo.idx}">
    <input type="hidden" name="currentPage" value="${currentPage}">
</form>






</body>
</html>
