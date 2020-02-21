package com.accp.springmvc.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class LeaveVo {
	private int leaveid;
	private String employeeName;
	 @DateTimeFormat(pattern="yyyy-mm-dd")
	private Date createTime;
	 @DateTimeFormat(pattern="yyyy-mm-dd")
	private Date checkTime;
	private String nextname;
	private String statusName;
	private int totalCount;
	private String resultName;
	
	public LeaveVo() {
		super();
	}
	@Override
	public String toString() {
		return "LeaveVo [leaveid=" + leaveid + ", employeeName=" + employeeName + ", createTime=" + createTime
				+ ", checkTime=" + checkTime + ", nextname=" + nextname + ", statusName=" + statusName + ", totalCount="
				+ totalCount + ", resultName=" + resultName + "]";
	}
	public String getResultName() {
		return resultName;
	}
	public void setResultName(String resultName) {
		this.resultName = resultName;
	}
	public int getLeaveid() {
		return leaveid;
	}
	public void setLeaveid(int leaveid) {
		this.leaveid = leaveid;
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
	public Date getCheckTime() {
		return checkTime;
	}
	public void setCheckTime(Date checkTime) {
		this.checkTime = checkTime;
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
