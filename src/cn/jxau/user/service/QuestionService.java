package cn.jxau.user.service;

import java.util.List;

import cn.jxau.user.dao.QuestionDao;
import cn.jxau.user.domain.Question;

public class QuestionService {
	private QuestionDao questiondao=new QuestionDao();
	public void add(Question form){
		
		questiondao.add(form);
	System.out.println("执行到  question Service");
	}
}
