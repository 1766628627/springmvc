package com.accp.springmvc.action;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.accp.springmvc.biz.LeaveBiz;
import com.accp.springmvc.pojo.Leave;
import com.accp.springmvc.vo.LeaveTwoVo;

@RestController
@RequestMapping("/api/leaves")
public class LeaveAction {
	@Resource
	private LeaveBiz biz;
	
	@PutMapping("leave/{id}/{nextdealman}/{statusid}")
	public Map<String, Object> update(@PathVariable Integer id,@PathVariable Integer nextdealman,@PathVariable Integer statusid){
		Map<String, Object> message=new HashMap<String, Object>();
		
		int count=biz.modify(id, nextdealman, statusid);
		if(count>0) {
			message.put("code", "200");
			
		}else {
			message.put("code", "300");
		}
		
		return message;
		
	}
	@PutMapping("leave1/{id}/{statusid}")
	public Map<String, Object> updatebyid(@PathVariable Integer id,@PathVariable Integer statusid){
		Map<String, Object> message=new HashMap<String, Object>();
		int count=biz.modifybyid(id, statusid);
		if(count>0) {
			message.put("code", "200");
			
		}else {
			message.put("code", "300");
		}
		
		return message;
		
	}
}
