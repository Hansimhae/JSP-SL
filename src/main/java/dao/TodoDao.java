package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;
import vo.Todo;

public class TodoDao {
	
	//추가
	public void insertTodo(Todo todo) {
		Connection conn = null;
		PreparedStatement stmt = null;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mariadb://127.0.0.1:3306/uc", "root", "java1004");
			stmt = conn.prepareStatement("insert into todo(day,memo) values(?,?)");
			stmt.setString(1, todo.getDay());
			stmt.setString(2, todo.getMemo());
			//stmt debug
			System.out.println(stmt+" <-- stmt");
			int row = stmt.executeUpdate();
			if(row == 1) {
				System.out.println(todo.getMemo()+" <--메모 입력성공");
			}else {
				System.out.println(todo.getMemo()+" <--메모 입력실패");
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				conn.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	//선택한 메모 상세보기
	public Todo selectTodoOne(int no) {
		Todo todo = null;
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/uc","root","java1004");
			stmt = conn.prepareStatement("select no,day,memo from todo where no=?");
			stmt.setInt(1, no);
			rs = stmt.executeQuery();
			if(rs.next()) {
				todo = new Todo();
				todo.setNo(rs.getInt("no"));
				todo.setDay(rs.getString("day"));
				todo.setMemo(rs.getString("memo"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return todo;
	}
	
	
	//선택한 달의 메모한 내용
	public ArrayList<Todo> selectTodoListByMonth(int y,int m) {
		ArrayList<Todo> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mariadb://127.0.0.1:3306/uc", "root", "java1004");
			stmt = conn.prepareStatement("SELECT NO,DAY,memo from todo "
					+ "WHERE YEAR(DAY) =? AND MONTH(DAY) = ? "
					+ "ORDER BY DAY ASC;");
			stmt.setInt(1, y);
			stmt.setInt(2, m+1);
			//stmt debug
			System.out.println(stmt+" <-- stmt");
			rs = stmt.executeQuery();
			while(rs.next()) {
				Todo todo = new Todo();
				todo.setNo(rs.getInt("no"));
				todo.setDay(rs.getString("day"));
				todo.setMemo(rs.getString("memo"));
				list.add(todo);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				conn.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	
	//메모 삭제
	public void deleteTodo(int no) {
		Connection conn = null;
		PreparedStatement stmt = null;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mariadb://127.0.0.1:3306/uc", "root", "java1004");
			stmt = conn.prepareStatement("delete from todo where no = ?");
			stmt.setInt(1, no);
			//stmt debug
			System.out.println(stmt+" <-- stmt");
			int row = stmt.executeUpdate();
			if(row == 1) {
				System.out.println("메모 삭제 성공");
			}else {
				System.out.println("메모 삭제 실패");
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				conn.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
