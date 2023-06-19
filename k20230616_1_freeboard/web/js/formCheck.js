//	신고 버튼이 클릭되면 report.jsp로 폼에 입력된 데이터를 전송하는 함수
function mySubmitReport(obj) {
    obj.action = 'updateAll.jsp';
    obj.submit();
}
