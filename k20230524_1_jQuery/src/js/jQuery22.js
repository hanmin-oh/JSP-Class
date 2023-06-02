$( () => {
    $('#emp_search').click( function () {
    //조회할 사원 번호를 얻어온다.
        //$('th:ep(0)').text('사원번호');
        let empid = $('input[name=empid]').val();
        //3자리 숫자만 입력받는다.
        if(empid.length == 3 && !isNaN(empid)) {
// =================================jQuary Ajax================================================

            $.ajax({
                url: 'emplist.xml', //필수, 호출할 페이지 주소
                cache: false, //사용자 캐시 사용 여부
                method: 'get', //필수, 서버에 데이터를 요청하는 방식
                asyn: true, //필수, 비동기 방식 사용 여부(false는 동기 방식)
                dataType: 'xml', //전송받는 데이터 타입(xml, json, html, script)
                data: { // methodr가 post로 지정된 경우 서버로 전송할 데이터 목록
                    'key' : 'value'
                },
                /*success는 Ajax 요청이 성공했을 때 실행할 콜백 함수
                - Ajax 요청이 성공하면 응답바는 데이터가 콜백 함수의 인수로 넘어온다.*/
                success: data => {
                    //입력한 사원 번호에 해당되는 데이터를 출력
                    //부모 요소를 선택한다.
                    let empInfo = $(data).find('EMPLOYEE_ID:contains(' + empid + ')').parent();
                    /*검색한 사원 번호에 해당되는 데이터가 있으면 테이블에 출력한다.
                    검색된 사원 번호의 부모는 <ROW> 이므로 검색된 내용에 'ROW'가 있으면 테이블에
                    데이터를 출력하고 없으면 에러 메시지를 출력한다.*/
                    if($(empInfo).is('ROW')) {
                        //table 태그의 자손인 input 태그의 개수만큼 반복하며 xml 파일에서 읽어온 데이터를 채워 넣는다.
                        $('table input').each(function (index , obj) {
                            let search = $(empInfo).children().eq(index).text();
                            $('table input').eq(index).val(search);
                        });
                    } else {
                        alert(empid + '번은 없는 사원번호입니다.');
                    }
                },
                //error는 Ajax 요청이 실패했을 때 실행할 콜백 함수 (필수X)
               error: e => {
                    console.log(e.status + ': ' + e.statusText);
               },
            });

// =================================jQuary Ajax================================================
        } else {
            alert('정확한 사원 번호를 입력하세요')
            $('input[name=empid]').val('');
            $('input[name=empid]').focus();
        }
    }); 

});