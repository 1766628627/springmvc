package com.accp.springmvc.dao;

import com.accp.springmvc.pojo.Check;
import com.accp.springmvc.vo.CheckVo;

public interface CheckMapper {
   int add(Check check);
   CheckVo querybyid(Integer id);
}