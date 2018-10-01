package com.niit.chinesbackend.dao;

import java.util.List;

import javax.persistence.Query;
import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.chinesbackend.model.User;
@Repository
@Transactional
public class UserDaoImpl implements UserDao {
	@Autowired
	SessionFactory sessionFactory;

	public boolean addUser(User user) {
		Session session=sessionFactory.getCurrentSession();
		try{
		session.save(user);
		return true;
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return false;
		}
	}

	public boolean updateUser(User user) {
		Session session=sessionFactory.getCurrentSession();
		try{
		session.update(user);
		return true;
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return false;
		}}

	public boolean deleteUser(int userId) {
		Session session=sessionFactory.getCurrentSession();
		try{
		session.delete(getUsertById(userId));
		return true;
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return false;
		}}


	public List<User> getAllUser() {
		Session session=sessionFactory.getCurrentSession();
		try{
		Query query=session.createQuery("from User");
		List<User> userList=(List<User>)query.getResultList();
		
		return userList;
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return null;
		}
	
	}

	public User getUsertById(int userId) {
		Session session=sessionFactory.getCurrentSession();
		try{
	    User user=(User)session.get(User.class,userId);
		return user;
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return null;
		}
	}
	}

	