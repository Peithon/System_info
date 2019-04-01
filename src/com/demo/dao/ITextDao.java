package com.demo.dao;

import java.util.List;
import com.demo.entries.Text;

public interface ITextDao {
	public void addText(Text text);
	public List<Text> showText();
	public void deleteText(String title);
}
