package com.jojo.dao;

import com.jojo.pojo.Color;

import java.util.List;

public interface ColorMapper {
    int deleteByPrimaryKey(Integer cid);

    int insert(Color record);

    Color selectByPrimaryKey(Integer cid);

    List<Color> selectAll();

    List<Color> selectByPid(Integer pid);

    int updateByPrimaryKey(Color record);
}