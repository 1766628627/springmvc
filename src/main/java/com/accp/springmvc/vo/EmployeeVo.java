package com.accp.springmvc.vo;

public class EmployeeVo {
	private Integer employeeid;

    private String employeename;

    private String password;

    private String departmentname;

    private String positionname;

    private Integer departmentid;
    
    private Integer positionid;
	
	public EmployeeVo() {
		super();
	}

	@Override
	public String toString() {
		return "EmployeeVo [employeeid=" + employeeid + ", employeename=" + employeename + ", password=" + password
				+ ", departmentname=" + departmentname + ", positionname=" + positionname + ", departmentid="
				+ departmentid + ", positionId=" + positionid + "]";
	}

	public Integer getEmployeeid() {
		return employeeid;
	}

	public void setEmployeeid(Integer employeeid) {
		this.employeeid = employeeid;
	}

	public String getEmployeename() {
		return employeename;
	}

	public void setEmployeename(String employeename) {
		this.employeename = employeename;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDepartmentname() {
		return departmentname;
	}

	public void setDepartmentname(String departmentname) {
		this.departmentname = departmentname;
	}

	public String getPositionname() {
		return positionname;
	}

	public void setPositionname(String positionname) {
		this.positionname = positionname;
	}

	public Integer getDepartmentid() {
		return departmentid;
	}

	public void setDepartmentid(Integer departmentid) {
		this.departmentid = departmentid;
	}

	public Integer getPositionid() {
		return positionid;
	}

	public void setPositionid(Integer positionid) {
		this.positionid = positionid;
	}

	
	
	

	
    
}
