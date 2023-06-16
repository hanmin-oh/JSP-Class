package com.tjoeun.service;

import com.tjoeun.dao.FreeboardDAO;
import com.tjoeun.mybatis.MySession;
import com.tjoeun.vo.FreeboardList;
import com.tjoeun.vo.FreeboardVO;
import org.apache.ibatis.session.SqlSession;

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
        System.out.println("FreeboardService selectList()메소드 실행");
        SqlSession mapper = MySession.getSession();
        FreeboardDAO dao = FreeboardDAO.getInstance();

        int pageSize = 10;
        int totalCount = 0;
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
}
