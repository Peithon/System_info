package com.demo.dao;

import com.demo.entries.User;

public interface IUserDao {
	public User checkUser(User user);
	public void addUser(User user);
	public void deleteUser(User user);
	public void updatePasswd(String newPass);
}
