package com.tjoeun.service;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.tjoeun.dao.GuestbookDAO;
import com.tjoeun.ibatis.MyAppSqlConfig;
import com.tjoeun.vo.GuestbookList;
import com.tjoeun.vo.GuestbookVO;

import java.sql.SQLException;
import java.util.HashMap;

public class SelectService {

    private static SelectService instance = new SelectService();

    private SelectService() {    }

    public static SelectService getInstance () {
        return instance;
    }

   /*  list.jsp에서 호출되는 브라우저에 표시할 페이지 번호(currentPage)를 넘겨받고 mapper를 얻어온 후
     GuestbookDAO 클래스의 1페이지 분량의 글 목록을 얻어오는 select sql 명령을 실행하는 메소드를 호출하는
     메소드    */
    public GuestbookList selectList(int currentPage) throws SQLException {
        System.out.println("SelectService 클래스의 selectService() 메소드 실행");
        SqlMapClient mapper = MyAppSqlConfig.getSqlMapInstance();

        // 1페이지 분량의 글 목록과 페이징 작업에 사용할 8개의 변수를 저장해서 리턴시킬 객체를 선언한다.
        GuestbookList guestbookList = null;
//        GuestbookDAO 클래스 객체에 2번 접근해서 sql 명령을 실행해야 하므로 GuestbookDAO 클래스의 객체를 미리 얻어둔다.
        GuestbookDAO dao = GuestbookDAO.getInstance();

        // 1페이지당 표시할 글의 개수를 정한다.
        int pageSize = 10;
        // 테이블에 저장된 전체 글의 개수를 얻어온다.
        int totalCount = dao.selectCount(mapper);
//        System.out.println(totalCount);

//        pageSize, totalCount, currentPage를 GuestbookList 클래스의 생성자로 넘겨서 1페이지 분량의 글 목록을 저장하고
//        페이징 작업에 사용할 8개의 변수를 초기화하는 GuestbookList 클래스 객체를 생성한다.
        guestbookList = new GuestbookList(pageSize , totalCount , currentPage);

//        parameterClass, resultClass는 데이터 타입을 반드시 1개만 적어야 한다.
//        xml 파일의 sql 명령으로 전달할 데이터가 2개 이상일 경우 데이터 타입이 같다면 HashMap 객체에 저장해서 전달하면
//        되고 데이터 타입이 다르다면 클래스 객체에 저장해서 전달하면 된다.
        HashMap<String, Integer> hmap = new HashMap<>();
        hmap.put("startNo", guestbookList.getStartNo());
        hmap.put("endNo", guestbookList.getEndNo());
//        mysql은 아래와 같이 endNo 대신 pageSize를 HashMap 객체에 저장한다.
//        hmap.put("pageSize", guestbookList.getPageSize());

//        1페이지 분량의 글 목록을 얻어와서 GuestbookList 클래스 객체의 ArrayList(list)에 저장한다.
        guestbookList.setList(dao.selectList(mapper, hmap));
        //System.out.println(guestbookList);

        return guestbookList;
    }
}
