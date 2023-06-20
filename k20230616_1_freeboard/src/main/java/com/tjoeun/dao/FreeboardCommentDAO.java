package com.tjoeun.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.tjoeun.vo.FreeboardCommentVO;

public class FreeboardCommentDAO {
	
	private static FreeboardCommentDAO instance = new FreeboardCommentDAO();
	private FreeboardCommentDAO() { }
	public static FreeboardCommentDAO getInstance() {
		return instance;
	}
	
	public int insertComment(SqlSession mapper, FreeboardCommentVO co) {
	      System.out.println("FreeboardCommentDAO 클래스의 insertComment() 메소드 실행");
	      //   insert, delete, update sql 명령의 실행 결과를 리턴시키면 sql 명령이 성공적으로 실행된 횟수가 리턴된다.
	      return mapper.insert("insertComment", co);
	   }
	
	public int commentCount(SqlSession mapper, int idx) {
		return (int) mapper.selectOne("commentCount" , idx);
	}
	
//	FreeboardCommentService 클래스에서 호출되는 mapper와 메인글의 글번호를 넘겨받고 메인글의 댓글 목록을
//	얻어오는 freeboardcomment.xml파일의 select sql 명령을 실행하는 메소드
	public ArrayList<FreeboardCommentVO> selectCommentList(SqlSession mapper, int idx) {
		return (ArrayList<FreeboardCommentVO>) mapper.selectList("selectCommentList" , idx);
	}
	public FreeboardCommentVO selectCommentByIdx(SqlSession mapper, int idx) {
		return (FreeboardCommentVO) mapper.selectOne("selectCommentByIdx" , idx);
	}
	
	public void updateComment(SqlSession mapper, FreeboardCommentVO co) {
		mapper.update("updateComment" , co);
		
	}
	public void deleteComment(SqlSession mapper, FreeboardCommentVO co) {
		mapper.delete("deleteComment" , co);
	}
	

	
	
	

}
