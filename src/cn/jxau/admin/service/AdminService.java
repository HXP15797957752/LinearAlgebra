package cn.jxau.admin.service;

import cn.jax.admin.domain.Admin;
import cn.jxau.admin.dao.AdminDao;
import cn.jxau.user.domain.User;
import cn.jxau.user.service.UserException;

public class AdminService {
	AdminDao admindao=new AdminDao();
	
	public Admin login(Admin form) throws Exception {
		
		Admin admin = admindao.findById(form.getId());
		
		if(admin == null) throw new Exception("您不是管理员，不能进行此操作！");
		if(!admin.getPassword().equals(form.getPassword())) {
			throw new UserException("密码错误");
		}
		
		
		return admin;
	}
	
}
