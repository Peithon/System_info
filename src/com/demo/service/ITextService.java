package com.demo.service;

import java.util.List;
import com.demo.entries.Text;

public interface ITextService {
	public void addMessage(Text text);
	public List<Text> showMessage();
	public void deleteTextInfo(String id);
}
