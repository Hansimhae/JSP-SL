package dao;
import java.sql.*;
import java.util.ArrayList;


public class StudentDao {
	
	
	//student 테이블 수정
	public void updateStudent(Student student) {
		Connection conn = null;
		PreparedStatement stmt = null;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mariadb://127.0.0.1:3306/uc", "root", "java1004");
			stmt = conn.prepareStatement("update student set name=? where num = ?");
			stmt.setString(1, student.getName());
			stmt.setInt(2, student.getNum());
			System.out.println(stmt+" <-- stmt");
			int row = stmt.executeUpdate();
			if(row == 1) {
				System.out.println(student.getName()+" <--학생 수정성공");
			}else {
				System.out.println(student.getName()+" <--학생 수정실패");
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}
	
	//student 테이블에서 한명(한행)의 정보를 추출
	public Student selectStudentOne(int num) {
		Student student =null;
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mariadb://127.0.0.1:3306/uc", "root", "java1004");
			stmt = conn.prepareStatement("select num,name from student where num = ?");
			stmt.setInt(1, num);
			rs = stmt.executeQuery();
			if(rs.next()) {
				student = new Student();
				student.setNum(rs.getInt("num"));
				student.setName(rs.getString("name"));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return student;
	}
	
	//삭제
	public void deleteStudent(int num){
		Connection conn = null;
		PreparedStatement stmt = null;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mariadb://127.0.0.1:3306/uc", "root", "java1004");
			stmt = conn.prepareStatement("delete from student where num = ?");
			stmt.setInt(1, num);
			stmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}
	
	//추가
	public void insertStudent(Student student) {
		Connection conn = null;
		PreparedStatement stmt = null;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mariadb://127.0.0.1:3306/uc", "root", "java1004");
			stmt = conn.prepareStatement("insert into student(name) values(?)");
			stmt.setString(1, student.getName());
			//stmt debug
			System.out.println(stmt+" <-- stmt");
			int row = stmt.executeUpdate();
			if(row == 1) {
				System.out.println(student.getName()+" <--학생 입력성공");
			}else {
				System.out.println(student.getName()+" <--학생 입력실패");
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
	
	
	public ArrayList<Student> getStudentList(int currentPage){
		int beginRow = (currentPage-1)*10;
		ArrayList<Student> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mariadb://127.0.0.1:3306/uc", "root", "java1004");
			stmt = conn.prepareStatement("select num,name from student limit ?, 10");
			stmt.setInt(1, beginRow);
			rs = stmt.executeQuery();
			while(rs.next()) {
				Student s = new Student();
				s.setNum(rs.getInt("num"));
				s.setName(rs.getString("name"));
				list.add(s);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;
	}
	
	public int getTotalCount() {
		int totalCount = 0;
		Connection conn = null;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/uc","root","java1004");
			PreparedStatement stmt = null;
			stmt = conn.prepareStatement("select count(*) from student");
			ResultSet rs = null;
			rs = stmt.executeQuery();
			if(rs.next()) {
				totalCount = rs.getInt("count(*)");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			try {
				conn.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return totalCount;
	}
}
