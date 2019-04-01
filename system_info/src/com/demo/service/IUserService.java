package com.demo.service;

import com.demo.entries.User;

public interface IUserService {
	public boolean isUser(User user);
	public void addUser(User user);
	public void deleteUser(User User);
	public void updatePasswd(String newPass);
}
