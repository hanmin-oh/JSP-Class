<%@ page import="com.tjoeun.useBean.MemberVO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원정보</title>
</head>
<body>
  <%
    request.setCharacterEncoding("UTF-8");
    //member.jsp에서 넘어오는 데이터를 받는다.
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    int age = Integer.parseInt(request.getParameter("age") );
    boolean gender = Boolean.parseBoolean(request.getParameter("gender") );

    // 접속자 ip 주소를 받는다.
    // getRemoteAddr(): 접속자 ip 주소를 얻어온다.
    // String ip = requestRemoteAddr
    String ip = request.getRemoteAddr();
    //out.println(ip);

    //MemoVo 클래스 객체를 만들고 member.jsp에서 넘겨받은 데이터를 넣어준다.
    /*
    MemberVO vo = new MemberVO();
    vo.setId(id);
    vo.setName(name);
    vo.setPassword(password);
    vo.setAge(age);
    vo.setIp(ip);
     */

    MemberVO vo = new MemberVO(id, name, password, age, gender, ip);
    out.println(vo + "<br/>");

  %>
  <table width="500" align="center" border="1" cellpadding="5" cellspacing="0">
    <tr>
      <th colspan="2">회원정보</th>
    </tr>
    <tr>
      <th width="150">아이디</th>
      <td width="350">
        <%=id %>
      </td>
    </tr>
    <tr>
      <th width="150">이름</th>
      <td>
        <%=name %>
      </td>
    </tr>
    <tr>
      <th>비밀번호</th>
      <td>
        <%=password %>
      </td>
    </tr>
      <th>나이</th>
      <td>
        <%=age %>
      </td>
    </tr>
    <tr>
      <th>성별</th>
      <td>
        <%=gender %>
      </td>
    </tr>
    <tr>
      <td colspan="2" align="center">
        <input type="button" value="돌아가기" onsubmit=""/>
      </td>
    </tr>
  </table>
</body>
</html>
