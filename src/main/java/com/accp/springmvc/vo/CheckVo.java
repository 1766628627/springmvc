package com.accp.springmvc.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class CheckVo {
	private Integer checkid;
	private String employeeName;
	private String resultName;
	@DateTimeFormat(pattern="yyyy-mm-dd")
	private Date checkTime;
	private String checkComment;
	
	public CheckVo() {
		super();
	}

	@Override
	public String toString() {
		return "CheckVo [checkid=" + checkid + ", employeeName=" + employeeName + ", resultName=" + resultName
				+ ", checkTime=" + checkTime + ", checkComment=" + checkComment + "]";
	}
	public Integer getCheckid() {
		return checkid;
	}
	public void setCheckid(Integer checkid) {
		this.checkid = checkid;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getResultName() {
		return resultName;
	}
	public void setResultName(String resultName) {
		this.resultName = resultName;
	}

	public Date getCheckTime() {
		return checkTime;
	}

	public void setCheckTime(Date checkTime) {
		this.checkTime = checkTime;
	}



	public String getCheckComment() {
		return checkComment;
	}



	public void setCheckComment(String checkComment) {
		this.checkComment = checkComment;
	}
	
	
	
	
	
}
