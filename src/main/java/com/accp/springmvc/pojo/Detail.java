package com.accp.springmvc.pojo;

public class Detail {
    private Integer id;

    private Integer mainid;

    private Float subtotal;

    private String desc;

    private String picturename;

    private String picturepath;

    
    public Detail() {
		super();
	}

	@Override
	public String toString() {
		return "Detail [id=" + id + ", mainid=" + mainid + ", subtotal=" + subtotal + ", desc=" + desc
				+ ", picturename=" + picturename + ", picturepath=" + picturepath + "]";
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getMainid() {
        return mainid;
    }

    public void setMainid(Integer mainid) {
        this.mainid = mainid;
    }

    public Float getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(Float subtotal) {
        this.subtotal = subtotal;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc == null ? null : desc.trim();
    }

    public String getPicturename() {
        return picturename;
    }

    public void setPicturename(String picturename) {
        this.picturename = picturename == null ? null : picturename.trim();
    }

    public String getPicturepath() {
        return picturepath;
    }

    public void setPicturepath(String picturepath) {
        this.picturepath = picturepath == null ? null : picturepath.trim();
    }
}