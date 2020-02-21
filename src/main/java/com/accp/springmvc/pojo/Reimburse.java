package com.accp.springmvc.pojo;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

public class Reimburse {
    private Integer reimburseid;

    private Integer typeid;

    private Integer createman;
    @DateTimeFormat(pattern="yyyy-mm-dd")
    private Date createtime;

    private Integer departmentid;

    private Integer nextdealman;

    private String event;

    private Float totalcount;

    private Integer statusid;

    private List<Detail> reides;
    
    public Integer getReimburseid() {
        return reimburseid;
    }

    public void setReimburseid(Integer reimburseid) {
        this.reimburseid = reimburseid;
    }

    public Integer getTypeid() {
        return typeid;
    }

    public void setTypeid(Integer typeid) {
        this.typeid = typeid;
    }

    public Integer getCreateman() {
        return createman;
    }

    public void setCreateman(Integer createman) {
        this.createman = createman;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Integer getDepartmentid() {
        return departmentid;
    }

    public void setDepartmentid(Integer departmentid) {
        this.departmentid = departmentid;
    }

    public Integer getNextdealman() {
        return nextdealman;
    }

    public void setNextdealman(Integer nextdealman) {
        this.nextdealman = nextdealman;
    }

    public String getEvent() {
        return event;
    }

    public void setEvent(String event) {
        this.event = event == null ? null : event.trim();
    }

    public Float getTotalcount() {
        return totalcount;
    }

    public void setTotalcount(Float totalcount) {
        this.totalcount = totalcount;
    }

    public Integer getStatusid() {
        return statusid;
    }

    public void setStatusid(Integer statusid) {
        this.statusid = statusid;
    }

	public List<Detail> getReides() {
		return reides;
	}

	public void setReides(List<Detail> reides) {
		this.reides = reides;
	}
    
}