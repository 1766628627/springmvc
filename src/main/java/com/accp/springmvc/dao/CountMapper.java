package com.accp.springmvc.dao;

import com.accp.springmvc.pojo.Count;

public interface CountMapper {
    int deleteByPrimaryKey(Integer countid);

    int insert(Count record);

    int insertSelective(Count record);

    Count selectByPrimaryKey(Integer countid);

    int updateByPrimaryKeySelective(Count record);

    int updateByPrimaryKey(Count record);
}