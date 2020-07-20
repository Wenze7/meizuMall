package com.jojo.dao;

import com.jojo.pojo.Memory;
import com.jojo.pojo.Phone;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PhoneMapper {
    int deleteByPrimaryKey(Integer pid);

    int insert(Phone record);

    Phone selectByPrimaryKey(Integer pid);

    List<Phone> selectAll();

    List<Integer> selectId();

    int updateByPrimaryKey(Phone record);

    List<Phone> selectByKeyword(@Param("keyword") String keyword);

}