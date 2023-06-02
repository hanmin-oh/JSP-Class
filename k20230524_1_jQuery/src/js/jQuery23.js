$( () => {
    $('#emp_search').click( function () {
        //조회할 사원 번호를 얻어온다.
        let empid = $('input:text[name=empid]').val();
        //3자리 숫자만 입력받는다.
        if(empid.length == 3 && !isNaN(empid)) {
            $.ajax({
                url: 'emplist.xml',
                method: 'get',
                asyn: true,
                dataType: 'xml',
                success: data => {
                    let empInfo = $(data).find('EMPLOYEE_ID:contains(' + empid + ')').parent();
                    /* let empInfo = $(data).find('EMPLOYEE_ID:contains(' + empid + ')').val();
                    - 태그와 태그 사이에 들어있는 값을 찾는 것이기 때문에 val()를 넣으면 아무것도 나오지 않는다.*/
                    if($(empInfo).is('ROW')) {
                        //body 태그 내부에 테이블을 만들고 데이터를 넣어주는 함수 실행
                        $('body').append(makeTable(empInfo)).append('<br/>');
                    } else {
                       alert(empid + '번은 없는 사원번호입니다.');
                    }
                },
               error: e => {
                    console.log('요청 실패' + e.status);
               },
            });
        } else {
            alert('정확한 사원 번호를 입력하세요')
        }
        $('input[name=empid]').val('');
        $('input[name=empid]').focus();
    });

});

// 테이블을 만들고 xml 파일에서 얻어온 데이터를 테이블에 넣어서 리턴하는 함수
function makeTable (empInfo) {
    // 1. 테이블을 만든다.
    let $table = $('<table border="1">'); // <table> ~ </table>
    /*
    // 2. 테이블에 추가할 첫 행(머리글 행)을 만들어 테이블에 추가한다.
    let $tr = $('<tr>');
    //xml 파일에서 읽어온 사원 번호에 해당되는 데이터(자식 요소)의 개수만큼 반복하며 행에 열을 추가
    for(let i = 0 ; i<empInfo.children().length ; i++) {
        //행에 추가할 열을 만든다.
        let $th = $('<th>').append(empInfo.children().eq(i).prop('tagName'));
        //행에 열을 추가한다.
        $tr.append($th);
    }
    $table.append($tr);
    */
    let html = `
        <tr>
            <td>사원번호</td>
            <td>이름</td>
            <td>이메일</td>
            <td>내선번호</td>
            <td>입사일</td>
        </tr>
    `;
    $table.append(html);
    // 3. 테이블에 추가할 나머지 행들을 만들어 테이블에 추가한다.
    let $tr = $('<tr>');
    for(let i = 0 ; i<empInfo.children().length ; i++) {
        let $th = $('<th>').append(empInfo.children().eq(i).text());
        $tr.append($th);
    }
    $table.append($tr);
    // 4. 테이블을 리턴시킨다.
    return $table;

}