package com.tjoeun.register;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RegisterDAO {

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
   public RegisterDAO() {
	      try {
	         Class.forName("oracle.jdbc.driver.OracleDriver");
	         String url = "jdbc:oracle:thin:@localhost:1521:xe";
	         conn = DriverManager.getConnection(url, "tjoeunit", "0000");
	      } catch (ClassNotFoundException e) {
	         System.out.println("드라이버 클래스가 없거나, 읽어올 수 없습니다.");
	      } catch (SQLException e) {
	         System.out.println("데이터베이스 연결 정보가 올바르지 않습니다.");
	      }
	   }


	public int register(RegisterVO vo) {
		System.out.println("RegisterDAO 클래스의 register() 메소드가 실행");
		System.out.println(vo);
		
		try {
			String sql = "insert into register (userid, userpassword, username, userage, userGender, userEmail) "
					+ "values(? , ? , ? , ? , ? , ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1 , vo.getUserID());
			pstmt.setString(2 , vo.getUserPassword());
			pstmt.setString(3 , vo.getUserName());
			pstmt.setInt(4 , vo.getUserAge());
			pstmt.setString(5 , vo.getUserGender());
			pstmt.setString(6 , vo.getUserEmail());
			return pstmt.executeUpdate(); // sql 명령이 정상적으로 실행된 개수(1)를 리턴한다. 
			
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("중복되는 아이디가 입력되었습니다. ");
		}
		return 0;
	}

}
