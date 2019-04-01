package com.demo.serviceimpl;

import java.util.List;

import com.demo.dao.IPositionDao;
import com.demo.daoimpl.IPositionDaoImpl;
import com.demo.entries.Position;
import com.demo.service.IPositionService;

public class IPositionServiceImpl implements IPositionService{
	IPositionDao p;
	
	public IPositionServiceImpl() {
		p = new IPositionDaoImpl();
	}

	@Override
	public List<Position> allPositionInfo() {
		return p.allPot();
	}

	@Override
	public void deleteInfo(String positionId) {
		p.delete(positionId);
	}
	
}
