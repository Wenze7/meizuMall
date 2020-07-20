package com.jojo.dao;

import com.jojo.pojo.Collections;

import java.util.List;

public interface CollectionsMapper {
    int deleteByPrimaryKey(Integer cid);

    int insert(Collections record);

    Collections selectByPrimaryKey(Integer cid);

    List<Collections> selectAll();

    int updateByPrimaryKey(Collections record);

    List<Collections> getCollectionListByuid(Integer uid);
    List<Collections> deleteByPid(Integer v,Integer uid);

    Collections selectByUidAndPid(Collections collections);
}