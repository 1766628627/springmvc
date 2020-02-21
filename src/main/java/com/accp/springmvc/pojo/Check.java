package com.accp.springmvc.pojo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Check {
    private Integer checkid;

    private Integer bizid;

    private Integer typeid;
    @DateTimeFormat(pattern="yyyy-mm-dd")
    private Date checktime;

    private Integer checkman;

    private Integer checkresult;

    private String checkcomment;

    	
    public Check() {
		super();
	}

	@Override
	public String toString() {
		return "Check [checkid=" + checkid + ", bizid=" + bizid + ", typeid=" + typeid + ", checktime=" + checktime
				+ ", checkman=" + checkman + ", checkresult=" + checkresult + ", checkcomment=" + checkcomment + "]";
	}

	public Integer getCheckid() {
        return checkid;
    }

    public void setCheckid(Integer checkid) {
        this.checkid = checkid;
    }

    public Integer getBizid() {
        return bizid;
    }

    public void setBizid(Integer bizid) {
        this.bizid = bizid;
    }

    public Integer getTypeid() {
        return typeid;
    }

    public void setTypeid(Integer typeid) {
        this.typeid = typeid;
    }

    public Date getChecktime() {
        return checktime;
    }

    public void setChecktime(Date checktime) {
        this.checktime = checktime;
    }

    public Integer getCheckman() {
        return checkman;
    }

    public void setCheckman(Integer checkman) {
        this.checkman = checkman;
    }

    public Integer getCheckresult() {
        return checkresult;
    }

    public void setCheckresult(Integer checkresult) {
        this.checkresult = checkresult;
    }

    public String getCheckcomment() {
        return checkcomment;
    }

    public void setCheckcomment(String checkcomment) {
        this.checkcomment = checkcomment == null ? null : checkcomment.trim();
    }
}