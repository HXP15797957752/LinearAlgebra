package cn.jxau.user.domain;

import java.io.Serializable;

public class Question implements Serializable{//问题类
	private String name;
	private String question;
	private String sort;
	private String time;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "Question [name=" + name + ", question=" + question + ", sort="
				+ sort + ", time=" + time + "]";
	}
	
}
