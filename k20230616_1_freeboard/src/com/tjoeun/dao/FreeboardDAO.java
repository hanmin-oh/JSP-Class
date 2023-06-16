package com.tjoeun.dao;

import com.tjoeun.vo.FreeboardList;
import com.tjoeun.vo.FreeboardVO;
import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;
import java.util.HashMap;

public class FreeboardDAO {

    private static FreeboardDAO instance = new FreeboardDAO();
    private FreeboardDAO()  { }
    public static FreeboardDAO getInstance() {
        return instance;
    }

    public void insert(SqlSession mapper, FreeboardVO vo) {
        mapper.insert("insert" , vo);
    }


    public int selectCount(SqlSession mapper) {
        System.out.println("DAO selectCount 실행");
        return (int) mapper.selectOne("selectCount");
    }

    public ArrayList<FreeboardVO> selectList(SqlSession mapper, HashMap<String, Integer> hmap) {
        System.out.println("FreeboardDAO 클래스의 insert() 메소드 실행");
        return (ArrayList<FreeboardVO>) mapper.selectList("selectList", hmap);
    }

}
