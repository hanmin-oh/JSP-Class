<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>출석 게시판</title>
  </head>
  <body>

  <%--입력 화면 시작--%>
  <form action="memoInsert.jsp" method="post">
    <table width="1000" align="center" border="1" cellpadding="5" cellspacing="0">
      <tr>
        <th colspan="3">간단한 출석 게시판</th>
      </tr>
      <tr>
        <th width="100">이름</th>
        <th width="100">비밀번호</th>
        <th width="800">메모</th>
      </tr>
      <tr>
        <td align="center">
          <input type="text" name="name" style="width: 90%; height: 25px;"/>
        </td>
        <td align="center">
          <input type="text" name="password" style="width: 90%; height: 25px;"/>
        </td>
        <td align="center">
          <input type="text" name="memo" style="width: 90%; height: 25px;"/>
          <input type="submit" value="저장" style="height: 28px;"/>
        </td>
      </tr>
    </table>
  </form>


  <%--입력 화면 끝--%>
  <br/>
  <hr size="3" color="green"/>
  <br/>
  <%----%>

  </body>
</html>
