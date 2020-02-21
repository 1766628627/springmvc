package com.accp.springmvc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.accp.springmvc.pojo.Detail;
import com.accp.springmvc.pojo.Reimburse;
import com.accp.springmvc.vo.ReimburseCheckVo;
import com.accp.springmvc.vo.ReimburseDetailVo;
import com.accp.springmvc.vo.ReimburseVo;

public interface ReimburseMapper {
   List<ReimburseVo> querybyid(@Param("id")int id,@Param("positionid") int positionid);
   ReimburseDetailVo select(@Param("id")Integer id);
   int add(@Param("rei")Reimburse reimburses);
   int modify(@Param("id")Integer id,@Param("statusid")Integer statusid);
   int modifybyid(@Param("id")Integer id,@Param("statusid")Integer statusid);
   int adddetail(@Param("id")Integer id,@Param("detail") List<Detail> detail);
   int removedetail(@Param("id")Integer id);
   int remove(@Param("id")Integer id);
   ReimburseCheckVo selectche(@Param("id")Integer id);
   int modifybyname(@Param("id")Integer id,@Param("statusid")Integer statusid,@Param("nextid") Integer nextid);
   List<ReimburseVo> querybytime(@Param("id")int id,@Param("positionid") int positionid,@Param("stime") String stime,@Param("etime") String etime,@Param("statusid")int statusid);
}