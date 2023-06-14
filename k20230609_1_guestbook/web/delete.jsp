<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>삭제글 보여주기</title>
    <link rel="stylesheet" href="./guestbook.css"/>
</head>
<body>

<%-- 삭제할 글을 화면에 보여주고 비밀번호를 입력받아 실제로 글을 삭제하는 페이지로 넘겨준다. --%>
<form action="deleteOK.jsp" method="post">
    <table class="table1" width="99%" border="1" align="center" cellpadding="5" cellspacing="0">
        <tr>
            <th>삭제할 글 확인</th>
        </tr>
        <tr>
            <td>
                ${vo.idx}.
                <c:set var="name" value="${fn:replace(vo.name, '<' , '&lt;')}"></c:set>
                <c:set var="name" value="${fn:replace(vo.name, '>' , '&gt;')}"></c:set>
                <input type="text" name="name" value="${vo.name}">${fn:trim(vo.name)}(${vo.ip})님이
                <fmt:formatDate var="today" value="${date}" />
                <fmt:formatDate var="day" value="${vo.writeDate}" />
                <c:if test="${today == day}">
                    <fmt:formatDate value="${vo.writeDate}" pattern="HH:mm"></fmt:formatDate>
                </c:if>
                <c:if test="${today != day}">
                    <fmt:formatDate value="${vo.writeDate}" pattern="yyyy.MM.dd(E)"></fmt:formatDate>
                </c:if>
                에 남긴 글
                <br/>
                    <textarea rows="10" name="memo" readonly="readonly" style="resize: none; width: 99%;">
                        <c:set var="memo" value="${fn:replace(vo.memo, '<' , '&lt;')}"></c:set>
                        <c:set var="memo" value="${fn:replace(memo, '>' , '&gt;')}"></c:set>
                        <c:set var="memo" value="${fn:replace(memo, enter, '<br/>')}"></c:set>
                        ${vo.memo}
                    </textarea>
                <br/>
            </td>
        </tr>
        <tr>
            <td colspan="6" align="center">
                <label>
                    비밀번호 <input type="password" name="password"/>
                </label>
                <input class='button button1' type="submit" value="삭제" >
                <input class='button button1' type="reset" value="다시쓰기" >
                <input class='button button1' type="button" value="돌아가기" onclick="history.back()">
            </td>
        </tr>
    </table>
    <%--    삭제할 글번호와 삭제 후 돌아갈 페이지 번호를 form에 hidden으로 저장해서 deleteOK.jsp로 넘긴다.    --%>
    <input type="hidden" name="idx" value="${vo.idx}"/>
    <input type="hidden" name="currentPage" value="${currentPage}"/>


</form>
</body>
</html>
