package com.accp.springmvc.action;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.accp.springmvc.biz.EmployeeBiz;
import com.accp.springmvc.biz.LeaveBiz;
import com.accp.springmvc.pojo.Employee;
import com.accp.springmvc.pojo.Leave;
import com.accp.springmvc.vo.EmployeeVo;
import com.accp.springmvc.vo.LeaveVo;
import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/api") // 命名空间
public class CommonAction {
	@Resource
	private EmployeeBiz biz;
	
	@Resource
	private LeaveBiz biz1;
	
	//登录
	@GetMapping("login")
	@ResponseBody
	public Map<String, Object> login(HttpSession session,int id,String pwd){
		Map<String , Object> message=new HashMap<String, Object>();
		EmployeeVo em=biz.login(id, pwd);
		session.setAttribute("employee", em);
		if(em!=null) {
			message.put("code", "200");
			
		}else {
			message.put("code", "300");
		}
		return message;
	}
	//查询请假分页
	@GetMapping("pageleave")
	@ResponseBody
	public PageInfo<LeaveVo> pageleave(int id,int positionid,int pageNum ) {
		
		return biz1.page(id,positionid,pageNum, 6);
		
	}
	//新增请假
	@GetMapping("add")
	@ResponseBody
	public Map<String, Object> pageleave(Leave leave,int positionid) {
		Map<String , Object> message=new HashMap<String, Object>();
		Date date=new Date();
		leave.setTypeid(1);
		leave.setCreatetime(date);
		//判断他的上级是部门经理还是总经理
		if(positionid!=5) {
			leave.setNextdealman(1000);
		}else {
			leave.setNextdealman(1004);
		}
		leave.setStatusid(2);
		 int count=biz1.addleave(leave);
		 if(count>0) {
				message.put("code", "200");
				
			}else {
				message.put("code", "300");
			}
		return message;
		
	}
	
	
}
