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
</head>
<body>

<form class="m-3" action="insertOK.jsp" method="post">
  <table class="table" style="width: 700px; margin-left: auto; margin-right: auto">
    <tr class="table-primary">
      <th colspan="3" style="font-size: 30px; text-align: center ">메인글 쓰기</th>
    </tr>
    <tr>
      <th width="100" class="align-middle">
        <label for="name">이름</label>
      </th>
      <td width="500">
        <input
            id="name"
            class="form-control form-control-sm"
            type="text"
            name="name"
            style="width: 200px;"/>
      </td>
      <th class="align-middle table-info" width="100" style="text-align: center">
        공지글<input class="form-check-input" type="checkbox" name="notice" value="YES">
      </th>
    </tr>
    <tr>
      <th width="100" class="align-middle">
        <label for="password">비밀번호</label>
      </th>
      <td colspan="2">
        <input
            id="password"
            class="form-control form-control-sm"
            type="password"
            name="password"
            style="width: 200px;"/>
      </td>
    </tr>
    <tr>
      <th class="align-middle">
        <label for="subject">제목</label>
      </th>
      <td colspan="2">
        <input id="subject" class="form-control form-control-sm" type="text" name="subject" />
      </td>
    </tr>
    <tr>
      <th class="align-middle">
        <label for="content">내용</label>
      </th>
      <td colspan="2">
        <textarea
              id="content"
              name="content"
              class="form-control form-control-sm"
              rows="10"
              style="resize: none"></textarea>
      </td>
    </tr>
    <tr class="table-secondary">
      <td colspan="3" align="center">
        <input
                class="btn btn-outline-primary"
                type="submit"
                value="저장하기"
                style="font-size: 13px;"/>
        <input
                class="btn btn-outline-danger"
                type="reset"
                value="다시쓰기"
                style="font-size: 13px;"/>
        <input
                class="btn btn-outline-warning"
                type="button"
                value="돌아가기"
                style="font-size: 13px;"
                onclick="history.back()"/>
      </td>
    </tr>
  </table>
  <%-- 작성자 ip 주소는 hidden으로 insertOK.jsp로 넘긴다. --%>
  <input type="hidden" name="ip" value="${pageContext.request.remoteAddr}">
</form>

</body>
</html>
