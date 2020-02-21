package com.accp.springmvc.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class LeaveTwoVo {
	private Integer leaveId;
	private String employeeName;
	private String departmentName;
	@DateTimeFormat(pattern="yyyy-mm-dd")
	private Date startTime;
	@DateTimeFormat(pattern="yyyy-mm-dd")
	private Date endTime;
	private Integer totalCount;
	private String event;
	private String statusName;
	
	public LeaveTwoVo() {
		super();
	}
	
	@Override
	public String toString() {
		return "LeaveTwoVo [leaveId=" + leaveId + ", employeeName=" + employeeName + ", departmentName="
				+ departmentName + ", startTime=" + startTime + ", endTime=" + endTime + ", totalCount=" + totalCount
				+ ", event=" + event + ", statusName=" + statusName + "]";
	}

	public Integer getLeaveId() {
		return leaveId;
	}
	public void setLeaveId(Integer leaveId) {
		this.leaveId = leaveId;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	public Integer getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}
	public String getEvent() {
		return event;
	}
	public void setEvent(String event) {
		this.event = event;
	}
	public String getStatusName() {
		return statusName;
	}
	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}
	
	
}
