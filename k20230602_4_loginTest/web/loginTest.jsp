<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>로그인/로그아웃</title>
  </head>
  <body>

<%
  // post 방식으로 전송되는 한글 깨짐 방지

  /* - 로그인 버튼을 클릭되면 때 넘어오는 데이터(id와 password)를 받는다.
    - request.getParameter() : 이전 페이지에서 name 속성에 담겨서 넘어오는 데이터를 받는다.
    - 넘어오는 데이터가 없으면 null 이다. */
  String id = "";
  String password = "";
  try {
    id = request.getParameter("id").trim();
    password = request.getParameter("password").trim();
  } catch (Exception e) {
    //비워놓으면 에러 무시
  }

  //id 가 "Lee" 이고 "password"가 "123456"이면 로그인 처리를 한다.
        out.println("<script>");
    if( (id + password).length() != 0 ) { //로그인 에러처리가 자동으로 실행되는 경우를 처리하기 위한 코드
      if(id.equals("Lee") && password.equals("123456")) {
         // 로그인 처리 => 로그인 정보를 세션에 저장한다.
        session.setAttribute("id" , id);
        session.setAttribute("name" , "관리자");
        session.setAttribute("login" , "yes");
        out.println("alert(' " + session.getAttribute("name") + "님 어서오세요.')");
      } else {
        // 로그인 에러 처리
        out.println("alert('아이디 또는 비밀번호가 올바르지 않습니다.')");
      }
    }
        out.println("</script>");

//세션에서 로그인 정보를 읽어와서 로그인 상태, 로그아웃 상태의 화면을 브라우저에 출력한다.
  String login = (String) session.getAttribute("login"); //영역변수는 key, value (object) upcasting
  if(login != null && login.equals("yes") ) {
%>
<%-- 로그인 상태일 경우 브라우저에 표시될 내용 --%>
<%
  } else {
%>
<%-- 로그아웃 상태일 경우 브라우저에 표시될 내용 --%>
<form action="?" method="post">
  <table width="300px" border="1" cellpadding="5" cellspacing="0">
    <tr>
      <th><label for="id">아이디</label></th>
      <td>
        <input type="text" id="id" name="id"/>
      </td>
    </tr>
    <tr>
      <th><label for="password">비밀번호</label></th>
      <td>
        <input type="text" id="password" name="password"/>
      </td>
    </tr>
    <tr>
      <td colspan="2" align="center">
        <input type="submit" value="로그인"/>
      </td>
    </tr>
  </table>
</form>
<%
  }
%>


  </body>
</html>
