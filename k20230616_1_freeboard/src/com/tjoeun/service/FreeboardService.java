package com.tjoeun.service;

import com.tjoeun.dao.FreeboardDAO;
import com.tjoeun.mybatis.MySession;
import com.tjoeun.vo.FreeboardList;
import com.tjoeun.vo.FreeboardVO;
import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;
import java.util.HashMap;

public class FreeboardService {

    private static FreeboardService  instance = new FreeboardService();
    private FreeboardService()  { }
    public static FreeboardService getInstance() {
        return instance;
    }

    public void insert(FreeboardVO vo) {
        SqlSession mapper = MySession.getSession();
        System.out.println(mapper);

        FreeboardDAO.getInstance().insert(mapper , vo);
        mapper.commit();
        mapper.close();

    }

    public FreeboardList selectList(int currentPage) {
        SqlSession mapper = MySession.getSession();
        FreeboardDAO dao = FreeboardDAO.getInstance();

        int pageSize = 10;
        int totalCount = dao.selectCount(mapper);
        System.out.println(totalCount);

        FreeboardList freeboardList = new FreeboardList(pageSize, totalCount, currentPage);
        HashMap<String, Integer> hmap = new HashMap<>();
        hmap.put("startNo", freeboardList.getStartNo());
        hmap.put("endNo", freeboardList.getEndNo());
        freeboardList.setList(dao.selectList(mapper, hmap));
        System.out.println(freeboardList);

        mapper.close();
        return freeboardList;

    }

    public void hitsPlus(int idx) {
            SqlSession mapper = MySession.getSession();

            FreeboardDAO.getInstance().hitsPlus(mapper , idx);
            mapper.commit();
            mapper.close();
    }

    public FreeboardVO selectByIdx(int idx) {
        SqlSession mapper = MySession.getSession();
        FreeboardVO vo = FreeboardDAO.getInstance().selectByIdx(mapper , idx);
        mapper.close();
        return vo;
    }

    public void delete(int idx) {
        SqlSession mapper = MySession.getSession();

        FreeboardDAO.getInstance().delete(mapper , idx);

        mapper.commit();
        mapper.close();
    }

//    updateOK.jsp에서 호출되는 수정할 정보가 저장될 객체를 넘겨받고 mapper를 얻어온 후 메인글 1건을
//    수정하는 FreeboardDAO 클래스의 update sql 명령을 실행하는 메소드를 호출하는 메소드
    public void update(FreeboardVO vo) {
        System.out.println("FreeboardService의 update()");
        SqlSession mapper = MySession.getSession();
        FreeboardDAO.getInstance().update(mapper, vo);
        mapper.commit();
        mapper.close();
    }

//    list.jsp에서 호출되는 mapper를 얻어온 후 모든 공지글을 얻어오는 FreeboardDAO 클래스의 select sql 명령을
//    실행하는 메소드를 호출하는 메소드
    public ArrayList<FreeboardVO> selectNotice() {
        System.out.println("selectNotice 메소드 실행");
        SqlSession mapper = MySession.getSession();
        ArrayList<FreeboardVO> notice = FreeboardDAO.getInstance().selectNotice(mapper);
        System.out.println(notice);
        mapper.close();
        return notice;
    }
}
