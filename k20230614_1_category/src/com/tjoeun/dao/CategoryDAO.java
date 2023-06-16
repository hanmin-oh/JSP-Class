package com.tjoeun.dao;

import com.tjoeun.vo.CategoryVO;
import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;
import java.util.HashMap;

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

//    CategoryService 클래스에서 호출되는 mapper와 gup와 seq가 저장된 HashMap 객체를 넘겨받고 같은 카테고리 그룹(gup)
//    에서 조건에 만족하는 카테고리 출력 순서를 조정하기 위해 seq를 1씩 증가시키는 Category.xml 파일의 update sql 명령을
//    실행하는 메소드
    public void increment(SqlSession mapper, HashMap<String, Integer> hmap) {
        System.out.println("CategoryDAO 클래스의 increment() 메소드 실행");
        mapper.update("increment" , hmap);
    }

//    CategoryService 클래스에서 호출되는 mapper와 테이블에 저장할 서브 카테고리 정보가 저장된 객체를 넘겨받고 테이블에
//    서브 카테고리를 저장하는 Category/xml 파일의 insert sql 명령을 실행하는 메소드
    public void reply(SqlSession mapper, CategoryVO vo) {
        System.out.println("CategoryDAO 클래스의 reply() 메소드 실행");
        mapper.insert("reply" , vo);
    }

//    CategoryService 클래스에서 호출되는 mapper와 테이블에 저장할 서브 카테고리 정보가 저장된 객체를 넘겨받고 테이블에
//    서브 카테고리를 저장하는 Category/xml 파일의 insert sql 명령을 실행하는 메소드
    public void delete(SqlSession mapper, int idx) {
        System.out.println("CategoryDAO 클래스의 delete() 메소드 실행");
        mapper.delete("delete" , idx);
    }

    public CategoryVO selectByIdx(SqlSession mapper, int idx) {
        System.out.println("CategoryDAO 클래스의 selectByIdx() 메소드 실행");
        return (CategoryVO) mapper.selectOne("selectByIdx" , idx);
    }

    public void deleteMessage(SqlSession mapper, int idx) {
        System.out.println("CategoryDAO 클래스의 deleteMessage() 메소드 실행");
        mapper.update("deleteMessage" , idx);
    }

    public void deleteCheck(SqlSession mapper, int idx) {
        System.out.println("CategoryDAO 클래스의 deleteCheck() 메소드 실행");
        mapper.update("deleteCheck" , idx);
    }

    public void deleteRestore(SqlSession mapper, int idx) {
        System.out.println("CategoryDAO 클래스의 deleteRestore() 메소드 실행");
        mapper.update("deleteRestore" , idx);
    }

    public CategoryVO updateCategory(SqlSession mapper, CategoryVO vo) {
        System.out.println("CategoryDAO 클래스의 updateCategory() 메소드 실행");
        return (CategoryVO) mapper.selectOne("restore" , vo);
    }

    public void update(SqlSession mapper, CategoryVO vo) {
        System.out.println("CategoryDAO 클래스의 update() 메소드 실행");
        mapper.update("update" , vo);
    }

    public void deleteReport(SqlSession mapper, int idx) {
        System.out.println("CategoryDAO 클래스의 deleteReport() 메소드 실행");
        mapper.update("deleteReport" , idx);
    }

    public ArrayList<CategoryVO> deleteList(SqlSession mapper, CategoryVO vo) {

        return (ArrayList<CategoryVO>) mapper.selectList("deleteList", vo);
    }

    public void deleteAll(SqlSession mapper) {
        System.out.println("CategoryDAO 클래스의 deleteAll() 메소드 실행");
        mapper.delete("deleteAll");
    }

    public ArrayList<CategoryVO> selectGup(SqlSession mapper, int gup) {
        System.out.println("CategoryDAO 클래스의 selectGup() 메소드 실행");
        return (ArrayList<CategoryVO>) mapper.selectList("selectGup" , gup);
    }

    public void reSeq(SqlSession mapper, HashMap<String, Integer> hmap) {
        System.out.println("CategoryDAO 클래스의 reSeq() 메소드 실행");
        mapper.update("reSeq" , hmap);
    }

}
