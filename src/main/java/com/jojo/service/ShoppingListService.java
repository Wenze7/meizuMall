package com.jojo.service;

import com.jojo.pojo.Shopping;
import com.jojo.pojo.User;
import com.jojo.util.ResultVo;
import org.apache.ibatis.annotations.Param;

import javax.servlet.http.HttpSession;

public interface ShoppingListService {
    public ResultVo getShoppingList(User loginUser);

    void updateShoppingBySID(@Param("sid")Integer sid, @Param("num")Integer num);

    ResultVo deleteShoppingBySID(Integer sid);

    ResultVo addShopping(Shopping shopping, HttpSession session);
}
