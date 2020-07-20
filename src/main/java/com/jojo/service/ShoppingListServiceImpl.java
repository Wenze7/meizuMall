package com.jojo.service;

import com.jojo.dao.ImageMapper;
import com.jojo.dao.MemoryMapper;
import com.jojo.dao.PhoneMapper;
import com.jojo.dao.ShoppingMapper;
import com.jojo.pojo.*;
import com.jojo.util.ResultVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class ShoppingListServiceImpl implements ShoppingListService {

    @Autowired
    private ShoppingMapper shoppingMapper;

    @Autowired
    private PhoneMapper phoneMapper;

    @Autowired
    private ImageMapper imageMapper;

    @Autowired
    private MemoryMapper memoryMapper;

    @Override
    public ResultVo getShoppingList(User loginUser) {
        if(loginUser == null){
            return ResultVo.error("请先登录");
        }else {
            List<Shopping> shoppingList = shoppingMapper.selectByUid(loginUser.getUid());
            System.out.println(shoppingList);
            for (Shopping shopping : shoppingList) {
                Phone phone = phoneMapper.selectByPrimaryKey(shopping.getPid());
                shopping.setPhone(phone);
                Memory memory = memoryMapper.selectMemoryByMID(phone.getMid());
                shopping.setMemory(memory);
                shopping.setSubId("SubDiv" + shopping.getSid());
                shopping.setAddId("AddDiv" + shopping.getSid());
                System.out.println(shopping.getAddId());
            }

            return ResultVo.success("success", shoppingList);
        }
    }

    @Override
    public void updateShoppingBySID(@Param("sid")Integer sid, @Param("num")Integer num) {
        shoppingMapper.updateShoppingBySID(sid,num);
    }

    @Override
    public ResultVo deleteShoppingBySID(Integer sid) {
        shoppingMapper.deleteByPrimaryKey(sid);
        return ResultVo.success("删除成功");
    }

    @Override
    public ResultVo addShopping(Shopping shopping, HttpSession session) {
        //先从session中获取用户对象,查看是否为空
        User loginUser = (User) session.getAttribute("loginUser");
        if(loginUser==null){
            return ResultVo.error("用户未登录,请登录,再购买");
        }else{
            shopping.setUid(loginUser.getUid());
            //1. 先根据用户id和商品id查询购物车对象是否存在
            Shopping oldShopping = shoppingMapper.selectByUidAndPid(shopping);
            //2. 判断oldShopping是否为空
            if(oldShopping==null){
                shoppingMapper.insert(shopping);
            }else{
                //购买过此商品，要做数量更新
                oldShopping.setNum(shopping.getNum()+oldShopping.getNum());
                shoppingMapper.updateByPrimaryKey(oldShopping);
            }
            return ResultVo.success("购物车数据添加成功");
        }
    }
}
