package com.accp.springmvc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.accp.springmvc.pojo.Leave;
import com.accp.springmvc.vo.LeaveTwoVo;
import com.accp.springmvc.vo.LeaveVo;

public interface LeaveMapper {
   List<LeaveTwoVo> querybyid(@Param("id")int id);
   List<LeaveVo> queryby(@Param("id")int id,@Param("positionid") int positionid);
   int addleave(Leave leave);
   int modify(@Param("id")int id,@Param("nextdealman") int nextdealman,@Param("statusid") int statusid);
   int modifybyid(@Param("id")int id,@Param("statusid") int statusid);
}