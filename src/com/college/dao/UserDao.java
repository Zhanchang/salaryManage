package com.college.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.college.model.User;
public class UserDao {
	private Session session;
	private SessionFactory sf;
	private Transaction ts;
	public void addUser(User user){
		ts.begin();
		session.save(user);
		ts.commit();
	}
	
	public void update(User user){
		ts.begin();
		session.update(user);
		ts.commit();
	}
	
	public void delete(User user){
		ts.begin();
		session.delete(user);
		ts.commit();
	}
	   
	public User getByName(String name){
		ts.begin();
		Query query=session.createQuery("from user where name="+name);
		List<User> userList=query.list();
		ts.commit();
		for(User u:userList)
			System.out.println("in userdao:"+u.getName()+"\t"+u.getAge());
		return userList.get(0);
	}

	public void setSf(SessionFactory sf) {
		this.sf = sf;
		if(ts==null){
			if(session==null)
				session=sf.openSession();
			ts=session.getTransaction();
		}
	}
	public static void main(String[] args){
		System.out.print("sldkfjaskjdfsajf;laskjd");
	}
	
}
