package com.jojo.service;

import com.jojo.pojo.Address;
import com.jojo.pojo.User;
import com.jojo.util.ResultVo;

import javax.servlet.http.HttpSession;

public interface OrderService {
    ResultVo addOrder(Integer[] ids, Double totalMoney, User user);

    ResultVo getAddressByUid(User user);

    ResultVo deleteAddressByAid(Integer aid);

    ResultVo getOrderDetailList(Integer oid);

    ResultVo updateAddressByAid(Address address);

    ResultVo addNewAddress(Address address);
}
