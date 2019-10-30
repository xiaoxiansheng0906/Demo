package com.demo.pojo;
public class User {
	
    private Integer id;//学生编号
    
    private String name;//学生姓名
    
    private String password;//登录密码
    
	private int sex;//学生性别 1是男2是女

    public User() {
		super();
	}

	public User(Integer id, String name, String password, int sex) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.sex = sex;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}
    
    
}