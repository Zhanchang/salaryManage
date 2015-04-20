package com.college.test;

import java.util.UUID;

import com.college.dao.UserDao;
import com.college.model.User;
import com.opensymphony.xwork2.ActionSupport;
public class Test extends ActionSupport{
	private UserDao dao;
	private String name;
	private int age;
	private String sex;
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		User user=new User();
		user.setName(name);
		user.setAge(age);
		user.setSex(sex);
		user.setId(UUID.randomUUID().toString());
		System.out.println(user.toString());
//		dao.addUser(user);
		System.out.println("≈∑¿Ÿ≈º¡À£°");
		return "success";
	}
	public void setDao(UserDao dao) {
		this.dao = dao;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
		
}
