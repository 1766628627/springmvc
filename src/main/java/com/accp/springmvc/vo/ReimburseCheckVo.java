package com.accp.springmvc.vo;

import java.util.List;

import com.accp.springmvc.pojo.Detail;

public class ReimburseCheckVo {
	private ReimburseVo reimburse;
	private List<Detail> details;
	private List<CheckVo> checks;
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
	public List<CheckVo> getChecks() {
		return checks;
	}
	public void setChecks(List<CheckVo> checks) {
		this.checks = checks;
	}
	
	
	
}
