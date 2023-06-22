package com.tjoeun.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.tjoeun.vo.MvcBoardList;
import com.tjoeun.vo.MvcBoardVO;

public class MvcBoardDAO {
	
	private static MvcBoardDAO instance = new MvcBoardDAO();
	private MvcBoardDAO() { }
	public static MvcBoardDAO getInstance() {
		return instance;
	}
	
	public void insert(SqlSession mapper, MvcBoardVO vo) {
		mapper.insert("insert" , vo);
	}
	public int selectCount(SqlSession mapper) {
		return (int) mapper.selectOne("selectCount");
	}
	public ArrayList<MvcBoardVO> selectList(SqlSession mapper , HashMap<String, Integer> hmap) {
		return (ArrayList<MvcBoardVO>) mapper.selectList("selectList" , hmap);
	}

}
