package com.demo.serviceimpl;

import java.util.List;

import com.demo.dao.ITextDao;
import com.demo.daoimpl.ITextDaoImpl;
import com.demo.entries.Text;
import com.demo.service.ITextService;

public class ITextServiceImpl implements ITextService{
	ITextDao message;	
	public ITextServiceImpl() {
		message = new ITextDaoImpl();
	}

	@Override
	public void addMessage(Text text) {
		message.addText(text);
	}

	@Override
	public List<Text> showMessage() {
		return message.showText();
	}

	@Override
	public void deleteTextInfo(String id) {
		message.deleteText(id);
	}

}
