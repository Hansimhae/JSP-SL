package dao;

public class Student {
	private String name;//정보은닉
	private int num;//정보은닉
	
	//setter 필드값 변경
	//getter 필드값 읽기
	
	//캡슐화
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	
}
