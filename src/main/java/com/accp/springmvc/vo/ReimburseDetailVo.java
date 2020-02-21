package com.accp.springmvc.vo;

import java.util.List;

import com.accp.springmvc.pojo.Detail;

public class ReimburseDetailVo {
	private ReimburseVo reimburse;
	private List<Detail> details;
	
	public ReimburseVo getReimburse() {
		return reimburse;
	}
	public void setReimburse(ReimburseVo reimburse) {
		this.reimburse = reimburse;
	}
	public List<Detail> getDetails() {
		return details;
	}
	public void setDetails(List<Detail> details) {
		this.details = details;
	}
	
	

}
