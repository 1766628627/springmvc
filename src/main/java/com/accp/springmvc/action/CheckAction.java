package com.accp.springmvc.action;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.accp.springmvc.biz.CheckBiz;
import com.accp.springmvc.biz.LeaveBiz;
import com.accp.springmvc.pojo.Check;
import com.accp.springmvc.vo.CheckVo;
import com.accp.springmvc.vo.LeaveTwoVo;



@RestController
@RequestMapping("/api/checks")
public class CheckAction {

	
	@Resource
	private LeaveBiz biz;
	
	@Resource
	private CheckBiz biz1;
	
	@GetMapping("check/{id}")
	public List<LeaveTwoVo> querybyid(@PathVariable Integer id){
		
		return  biz.querybyid(id);
		
	}
	@PostMapping("check")
	public Map<String, Object> add(@RequestBody Check check){
		Map<String, Object> message=new HashMap<String, Object>();
		Date date=new Date();
		check.setChecktime(date);
		int count=biz1.add(check);
		if(count>0) {
			message.put("code", "200");
			
		}else {
			message.put("code", "300");
		}
		System.err.println(check);
		return message;
		
	}
	@GetMapping("leave/{id}")
	public CheckVo queryby(@PathVariable Integer id){
		
		return  biz1.querybyid(id);
		
	}
}
