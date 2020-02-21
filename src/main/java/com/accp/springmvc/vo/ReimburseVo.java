package com.accp.springmvc.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ReimburseVo {
	private int reimburseId;
	private String employeeName;
	 @DateTimeFormat(pattern="yyyy-mm-dd")
	private Date createTime;
	private String nextname;
	private String statusName;
	private int totalCount;

	public ReimburseVo() {
		super();
	}
	
	@Override
	public String toString() {
		return "ReimburseVo [reimburseId=" + reimburseId + ", employeeName=" + employeeName + ", createTime="
				+ createTime + ", nextname=" + nextname + ", statusName=" + statusName + ", totalCount=" + totalCount
				+ "]";
	}

	public int getReimburseId() {
		return reimburseId;
	}
	public void setReimburseId(int reimburseId) {
		this.reimburseId = reimburseId;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getNextname() {
		return nextname;
	}
	public void setNextname(String nextname) {
		this.nextname = nextname;
	}
	public String getStatusName() {
		return statusName;
	}
	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	
	
}
