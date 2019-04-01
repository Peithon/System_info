package com.demo.daoimpl;

import java.util.List;

import com.demo.dao.IPositionDao;
import com.demo.entries.Position;
import com.rock.util.JDBCUtil;

public class IPositionDaoImpl implements IPositionDao{
	JDBCUtil util;
	
	public IPositionDaoImpl() {
		util = new JDBCUtil();
	}

	@Override
	public List<Position> allPot() {
		String sql = "select * from instruction";
		return util.queryAll(Position.class, sql);
	}

	@Override
	public void delete(String positionId) {
		String sql ="delete from instruction where positionid = ?";
		util.runSql(sql,positionId);
	}
	
}
