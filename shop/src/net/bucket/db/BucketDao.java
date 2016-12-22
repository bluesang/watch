package net.bucket.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class BucketDao {
	private final String driverClassName = "com.mysql.jdbc.Driver";
	private final String url = "jdbc:mysql://127.0.0.1:3306/watch?useUnicode=true&characterEncoding=euckr";
	private final String username = "root";
	private final String password = "java0000";
	
	Connection conn= null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	
	//db연결 메서드
	private Connection getConnection(){	
		System.out.println("01 getConnection 메서드 실행");
		Connection conn = null;
		try{
			Class.forName(driverClassName);
			conn = DriverManager.getConnection(url,username,password);
		}catch(Exception e){
			e.printStackTrace();
		}
		System.out.println(conn + " : DB연결성공!!");
		return conn;
	}
	
	//객체 close 메서드
	private void close(Connection conn, Statement stmt, ResultSet rs)  {
		if(rs != null){
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(stmt != null){
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn != null){
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
