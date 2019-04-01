package com.demo.daoimpl;

import java.util.List;
import com.demo.dao.ITextDao;
import com.demo.entries.Text;
import com.rock.util.JDBCUtil;

public class ITextDaoImpl implements ITextDao {
	JDBCUtil util;
	
	public ITextDaoImpl() {
		util = new JDBCUtil();
	}

	@Override
	public void addText(Text text) {
		String sql =" insert into text(title,message,time,section,author) values(?,?,?,?,?)";
		util.runSql(sql, text.getTitle(),text.getMessage(),text.getTime(),text.getSection(),text.getAuthor());
	}

	@Override
	public List<Text> showText() {
		return util.queryAll(Text.class,"select * from text");
	}

	@Override
	public void deleteText(String id) {
		String sql = "delete  from text where title = ?";
		util.runSql(sql, id);
	}
	
}
