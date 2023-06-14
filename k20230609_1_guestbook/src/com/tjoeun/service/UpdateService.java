package com.tjoeun.service;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.tjoeun.dao.GuestbookDAO;
import com.tjoeun.ibatis.MyAppSqlConfig;
import com.tjoeun.vo.GuestbookVO;

import java.sql.SQLException;

public class UpdateService {

//     singleton 클래스 디자인 패턴은 한 순간에 단 한개의 객체만 필요할 경우 사용하는 디자인 패턴이다.
//     singleton 패턴 코딩 방법
//    1. 자기 자신(현재 클래스)의 객체를 기본 생성자를 사용해서 정적 필드로 선언한다.
//    2. 클래스 외부에서 객체를 생성할 수 없도록 기본 생성자의 접근 권한을 private로 변경한다.
//    3. 자신의 객체를 리턴시키는 정적 메소드를 만든다.

    private static UpdateService instance = new UpdateService();
    private UpdateService() {   }
    public static UpdateService getInstance () {
        return instance;
    }

//    updateOK.jsp에서 넘어오는 테이블에 저장할 실제 데이터가 저장된 객체(vo)를 넘겨받고 mapper를 얻어온 후
//    DAO 클래스의 글 1건을 테이블에서 수정하는 update sql 명령을 실행하는 메소드를 호출하는 메소드
    public void update (GuestbookVO vo) throws SQLException {
        System.out.println("UpdateService 클래스의 update 메소드 실행");
        SqlMapClient mapper = MyAppSqlConfig.getSqlMapInstance();
        GuestbookDAO.getInstance().update(mapper , vo);
    }
}
