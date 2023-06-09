<%--
  Created by IntelliJ IDEA.
  User: TJ
  Date: 2023-06-08
  Time: 오후 8:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="insertOk.jsp" method="post">
  <table width="600" border="1" cellpadding="5" cellspacing="0">
    <tr>
      <th colspan="2">방명록쓰기</th>
    </tr>
    <tr>
      <th width="100">
        <label for="name">이름</label>
      </th>
      <td width="500">
        <input id="name" type="text" name="name"/>
      </td>
    </tr>
    <tr>
      <th width="100">
        <label for="password">비밀번호</label>
      </th>
      <td width="500">
        <input id="password" type="password" name="password"/>
      </td>
    </tr>
    <tr>
      <th>
        <label for="memo">메모</label>
      </th>
      <td>
        <textarea id="memo" rows="10" name="memo" style="resize: none; width: 99%"></textarea>
      </td>
    </tr>
    <tr>
      <td colspan="2" align="center">
        <input type="submit" value="글남기기"/>
        <input type="reset" value="다시쓰기"/>
        <input type="button" value="돌아가기" onclick="history.back()"/>
      </td>
    </tr>
  </table>

  <!-- 작성자 ip 주소를 hidden으로 넘겨준다. -->
  <%-- <input type="text" name="ip" value="<%=request.getRemoteAddr()%>"/> --%>
  <input type="hidden" name="ip" value="${pageContext.request.remoteAddr}"/>
</form>

</body>
</html>
