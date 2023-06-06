<%@ page import="com.tjoeun.useBean.MemberVO" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원정보</title>
</head>
<body>
  <%
    request.setCharacterEncoding("UTF-8");
    /*Date date = new Date();
    out.println(date);*/
  %>

<%--
  UseBean  액션 태그로 new를 사용하지 않고 객체를 만들 수 있다.
  id 속성에는 만들려는 객체의 이름을 입력한다.
  class 속성에는 객체를 만들려하는 클래스 이름을 반드시 풀 패키지 이름과 함께 입력한다.
--%>

<jsp:useBean id="date" class="java.util.Date"/>
${date}<br/>

<%-- MemberVO vo = new MemberVO():와 같이 useBean을 사용해서 객체를 만든다.--%>
<jsp:useBean id="vo" class="com.tjoeun.useBean.MemberVO">

  <%--
      - setProperty 액션 태그는 지정한 필드의 setter 메소드를 실행한다.
      - property 속성에는 setter 메소드를 실행할 필드 이름을 입력한다.
      - name 속성에는 setter 메소드를 실행할 필드가 정의된 객체 이름을 입력한다.
      - useBean 액션 태그를 사용하면 이전 페이지에서 form에 저장되서 넘어오는 데이터를 받는 동작을
      별도로 코딩하지 않아도 useBean이 자동으로 받아서 처리한다.
   --%>
  <%--
    <jsp:setProperty name="vo" property="id"/>
    <jsp:setProperty name="vo" property="name"/>
    <jsp:setProperty name="vo" property="password"/>
    <jsp:setProperty name="vo" property="age"/>
    <jsp:setProperty name="vo" property="gender"/>
    <jsp:setProperty name="vo" property="ip"/>
  --%>

  <%--
     property 속성에 "*"을 입력하면 모든 필드의 setter 메소드가 일괄적으로 실행된다.
     단, form의 name 속성의 속성값과 같은 이름을 가지는 필드의 setter 메소드만 실행된다.
  --%>
  <jsp:setProperty name="vo" property="*"/>

</jsp:useBean>
${vo}<br/>

</body>
</html>
