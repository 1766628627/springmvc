package com.accp.springmvc.dao;

import org.apache.ibatis.annotations.Param;

import com.accp.springmvc.pojo.Employee;
import com.accp.springmvc.vo.EmployeeVo;

public interface EmployeeMapper {
   EmployeeVo login(@Param("id")int id,@Param("pwd")String pwd);
}