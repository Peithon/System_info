package com.demo.service;

import java.util.List;
import com.demo.entries.Position;

public interface IPositionService {
	public List<Position> allPositionInfo();
	public void deleteInfo(String positionId);
}
