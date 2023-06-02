class UserStorage {

    //callback지옥 함수
    loginUser(id, password , onSuccess, onError) {
        setTimeout( () => {
            if(id == '이순신' && password == '1111' || id == '을지문덕' && password == '2222') {
                onSuccess(id);
            } else {
                onError('로그인 실패');
            }
        } , 1000);
    }

//로그인 후 역할을 받아오는 함수
    getRoles(user, onSuccess, onError) {
        setTimeout( () => {
            if(user == '이순신') {
                onSuccess({
                    name: '이순신',
                    role: '관리자'
                })
            } else {
                onError('권한이 없습니다.');
            }
        }, 1000)
    }
}

// 아이디와 비밀번호를 입력받는다.
const id = prompt('아이디를 입력하세요').trim();
const password = prompt('비밀번호를 입력하세요');

//로그인 처리를 하기 위해 loginUser() 함수가 작성된 클래스 객체를 생성한다.
const userStorage = new UserStorage();

//userStorage 클래스의 loginUser() 함수를 호출해서 로그인 처리를 한다.
/*userStorage.loginUser(id, password, function (user) {
        console.log('로그인 성공');
        //로그인에 성공했으므로 아이디에 따른 역할을 요청해서 받아온다.
        userStorage.getRoles(user , function (userWithRole) {
            //요청이 성공적으로 받아졌으면 js객체에 저장된 name, role를 출력한다.
            alert(userWithRole.name + userWithRole.role);
        } , function (error) {
            console.log('권한이 없습니다.');
        })
    },
function (error) {
        console.log(error);
}); */
userStorage.loginUser(
    id,
    password,
    user => {
        console.log('로그인 성공');
        userStorage.getRoles(
            user ,
            userWithRole => {







            }
            ,
            error => console.log('권한이 없습니다.')
        );
    },
    /*함수가 실행되는 기능이 인수로 넘어온 데이터 1건을 단순히 콘솔에 로그로 출력하는 경우
    error => console.log(error) 와 같이 실행하지 않고 console.log만 실행해도 된다. */
    console.log
);





















