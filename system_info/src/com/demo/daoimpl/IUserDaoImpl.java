package com.demo.daoimpl;

import com.demo.dao.IUserDao;
import com.demo.entries.User;
import com.rock.util.JDBCUtil;

public class IUserDaoImpl implements IUserDao {
	JDBCUtil util;
	public IUserDaoImpl() {
		util = new JDBCUtil();
	}
	@Override
	public User checkUser(User user) {
		String sql = "select username,password,permission from user where username=? and password=? and permission = ?";
		return util.queryById(User.class, sql,user.getUsername(),user.getPassword(),user.getPermission());
	}
	@Override
	public void addUser(User user) {
		String sql = "insert into user(username,password,permission) values(?,?,?)";
		util.runSql(sql, user.getUsername(),user.getPassword(),user.getPermission());
	}
	@Override
	public void deleteUser(User user) {
		String sql = "delete from user where username=? and password=?";
		util.runSql(sql, user.getUsername(),user.getPassword());
	}
	@Override
	public void updatePasswd(String newPass) {
		String sql = "update user set password  = ?";	
		util.runSql(sql, newPass);
	}
	
}
