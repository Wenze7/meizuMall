package com.jojo.service;

import com.jojo.dao.*;
import com.jojo.pojo.*;
import com.jojo.util.ResultVo;
import com.sun.tools.internal.ws.wsdl.document.soap.SOAPUse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import javax.sound.midi.SoundbankResource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderMapper orderMapper;

    @Autowired
    private ShoppingMapper shoppingMapper;

    @Autowired
    OrderDetailMapper orderDetailMapper;

    @Autowired
    AddressMapper addressMapper;

    @Autowired
    PhoneMapper phoneMapper;

    @Override
    public ResultVo addOrder(Integer[] ids, Double totalMoney, User loginUser) {
        if(loginUser == null){
            return ResultVo.error("请先登录");
        }else {
            if(ids == null) return ResultVo.error("11");
            if(totalMoney == null) return ResultVo.error("11");
            if(loginUser == null) return ResultVo.error("11");
            // 1. 订单主表添加数据(时间、用户id  价格)
            Order order = new Order();
            order.setCreatetime(new Date());
            order.setTotalprice(totalMoney);
            order.setUid(loginUser.getUid());
            //orders对象执行此添加之前oid没有值，在插入数据之后就有值了
            orderMapper.addOrder(order);
            // 2. 订单详情表添加数据(订单主表id、商品id、商品数量)
            for (Integer id : ids) {
                System.out.println(id);
                OrderDetail orderDetail = new OrderDetail();
                orderDetail.setOid(order.getOid());
                //根据购物车的id查询购物车详情，获取商品id和购买的商品数量
                System.out.println(id);
                System.out.println(shoppingMapper);
                Shopping shopping = shoppingMapper.selectByPrimaryKey(id);
                System.out.println(id);
                if(shopping == null) System.out.println("*********************");
                orderDetail.setNum(shopping.getNum());
                orderDetail.setPid(shopping.getPid());
                orderDetailMapper.addOrderDetail(orderDetail);
            }
            //shoppingMapper.deleteByUid(loginUser.getUid());

            //返回订单主表的oid(便于前端传参查询)
            return ResultVo.success("订单生成", order.getOid());
        }
    }

    @Override
    public ResultVo getAddressByUid(User loginUser) {
        List<Address> addresses = addressMapper.selectByUid(loginUser.getUid());
        return ResultVo.success("查询成功",addresses);
    }

    @Override
    public ResultVo deleteAddressByAid(Integer aid) {
        addressMapper.deleteByPrimaryKey(aid);
        return ResultVo.success("删除成功");
    }

    @Override
    public ResultVo getOrderDetailList(Integer oid) {
        List<OrderDetail> orderDetailList = orderDetailMapper.getOrderDetailList(oid);
        for(OrderDetail orderDetail:orderDetailList){
            Phone phone = phoneMapper.selectByPrimaryKey(orderDetail.getPid());
            orderDetail.setPhone(phone);
        }
        return ResultVo.success("success",orderDetailList);
    }

    @Override
    public ResultVo updateAddressByAid(Address address) {
        addressMapper.updateAddressByAid(address);
        return ResultVo.success("更新成功");
    }

    @Override
    public ResultVo addNewAddress(Address address) {
        addressMapper.AddNewAddress(address);
        return ResultVo.success("添加成功");
    }
}
