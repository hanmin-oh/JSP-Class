package com.tjoeun.dao;

import com.tjoeun.vo.CategoryVO;
import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;

public class CategoryDAO {

    private static CategoryDAO instance = new CategoryDAO();

    private CategoryDAO() { }

    public static CategoryDAO getInstance() {
        return instance;
    }

    public void insert(SqlSession mapper, CategoryVO vo) {
        System.out.println("CategoryDAO 클래스의 insert() 메소드 실행");
        mapper.insert("insert" , vo);
    }

    public ArrayList<CategoryVO> selectList(SqlSession mapper) {
        System.out.println("CategoryDAO 클래스의 selectList() 메소드 실행");
        return (ArrayList<CategoryVO>) mapper.selectList("selectList");
    }
}
