package com.accp.springmvc.pojo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Leave {
    private Integer leaveid;

    private Integer typeid;

    private Integer createman;

    private Integer departmentid;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createtime;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date starttime;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date endtime;

    private Integer nextdealman;

    private String event;

    private Integer totalcount;

    private Integer statusid;

    public Leave() {
		super();
	}

	public Leave(Integer typeid, Integer createman, Integer departmentid, Date createtime, Date starttime, Date endtime,
			Integer nextdealman, String event, Integer totalcount, Integer statusid) {
		super();
		this.typeid = typeid;
		this.createman = createman;
		this.departmentid = departmentid;
		this.createtime = createtime;
		this.starttime = starttime;
		this.endtime = endtime;
		this.nextdealman = nextdealman;
		this.event = event;
		this.totalcount = totalcount;
		this.statusid = statusid;
	}

	public Integer getLeaveid() {
        return leaveid;
    }

    public void setLeaveid(Integer leaveid) {
        this.leaveid = leaveid;
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

    public Integer getDepartmentid() {
        return departmentid;
    }

    public void setDepartmentid(Integer departmentid) {
        this.departmentid = departmentid;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Date getStarttime() {
        return starttime;
    }

    public void setStarttime(Date starttime) {
        this.starttime = starttime;
    }

    public Date getEndtime() {
        return endtime;
    }

    public void setEndtime(Date endtime) {
        this.endtime = endtime;
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

    public Integer getTotalcount() {
        return totalcount;
    }

    public void setTotalcount(Integer totalcount) {
        this.totalcount = totalcount;
    }

    public Integer getStatusid() {
        return statusid;
    }

    public void setStatusid(Integer statusid) {
        this.statusid = statusid;
    }
}