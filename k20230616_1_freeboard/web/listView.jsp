<%@ page import="com.tjoeun.vo.FreeboardList" %>
<%@ page import="com.tjoeun.vo.FreeboardVO" %>
<%@ page import="com.tjoeun.service.FreeboardService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
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
        <%-- 부트스트랩 아이콘 --%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link rel="stylesheet" href="style.css">
</head>
<body>
<%-- ${freeboardList} --%>


<div class="m-3">
    <table class="table" style="width: 1000px; margin-left: auto; margin-right: auto;">
        <tr class="table2">
            <th colspan="5" style="font-size: 30px; text-align: center; border-radius: 40px; border: hidden">게시판 보기</th>
        </tr>
        <tr class="page">
            <td colspan="5" align="right" style="border-radius: 40px; border: hidden">
                ${freeboardList.totalCount}(${freeboardList.currentPage} / ${freeboardList.totalPage})
            </td>
        </tr>
        <tr>
            <td style="width: 70px; text-align: center;">글번호</td>
            <td style="width: 70px; text-align: center;">제목</td>
            <td style="width: 100px; text-align: center;">이름</td>
            <td style="width: 150px; text-align: center;">작성일</td>
            <td style="width: 70px; text-align: center;">조회수</td>
        </tr>

        <!-- 오늘 날짜를 기억하는 Date 클래스 객체를 useBean으로 만든다. -->
        <jsp:useBean id="date" class="java.util.Date"/>

        <!-- list.jsp에서 request 영역에 저장한 freeboardList에서 1페이지 분량의 글을 꺼내온다. -->
        <!-- 공지글을 출력한다. -->
        <c:set var="notice" value="${notice}"/>
        <c:forEach var="vo" items="${notice}">
            <c:if test="${currentPage == 1}">
            <tr class="page">
                <td align="center">
                    <img src="./images/notice.png"/>
                </td>
                <td align="center">
                    <c:set var="subject" value="${fn:replace(vo.subject , '<' , '&lt;')}"/>
                    <c:set var="subject" value="${fn:replace(subject , '>' , '&gt;')}"/>
                    <a href="increment.jsp?idx=${vo.idx}&currentPage=${currentPage}">
                            ${vo.subject}(${vo.commentCount})
                    </a>
                    <c:if test="${date.year == vo.writeDate.year && date.month == vo.writeDate.month &&
                    date.date == vo.writeDate.date}">
                        <img src="./images/new.png"/>
                    </c:if>
                    <c:if test="${vo.hit > 10}">
                        <img src="./images/hot.gif"/>
                    </c:if>
                </td>
                <td align="center">
                    <c:set var="name" value="${fn:replace(vo.subject , '<' , '&lt;')}"/>
                    <c:set var="name" value="${fn:replace(subject , '>' , '&gt;')}"/>
                        ${vo.name}
                </td>
                <td align="center">
                    <c:if test="${date.year == vo.writeDate.year && date.month == vo.writeDate.month &&
                    date.date == vo.writeDate.date}">
                        <fmt:formatDate value="${vo.writeDate}" pattern="a h:mm:ss"></fmt:formatDate>
                    </c:if>
                    <c:if test="${date.year != vo.writeDate.year || date.month != vo.writeDate.month ||
                    date.date != vo.writeDate.date}">
                        <fmt:formatDate value="${vo.writeDate}" pattern="yyyy.MM.dd(E)"/>
                    </c:if>
                </td>
                <td align="center">
                        ${vo.hit}
                </td>
            </tr>
            </c:if>
        </c:forEach>
        <!-- 메인글을 출력한다. -->
        <c:set var="list" value="${freeboardList.list}"/>
        <%--   메인글이 1건도 없으면 글이 없다고 출력한다.     --%>
        <c:if test="${list.size() == 0 }">
        <tr>
            <td colspan="5">
                <marquee>테이블에 저장된 글이 없습니다.</marquee>
            </td>
        </tr>
        </c:if>
        <%-- 메인글이 있으면 메인글의 개수만큼 반복하며 글 제목을 출력한다. --%>
        <c:if test="${list.size() != 0}">
            <c:forEach var="vo" items="${list}">
        <tr>
            <td align="center">
                ${vo.idx}
            </td>
            <td align="center">
                <%-- 제목에 태그를 적용할 수 없게 한다.--%>
                <c:set var="subject" value="${fn:replace(vo.subject , '<' , '&lt;')}"/>
                <c:set var="subject" value="${fn:replace(subject , '>' , '&gt;')}"/>
                    <%--제목에 하이퍼링크를 걸어준다.--%>
                    <%--하이퍼링크를 클릭하면 조회수를 증가시키고(increment.jsp) 클릭한 메인글의 내용을 표시한다.--%>
                    <%-- <a href="incrementStudy.jsp?idx=${vo.idx}">--%>
                    <a href="increment.jsp?idx=${vo.idx}&currentPage=${currentPage}">
                        ${vo.subject}(${vo.commentCount})
                    </a>
                <%--오늘 입력된 글에 new 아이콘 이미지를 표시한다.--%>
                <c:if test="${date.year == vo.writeDate.year && date.month == vo.writeDate.month &&
                    date.date == vo.writeDate.date}">
                    <img src="./images/new.png"/>
                </c:if>
                <%--조회수가 일정 횟수를 넘거아면 hot--%>
                <c:if test="${vo.hit > 10}">
                    <img src="./images/hot.gif"/>
                </c:if>
            </td>
            <td align="center">
                <c:set var="name" value="${fn:replace(vo.subject , '<' , '&lt;')}"/>
                <c:set var="name" value="${fn:replace(subject , '>' , '&gt;')}"/>
                ${vo.name}
            </td>
            <td align="center">
                <%-- 오늘 입력된 글은 시간만 어제 이전에 입력된 글은 날짜만 출력한다. --%>
                <c:if test="${date.year == vo.writeDate.year && date.month == vo.writeDate.month &&
                    date.date == vo.writeDate.date}">
                    <fmt:formatDate value="${vo.writeDate}" pattern="a h:mm:ss"></fmt:formatDate>
                </c:if>
                <c:if test="${date.year != vo.writeDate.year || date.month != vo.writeDate.month ||
                    date.date != vo.writeDate.date}">
                    <fmt:formatDate value="${vo.writeDate}" pattern="yyyy.MM.dd(E)"/>
                </c:if>
            </td>
            <td align="center">
                ${vo.hit}
            </td>
        </tr>
            </c:forEach>
        </c:if>

       <%--  페이지 이동 버튼--%>
        <tr class="page">
            <td colspan="5" align="center" style="border-radius: 40px; border-top: hidden">
                <% FreeboardList freeboardList = (FreeboardList) request.getAttribute("freeboardList"); %>
                <c:if test="${freeboardList.currentPage > 1 }">
                    <button
                            class="btn btn-outline-primary"
                            type="button"
                            title="첫 페이지로 이동합니다."
                            onclick="location.href='?currentPage=1'"
                    >처음</button>
                </c:if>
                <c:if test="${freeboardList.currentPage <= 1 }">
                    <button
                            class="btn btn-outline-primary"
                            type="button"
                            disabled="disabled"
                            title="이미 첫 페이지 입니다."
                    >처음</button>
                </c:if>
                <c:if test="${freeboardList.startPage > 1 }">
                    <button
                            class="btn btn-outline-primary"
                            type="button"
                            title="이전 10페이지로 이동합니다."
                            onclick="location.href='?currentPage=<%=freeboardList.getStartPage() - 1%>'"
                    >이전</button>
                </c:if>
                <c:if test="${freeboardList.startPage <= 1 }">
                    <button
                            class="btn btn-outline-primary"
                            type="button"
                            disabled="disabled"
                            title="이미 첫 10페이지 입니다."
                    >이전</button>
                </c:if>
                <c:forEach var="i" begin="${freeboardList.startPage}" end="${freeboardList.endPage}">
                    <c:if test="${freeboardList.currentPage == i }">
                        <button
                                class="btn btn-outline-primary"
                                type='button'
                                disabled='disabled'
                        >${i}</button>
                    </c:if>
                    <c:if test="${freeboardList.currentPage != i}">
                        <button
                                class="btn btn-outline-primary"
                                type='button'
                                title="${i}페이지로 이동합니다."
                                onclick="location.href='?currentPage=${i}'"
                        >${i}</button>
                    </c:if>
                </c:forEach>
                <c:if test="${freeboardList.endPage < freeboardList.totalPage}">
                    <button
                            class="btn btn-outline-primary"
                            type="button"
                            title="다음 10페이지로 이동합니다."
                            onclick="location.href='?currentPage=<%=freeboardList.getEndPage() + 1%>'"
                    >다음</button>
                </c:if>
                <c:if test="${freeboardList.endPage >= freeboardList.totalPage}">
                    <button
                            class='btn btn-outline-primary'
                            type="button"
                            disabled="disabled"
                            title="이미 마지막 10페이지 입니다."
                    >다음</button>
                </c:if>
                <c:if test="${freeboardList.currentPage < freeboardList.totalPage}">
                    <button
                            class="btn btn-outline-primary"
                            type="button"
                            title="마지막 페이지로 이동합니다."
                            onclick="location.href='?currentPage=<%=freeboardList.getTotalPage()%>'"
                    >마지막</button>
                </c:if>
                <c:if test="${freeboardList.currentPage >= freeboardList.totalPage}">
                    <button
                            class="btn btn-outline-primary"
                            type="button"
                            disabled="disabled"
                            title="이미 마지막 페이지 입니다."
                    >마지막</button>
                </c:if>

                <%-- 글쓰기 버튼 --%>
                <span style="float: right;">
                <input
                        class="btn btn-outline-primary"
                        type="button"
                        value="글쓰기"
                        style="font-size: 13px;"
                        onclick="location.href='insert.jsp'"/>
                </span>
            </td>
        </tr>
    </table>
</div>




























</body>
</html>
