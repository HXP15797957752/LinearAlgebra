package cn.jxau.user.service;

import cn.jxau.user.domain.User;
import cn.jxau.user.dao.UserDao;
import cn.jxau.user.domain.User;


public class UserService {
	
	private UserDao userDao = new UserDao();
	
	
	public void register(User form) throws UserException {
		
		User user = userDao.findById(form.getId());
		if(user != null) throw new UserException("用户名已存在，请重新输入");
		userDao.addUser(form);
	}
	
	public User login(User form) throws Exception {
		User user = userDao.findById(form.getId());
		
		if(user == null) throw new Exception("用户不存在");
		if(!user.getPassword().equals(form.getPassword())) {
			throw new UserException("密码错误");
		}
		
		
		return user;
		
	}
}

