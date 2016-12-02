package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCTest {

	public static void main(String[] args) {
		String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		String url = "jdbc:sqlserver://192.168.0.83:1433;DatabaseName=mydb";
		String user = "test";
		String password = "test";
		String sql = " SELECT '1' AS col ";
		
		// 1. JDBC Driver 로딩
		try {
			Class.forName(driver);
			
			// 2. 데이터베이스 연결 (by url with username and password)
			Connection conn = DriverManager.getConnection(url, user, password);
			
			// 3. Statement 객체 생성
			Statement stmt = conn.createStatement();
			
			// 4. Query 실행 (using Statement, receive the ResultSet)
			ResultSet rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				String col = rs.getString("col");
				
				System.out.print("col=" + col);
			}
			
			// 6. 자원 반납
			rs.close();
			stmt.close();
			conn.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
