package com.accp.springmvc.biz;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.accp.springmvc.dao.CheckMapper;
import com.accp.springmvc.pojo.Check;
import com.accp.springmvc.vo.CheckVo;

@Service("CheckBiz")
public class CheckBiz {
	@Resource
	private CheckMapper dao;
	
	public int add(Check check) {
		return dao.add(check);
	}
	public CheckVo querybyid(Integer id) {
		return dao.querybyid(id);
	}
}
