<%@page import="com.tjoeun.myCalendar.LunarDate"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.reflect.Array"%>
<%@page import="com.tjoeun.myCalendar.SolaToLunar"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="com.tjoeun.myCalendar.MyCalendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>만년 달력</title>
<link rel="icon" href="./logo.png"> 
<style type="text/css"> 

	table {
		/* border : 선두께 선종류 선색상 */
		border: 5px; 
	}
	
	th#title {
		font-size: 30pt;
		font-family: D2Coding;
		font-weight: bold;
		color: green; 
	}
	tr {
		height: 70px;
		font-family: D2Coding;
		border-bottom: 10px;
	} 
	th {
		font-size: 16pt;
		width: 100px;
		font-family: D2Coding;
	}
	
	th#sat{color: blue;} th#sun{color: red;}
	
	td{
		text-align: right; /* 수평 정렬 */ 
		vertical-align: top;
		border-radius: 10px;
	}
	
	td#choice {
		text-align: left;
		vertical-align: middle;
	}
	td.sat{color: blue;} td.sun{color: red;} 
	td.beforesun{color: red; font-size: 10pt; background-color: gray;} 
	td.before{font-size: 10pt; background-color: gray;}
	td.aftersat{color: blue; font-size: 10pt; background-color: gray;} 
	td.after{font-size: 10pt; background-color: gray;}
	/* 
	하이퍼링크 스타일 지정하기
	link : 1번도 클릭하지 않은 하이퍼링크
	visited : 1번 이상 클릭한 하이퍼링크
	hover : 하이퍼링크에 마우스를 올리고 있을 때
	active : 하이퍼링크를 마우스로 누르고 있을 때
	 
	 a:link {
		color: black;
		text-decoration: none;
	}
	 a:visited {
		color: black;
		text-decoration: none;
	}
	 a:link, a:visited  {
		color: black;
		text-decoration: none;
	} 	 */
	a {
		color: black;
		text-decoration: none;
	}
	a:hover {
		color: green;
		text-decoration: underline;
	}
	a:active {
		color: olive;
		text-decoration: underline;
	}
	
	.button {
	  background-color: #4CAF50; /* Green */
	  border: none;
	  color: white;
	  padding: 5px;
	  text-align: center;
	  text-decoration: none;
	  display: inline-block;
	  font-size: 16px;
	  margin: 4px 2px;
	  transition-duration: 0.4s;
	  cursor: default;
	}
	.button2 {
	  background-color: white; 
	  color: black; 
	  border: 2px solid #4CAF50;
	}
	.button2:hover {
	  background-color: #4CAF50;
	  color: white;
	}
	.button1 {
	  background-color: white; 
	  color: black; 
	  border: 2px solid #4CAF50;
	}
	.button1:hover {
	  background-color: #4CAF50;
	  color: white;
	}
	.select{
		width: 100px;
		height: 30px;
	}
	td.holiday {
		color: white;
		background-color: red;
		font-weight: bold;
	}
	span {
		font-size: 8pt;
	
	}
</style>
</head>
<body>
<% 
	//컴퓨터 시스템의 년, 월을 얻어온다.
	Calendar calendar = Calendar.getInstance();
	int year = calendar.get(Calendar.YEAR);
	int month = calendar.get(Calendar.MONTH) +1;
	try {
	/* 이전달, 다음달 하이퍼링크 또는 버튼을 클릭하면 get 방식으로 달력을 출력할 년, 월을 받는다.
	 달력이 최초로 실행되면 이전 페이지가 존재하지 않기 때문에 넘어오는 데이터가 없으므로 year와 
	 month가 null이므로 NumberFormatException이 발생된다. => 예외 처리를 해야한다. */
	year = Integer.parseInt(request.getParameter("year"));
	month = Integer.parseInt(request.getParameter("month"));
		if(month >= 13) {
			year++;
			month = 1;
		} else if (month <= 0 ){
			year--;
			month = 12;
		}  
	} catch (NumberFormatException e) {
	}
	
	// 달력을 출력할 달의 양력/음력 대응 결과를 얻어온다.
	ArrayList<LunarDate> lunarDate = SolaToLunar.solaToLunar(year, month);
%>

<table width="700" border="1" align="center" cellpadding="5" cellspacing="0" >
	<tr>
		<th>
			<!-- 
			 - <a> 태그가 설정된 문자열을 클릭하면 href 속성에 지정된 곳으로 이동한다.
			 - href 속성에 "#"뒤에 id(해시)를 지정하면 현재 문서에서 id가 지정된 요소로 이동(책갈피)하고
			url(주소)이 지정되면 지정된 url로 페이지를 이동한다.
			 - "?"뒤에 이동하는 페이지로 전달할 데이터를 넘겨주는데 이 때 넘겨줄 데이터가 2건 이상이라면
			데이터와 데이터 사이에 "&"를 넣어서 구분한다.
			 - "?"뒤에 절대로 띄어쓰기를 하면 안된다. 
			<a href="?year=<%=year%>&month=<%=month-1%>">이전달</a>  -->
			<input class="button button1" type="button" value="이전달" onclick="location.href='?year=<%=year%>&month=<%=month-1%>'">
		</th>
		<th id="title" colspan="5">
				<%=year%>년 <%=month %>월
		</th>
		<th>
			<!--<a href="?year=<%=year%>&month=<%=month+1%>">다음달</a>    -->
			<button class="button button2" type="button" onclick="location.href='?year=<%=year%>&month=<%=month+1%>'">다음달</button>
		</th>
	</tr>
	<tr>
		<th id=sun>일</th>
		<th>월</th>
		<th>화</th>
		<th>수</th>
		<th>목</th>
		<th>금</th>
		<th id=sat>토</th>
	</tr>
	
	<!-- 달력에 날짜를 출력한다. -->
	<tr>
<% 	
	/* for (int i=0; i<MyCalendar.weekDay(year, month, 1); i++) {
	    out.println("<td>&nbsp;</td>");
	} */
	// 빈칸에 전달 날짜를 출력한다.
	int week =  MyCalendar.weekDay(year, month, 1);
	int start = 0;
	if(month == 1) {
		start = 31 - week;
	} else {
		start = MyCalendar.lastDay(year, month-1) - week;
	}
	for (int i=0; i<week; i++) {
		if(i==0) {
			out.println("<td class='beforesun'>" + (month == 1 ? 12 : month-1) + "/" + (++start) +"</td>");
		} else {
			out.println("<td class='before'>" + (month == 1 ? 12 : month-1) + "/" + (++start) +"</td>");
		}
	}
	// 나머지 날짜 출력
	for (int i = 1; i <= MyCalendar.lastDay(year, month); i++) {
		
		//공휴일인가 판단해서 class 속성을 다르게 지정해서 날짜를 출력한다.
		if(lunarDate.get(i-1).getHoliday().length() != 0) { // 공휴일인가?
			out.println("<td class='holiday'>" + i + lunarDate.get(i-1).getHoliday() + "</td>");
		} else {
			switch (MyCalendar.weekDay(year, month, i)) {
				case 0:
					out.println("<td class='sun'>" + i + "</td>"); break;
				case 6:
					out.println("<td class='sat'>" + i + "</td>"); break;
				default:
					out.println("<td>" + i + "</td>"); break;
			}
		}
		if(MyCalendar.weekDay(year, month, i) == 6 && i != MyCalendar.lastDay(year, month)) {
        	out.println("</tr><tr>");
		}
	}
	// 다음달 1일의 요일을 계산한다.
	if(month == 12 ) {
		week = MyCalendar.weekDay(year + 1 , 1 , 1);
	}else {
		week = MyCalendar.weekDay(year + 1 , month+1 , 1);
	}
	//다음달 1일이 일요일이면 남는 빈 칸이 없으므로 다음달 날짜를 출력할 필요가 없다.
	for(int i = 1 ; i<=6-MyCalendar.weekDay(year, month, MyCalendar.lastDay(year, month)) ; i++) {
		if(i==6-MyCalendar.weekDay(year, month, MyCalendar.lastDay(year, month))) {
			out.println("<td class='aftersat'>" + (month == 12 ? 1 : month+1) + "/" + i + "</td>");
		} else {
			out.println("<td class='after'>" + (month == 12 ? 1 : month+1) + "/" + i +"</td>");
		}
	}
%>
	</tr>	
	<!-- 년 월을 선택하고 보기 버튼을 클릭하면 선택된 달의 달력으로 한번에 넘어가게 한다. -->
	<tr>
		<td id ="choice" colspan="7">
			<form action="?">
				<fieldset style="width: 120px; display: inline;">
					<legend>년</legend>		
					<select name="year" class="select">
						<%
						for(int i = 1950 ; i <= 2050 ; i++) {
							if(calendar.get(Calendar.YEAR) == i) {
								out.println("<option selected='selected'>" + i + "</option>");								
							} else {
								out.println("<option>" + i + "</option>");
							}
						}
						%>
					</select>
				</fieldset>
				<fieldset style="width: 120px; display: inline;">
					<legend>월</legend>		
					<select name="month" class="select">
						<%
						for(int i = 1 ; i <= 12 ; i++) {
							if(calendar.get(Calendar.MONTH) +1 == i) {
								out.println("<option selected='selected'>" + i + "</option>");		
							} else {
								out.println("<option>" + i + "</option>");
							}
						}
						%>
					</select>
				</fieldset>
				<input type="submit" value="보기" class="select">
			</form>
		</td>
	</tr>
</table>
</body>
</html>