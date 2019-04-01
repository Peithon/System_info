package com.demo.dao;

import java.util.List;
import com.demo.entries.Position;

public interface IPositionDao {
	public List<Position> allPot();
	public void delete(String positionId);
}
