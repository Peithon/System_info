package com.demo.serviceimpl;

import com.demo.dao.IUserDao;
import com.demo.daoimpl.IUserDaoImpl;
import com.demo.entries.User;
import com.demo.service.IUserService;
public class IUserServiceImpl implements IUserService{
	IUserDao user ;
	
	public IUserServiceImpl() {
		user = new IUserDaoImpl();
	}
	@Override
	public boolean isUser(User u) {
		User user1 = user.checkUser(u);
		System.out.println(u.getUsername()+"   "+u.getPassword()+"    "+u.getPermission());
		if(user1 == null){
			System.out.println("不合法用户");			
			return false;
		}else {
			System.out.println("合法用户");
			return true;
		}	
	}
	@Override
	public void addUser(User u) {
		user.addUser(u);
	}
	@Override
	public void deleteUser(User u) {
		user.deleteUser(u);
	}
	@Override
	public void updatePasswd(String newPass) {
		user.updatePasswd(newPass);
	}

}
