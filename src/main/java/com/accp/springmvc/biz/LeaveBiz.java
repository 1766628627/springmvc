package com.accp.springmvc.biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.accp.springmvc.dao.LeaveMapper;
import com.accp.springmvc.pojo.Leave;
import com.accp.springmvc.vo.LeaveTwoVo;
import com.accp.springmvc.vo.LeaveVo;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service("LeaveBiz")
public class LeaveBiz {
	@Resource
	private LeaveMapper dao;
	
	
	public PageInfo<LeaveVo> page(int id,int positionid,int pageNum,int pageSize) {
		PageHelper .startPage(pageNum, pageSize);
		PageInfo<LeaveVo> page= new PageInfo<>(dao.queryby(id,positionid));
		return page;
	}
	public List<LeaveTwoVo> querybyid(int id) {
		return dao.querybyid(id);
	}
	public int addleave(Leave leave) {
		
		return dao.addleave(leave);
	}
	
	public int modify(Integer id,Integer nextdealman,Integer statusid) {
		
		return dao.modify(id, nextdealman, statusid);
	}
	public int modifybyid(Integer id,Integer statusid) {
		
		return dao.modifybyid(id, statusid);
	}
}
