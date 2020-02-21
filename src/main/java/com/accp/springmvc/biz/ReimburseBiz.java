package com.accp.springmvc.biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.accp.springmvc.dao.ReimburseMapper;
import com.accp.springmvc.pojo.Detail;
import com.accp.springmvc.pojo.Reimburse;
import com.accp.springmvc.vo.LeaveVo;
import com.accp.springmvc.vo.ReimburseCheckVo;
import com.accp.springmvc.vo.ReimburseDetailVo;
import com.accp.springmvc.vo.ReimburseVo;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service("ReimburseBiz")
public class ReimburseBiz {
	@Resource
	private ReimburseMapper dao;
	
	public List<ReimburseVo> querybyid(Integer id,Integer positionid) {
		return dao.querybyid(id, positionid);
	}
	public PageInfo<ReimburseVo> page(int id,int positionid,int pageNum,int pageSize) {
		PageHelper .startPage(pageNum, pageSize);
		PageInfo<ReimburseVo> page= new PageInfo<>(dao.querybyid(id, positionid));
		return page;
	}
	
	public int add(Reimburse reimburses) {
		return dao.add(reimburses);
	}
	
	public ReimburseDetailVo select(Integer id) {
		return dao.select(id);
	}
	public int modify(Integer id,Integer statusid) {
		return dao.modify(id, statusid);
	}
	public int adddetail(Integer id,List<Detail> detail) {
		return dao.adddetail(id, detail);
	}
	public int removedetail(Integer id) {
		return dao.removedetail(id);
	}
	public int remove(Integer id) {
		return dao.remove(id);
	}
	public ReimburseCheckVo selectche(Integer id) {
		return dao.selectche(id);
	}
	public int modifybyname(Integer id,Integer statusid,Integer nextid) {
		return dao.modifybyname(id, statusid, nextid);
	}
	public PageInfo<ReimburseVo> pageone(int id,int positionid,int pageNum,int pageSize,String stime,String etime,int statusid) {
		PageHelper .startPage(pageNum, pageSize);
		PageInfo<ReimburseVo> page= new PageInfo<>(dao.querybytime(id, positionid, stime, etime, statusid));
		return page;
	}
	
}
