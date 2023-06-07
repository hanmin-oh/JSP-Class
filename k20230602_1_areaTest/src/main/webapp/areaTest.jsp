<%--
  Created by IntelliJ IDEA.
  User: TJ
  Date: 2023-06-02
  Time: 오전 9:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP의 시스템 영역</title>
</head>
<body>

<%--
    jsp에서 사용하는 시스템 영역과 유효 범위
    pageContext => 현재 보고있는 페이지
    request => 현재 보고있는 페이지와 현재 보고있는 페이지의 다음 페이지 까지
    session => 브라우저가 실행되면 생성되고 브라우저가 종료되면 소멸되는 영역
    application => 서버가 실행되면 생성되고 서버가 종료되면 소멸되는 영역
--%>

<%
    String var = "일반 변수";
    out.println("일반 변수: " + var + "<br/>");

    /*  시스템 영역 변수 사용하기
    - 영역이름.setAttribute("영역 변수 이름" , 영역 변수에 저장할 데이터)
    - 영역 변수가 저장되는 기억 공간은 영역 변수 이름은 key로 하고 영역 변수에 저장되는 데이터를 value로 하는
    Map<String, Object> 형태의 구조로 value의 자료형이 Object인 이유는 개발자가 어떤 타입의 데이터를 영역 변수의
    저장할지 모르기 대문이다. */
    pageContext.setAttribute("pageContextVar" , "areaTest.jsp의 pageContext 영역 변수" + "<br/>");

    //영역 변수에 저장된 데이터는 영역이름.getAttribute("영역 변수 이름")
    out.println(pageContext.getAttribute("pageContextVar"));

    request.setAttribute("requestVar" , "areaTest.jsp의 request 영역 변수" + "<br/>");
    session.setAttribute("sessionVar" , "areaTest.jsp의 session 영역 변수" + "<br/>");
    application.setAttribute("applicationVar" , "areaTest.jsp의 application 영역 변수" + "<br/>");

    out.println(request.getAttribute("requestVar"));
    out.println(session.getAttribute("sessionVar"));
    out.println(application.getAttribute("applicationVar"));


    /* 영역 변수와 영역 변수에 저장하는 데이터가 기억되는 공간은 Map<String , Object> 형태이므로 getAttribute()
    메소드로 영역 변수에 저장된 데이터를 얻어오면 object 타입으로 얻어오기 때문에 영역 변수에 저장된 데이터는
    일반 변수에 저장될 때 일반 변수의 데이터 타입으로 형변환시켜 사용해야 한다. */
    String pageContextVar = (String) pageContext.getAttribute("pageContextVar");
    out.println("applicationVar: " + pageContextVar + "<br/>");

    /* sendRedirect() : 인수로 지정된 페이지로 넘겨준다.
      - sendRedirect() 메소드는 주소창에 표시되는 페이지 이름이 인수로 지정한 페이지 이름으로 변경된다.
      - 현재 페이지와 sendRedirect() 메소드의 인수로 지정한 페이지는 완전히 분리된다.
      - 새로고침하면 주소창에 표시된 페이지만 다시 실행된다.
     - response.sendRedirect("requestTest.jsp");
     ※ sendRedirect() 메소드는 request 영역의 데이터를 가지고 인수로 지정된 페이지로 넘어간다.
     */

    /* forward() : 인수로 지정된 페이지로 넘겨준다.
     - forward() 메소드는 주소창에 표시되는 페이지 이름이 foward() 메소드가 실행된 페이지 이름이 그대로 유지된다.
     - 현재 페이지와 forward() 메소드의 인수로 지정한 페이지는 완전히 분리된다.
     - 새로고침하면 주소창에 표시된 forward() 메소드가 실행된 페이지부터 forward() 메소드의 인수로 지정한
    페이지까지 다시 실행된다.
     ※ forward() 메소드는 request 영역의 데이터를 가지고 인수로 지정된 페이지로 넘어간다.
     */
    pageContext.forward("requestTest.jsp");
%>

</body>
</html>
