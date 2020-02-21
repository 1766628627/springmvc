package com.accp.springmvc.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.accp.springmvc.biz.ReimburseBiz;
import com.accp.springmvc.pojo.Detail;
import com.accp.springmvc.pojo.Reimburse;
import com.accp.springmvc.vo.ReimburseCheckVo;
import com.accp.springmvc.vo.ReimburseDetailVo;
import com.accp.springmvc.vo.ReimburseVo;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@RestController
@RequestMapping("/api/reims")
public class ReimburseAction {
	@Resource
	private ReimburseBiz biz;
	
	@GetMapping("reim/{id}/{positionid}/{pageNum}")
	public PageInfo<ReimburseVo> page(@PathVariable int id,@PathVariable int positionid,@PathVariable int pageNum) {
		
		return biz.page(id, positionid, pageNum, 6);
	}
	@PostMapping("reim/rei")
	public Map<String, Object> add(@RequestBody Reimburse rei){
		Map<String, Object> message=new HashMap<String, Object>();
		int count=biz.add(rei);
		if(count>0) {
			message.put("code", "200");
			
		}else {
			message.put("code", "300");
		}
		
		return message;
		
	}
	@GetMapping("reim/{id}")
	public  ReimburseDetailVo select(@PathVariable Integer id) {
		
		return biz.select(id);
	}
	@PutMapping("reim/{id}/{statusid}")
	public  Map<String, Object> modify(@PathVariable Integer id,@PathVariable Integer statusid) {
		Map<String, Object> message=new HashMap<String, Object>();
		int count=biz.modify(id, statusid);
		if(count>0) {
			message.put("code", "200");
			
		}else {
			message.put("code", "300");
		}
		
		return message;
	}
	@DeleteMapping("reim/{id}")
	public  Map<String, Object> removedetail(@PathVariable Integer id) {
		Map<String, Object> message=new HashMap<String, Object>();
		int count=biz.removedetail(id);
		if(count>0) {
			message.put("code", "200");
			
		}else {
			message.put("code", "300");
		}
		
		return message;
	}
	@DeleteMapping("reim/rei/{id}")
	public  Map<String, Object> remove(@PathVariable Integer id) {
		Map<String, Object> message=new HashMap<String, Object>();
		int count=biz.remove(id);
		if(count>0) {
			message.put("code", "200");
			
		}else {
			message.put("code", "300");
		}
		
		return message;
	}
	@PostMapping("reim/{id}")
	public Map<String, Object> add(@PathVariable Integer id,@RequestBody List<Detail> detail){
		Map<String, Object> message=new HashMap<String, Object>();
		int count=biz.adddetail(id, detail);
		if(count>0) {
			message.put("code", "200");
			
		}else {
			message.put("code", "300");
		}
		
		return message;
		
	}
	@GetMapping("reim//rei/{id}")
	public  ReimburseCheckVo selectche(@PathVariable Integer id) {
		
		return biz.selectche(id);
	}
	@PutMapping("reim/{id}/{statusid}/{nextid}")
	public  Map<String, Object> modify(@PathVariable Integer id,@PathVariable Integer statusid,@PathVariable Integer nextid) {
		Map<String, Object> message=new HashMap<String, Object>();
		int count=biz.modifybyname(id, statusid, nextid);
		if(count>0) {
			message.put("code", "200");
			
		}else {
			message.put("code", "300");
		}
		
		return message;
	}
	@GetMapping("reim/{id}/{positionid}/{pageNum}/{stime}/{etime}/{statusid}")
	public PageInfo<ReimburseVo> pageone(@PathVariable int id,@PathVariable int positionid,@PathVariable int pageNum,@PathVariable String stime,@PathVariable String etime,@PathVariable int statusid) {
		
		return biz.pageone(id, positionid, pageNum, 6, stime, etime, statusid);
	}
}
