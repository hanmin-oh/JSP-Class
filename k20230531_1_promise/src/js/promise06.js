class UserStorage {
    /* -callback지옥 함수
    loginUser(id, password , onSuccess, onError) {
        setTimeout( () => {
            if(id == '이순신' && password == '1111' || id == '을지문덕' && password == '2222') {
                onSuccess(id);
            } else {
                onError('로그인 실패');
            }
        } , 1000);
    }
    */
    /* callback지옥에 빠진 이유는 함수가 성공시 실행할 함수와 실패시 실행할 함수를 인수로 받았기 때문이다.
    promise를 사용하면 성공 시 resolve()로 실패 시 reject()로 처리하면 된다. */
    loginUser(id, password) {
        //함수가 호출되면 promise를 만들어서 리턴시킨다.
        return new Promise((resolve, reject) => {
            //기존에 있던 코드를 promise의 executor 함수에서 실행한다.
            setTimeout( () => {
                if(id == '이순신' && password == '1111' || id == '을지문덕' && password == '2222') {
                    resolve(id);
                } else {
                    reject('로그인 실패');
                }
            } , 1000);
        });
    }
    /* getRoles(user, onSuccess, onError) {
         setTimeout( () => {
             if(user == '이순신') {
                 onSuccess({ name: '이순신',role: '관리자'});
             } else {
                 onError('권한이 없습니다.');
             }
         }, 1000)
     }
 }   */
    getRoles(user) {
        //함수가 호출되면 promise를 만들어서 리턴시킨다.
        return new Promise( (resolve, reject) => {
            setTimeout( () => {
                if(user == '이순신') {
                    resolve({ name: '이순신',role: '관리자'});
                } else {
                    reject('권한이 없습니다.');
                }
            }, 1000)
        })
    }
}

const id = prompt('아이디를 입력하세요').trim();
const password = prompt('비밀번호를 입력하세요');

const userStorage = new UserStorage();

userStorage.loginUser(id, password,)
    .then( id => userStorage.getRoles(id) )
    .then( userWithRole => console.log(userWithRole.name + userWithRole.role) )
    .catch( console.log )
