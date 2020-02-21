package com.accp.springmvc.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.accp.springmvc.dao.EmployeeMapper;
import com.accp.springmvc.pojo.Employee;
import com.accp.springmvc.vo.EmployeeVo;

@Service("EmployeeBiz")
public class EmployeeBiz {
	@Autowired
	private EmployeeMapper dao;
	
	public EmployeeVo login(int id,String pwd) {
		return dao.login(id, pwd);
	}

}
