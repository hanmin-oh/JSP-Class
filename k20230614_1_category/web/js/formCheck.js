function mainFormCheck(obj) {

    // 카테고리 유효성 검사
    if (!obj.category.value || obj.category.value.trim().length == 0) {
        alert("카테고리를 입력하세요."); // 오류 메시지 표시
        obj.category.value = '';
        obj.category.focus();
        return false; // 제출 중지
    }
    return true; // 제출 실행
}

function subFormCheck(obj) {
    // 카테고리 유효성 검사
    if (!obj.category.value || obj.category.value.trim().length == 0) {
        alert("서브 카테고리를 입력하세요."); // 오류 메시지 표시
        obj.category.value = '';
        obj.category.focus();
        return false; // 제출 중지
    }
    return true; // 제출 실행
}

$( () => {
    // 메인 카테고리에 아무것도 입력하지 않았나 검사한다.
    // 메인 카테고리를 입력하는 form은 1개만 있기 때문에 id를 지정해서 처리한다.
    // 메인 카테고리를 입력하는 form은 1개만 있기 때문에 id를 지정해서 처리한다. 
    $('#form').submit(function (event){
       // $.trim() : 인수로 지정된 문자열 앞, 뒤의 불필요한 빈칸을 제거한다.
        let category = $.trim($('#category').val()).length;
        if(category == 0) {
            alert("카테고리를 입력하세요.");
        //     유효성 검사를 실행했는데 규칙에 위배되므로 action 페이지로 넘겨주는 submit 페이지로 넘겨주고
        //     기본(default) 동작을 중지시킨다.
            event.preventDefault();

        //     category라는 id 속성이 지정된 텍스트 박스의 내용을 지운다.
            $('#category').val('');
        //     form이라는 id 속성이 지정된 텍스트 박스의 내용을 지운다.
        //     반드시 [0]이라고 인덱스를 지정해야 정상적으로 실행된다.
        //     $('#form')[0].reset();
        //     category라는 id 속성이 지정된 텍스트 박스로 포커스를 옮겨준다.
            $('#category').focus();
        } else {
            alert($('#category').val() + '이(가) 카테고리에 입력되었습니다. ');
        }
    });

// 서브 카테고리에 아무것도 입력되지 않았나 검사한다.
// 서브 카테고리에 입력 form은 여러개가 있기 때문에 class를 지정해서 처리한다.
// 서브 카테고리를 입력하는 폼의 개수만큼 반복하며 모든 서브 카테고리 폼에 name 속성이 다르게 지정한다.

// sub_form이라는 class 속성이 지정된 폼의 개수만큼 each() 함수의 인수로 지정한 익명 함수가 반복되서 실행한다.
// each() 함수는 익명 함수로 2개의 인수를 넘기는데 첫 번재 인수는 선택된 객체의 인덱스이고 두 번째 인수는
// 선택된 객체들 중에서 인덱스 번째 객체이다.

    $('.sub_form').each( (index, item) => {
        // console.log(index, item)
        // addClass() 함수로 each() 함수를 통해서 반복되는 객체(서브 카테고리 폼)에 class 속성을 추가한다.
        $(item).addClass('sub_form' + index);
    });


    $('.sub_category').each( (index, item) => {
        // console.log(index, item)
        // addClass() 함수로 each() 함수를 통해서 반복되는 객체(서브 카테고리 폼)에 class 속성을 추가한다.
        $(item).addClass('sub_category' + index);
    });

    $('.sub_form').each( (index, item) => {
        $('.sub_form' + index).submit( function (event) {
           let sub_category = $.trim($('.sub_category' + index).val()).length;
           if(sub_category == 0) {
               let categoryName = $.trim($('.sub_form' + index).find('span').text());
               alert(categoryName + '서브 카테고리는 반드시 입력해야 합니다.');
               event.preventDefault();
               $('sub_form' + index)[0].reset();
               $('sub_category' + index).focus();
           }
        });
    });

});


