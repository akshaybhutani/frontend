package com.niit.chinesbackend.dao;

import java.util.List;

import com.niit.chinesbackend.model.User;

public interface UserDao {
	
	public boolean addUser(User user);
	public boolean updateUser(User user);
	public boolean deleteUser(int userId);
	public List<User> getAllUser();
	public User getUsertById(int userId);
	
}
