package com.jojo.dao;

import com.jojo.pojo.Order;
import java.util.List;

public interface OrderMapper {
    int deleteByPrimaryKey(Integer oid);

    int insert(Order record);

    Order selectByPrimaryKey(Integer oid);

    List<Order> selectAll();

    List<Order> getOrderListByuid(Integer uid);
    int updateByPrimaryKey(Order record);

    void addOrder(Order order);
    List<Order> getOrderList(Integer oid);
}