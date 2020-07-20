package com.jojo.controller;


import com.jojo.pojo.*;
import com.jojo.service.CollectionService;
import com.jojo.service.OrderService;
import com.jojo.service.PhoneService;
import com.jojo.service.ShoppingListService;
import com.jojo.util.Md5Util;
import com.jojo.util.ResultVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import sun.nio.cs.US_ASCII;

import javax.servlet.http.HttpSession;

import javax.servlet.http.HttpSession;
import java.util.Comparator;
import java.util.List;

@RestController//即是controller,又能返回json对象
@RequestMapping("/phones")
public class PhoneController {

    @Autowired
    private PhoneService phoneService;

    @Autowired
    private ShoppingListService shoppingListService;
    @Autowired
    private CollectionService collectionService;

    @Autowired
    private OrderService orderService;


    @RequestMapping("/getPhoneShow")
    public ResultVo getPhoneShow(){
        System.out.println("——————进入control—getPhoneShow———————");
        List<Phone> phoneList = phoneService.getPhoneShow();
        for (Phone phone:phoneList){
            List<Color> phoneColor = phoneService.getPhoneColor(phone.getPid());
            for(Color c:phoneColor){
                List<Image> phoneImage = phoneService.getPhoneImage(c.getCid());
                c.setImages(phoneImage);
            }
            phone.setColors(phoneColor);
        }
        return ResultVo.success("success",phoneList);
    }

    @RequestMapping("/getPhoneShowKeyword")
    public ResultVo getPhoneShowKeyword(String keyword){
//        System.out.println("controller:"+keyword);
        List<Phone> phoneList = phoneService.getPhoneShowKeyword(keyword);
        for (Phone phone:phoneList){
            List<Color> phoneColor = phoneService.getPhoneColor(phone.getPid());
            for(Color c:phoneColor){
                List<Image> phoneImage = phoneService.getPhoneImage(c.getCid());
                c.setImages(phoneImage);
            }
            phone.setColors(phoneColor);
        }
        return ResultVo.success("success",phoneList);
    }

    @RequestMapping("/getPhoneDetail")
    public ResultVo getPhoneDetail(Integer pid) {
        System.out.println("——————进入control—getPhoneDetail———————");
        Phone phoneDetail = phoneService.getPhoneDetail(pid);
        List<Color> phoneColor = phoneService.getPhoneColor(pid);
        for(Color c:phoneColor){
            List<Image> phoneImage = phoneService.getPhoneImage(c.getCid());
            c.setImages(phoneImage);
        }
        phoneDetail.setColors(phoneColor);
        return ResultVo.success("success", phoneDetail);
    }
    @RequestMapping("/getPhoneShowByPrice")
    public ResultVo getPhoneResort(final int seq) {
        System.out.println("——————进入control—getPhoneShowByPrice———————");
        List<Phone> phoneList = phoneService.getPhoneShow();
        for (Phone phone:phoneList){
            List<Color> phoneColor = phoneService.getPhoneColor(phone.getPid());
            for(Color c:phoneColor){
                List<Image> phoneImage = phoneService.getPhoneImage(c.getCid());
                c.setImages(phoneImage);
            }
            phone.setColors(phoneColor);
        }
        java.util.Collections.sort(phoneList, new Comparator<Phone>() {
            public int compare(Phone arg0, Phone arg1) {
                Double hits0 = arg0.getBaseprice();
                Double hits1 = arg1.getBaseprice();
                if (hits1 > hits0) {
                    if(seq==0)return 1;
                    else return -1;
                } else if (hits1 == hits0) {
                    return 0;
                } else {
                    if(seq==0)return -1;
                    else return 1;
                }
            }
        });
        return ResultVo.success("success", phoneList);
    }

    @RequestMapping("/addShopping")
    public ResultVo addShopping(@RequestBody Shopping shopping, HttpSession session) {
        System.out.println("——————进入control—addShopping———————");
        ResultVo resultVo = shoppingListService.addShopping(shopping,session);
        return resultVo;
    }
    @RequestMapping("/addCollection")
    public ResultVo addCollection(@RequestBody Collections collections, HttpSession session) {
        System.out.println("——————进入control—addCollection———————");
        ResultVo resultVo = collectionService.addCollection(collections,session);
        return resultVo;
    }
//    @RequestMapping("/getPhoneImage")
//    public ResultVo getPhoneImage(Integer cid) {
//        System.out.println("——————进入control—getPhoneImage———————");
//        System.out.println("——————进入control—getPhoneImage———————cid:"+cid);
//        List<Image> phoneImage = phoneService.getPhoneImage(cid);
//        return ResultVo.success("success", phoneImage);
//    }
    @RequestMapping("/getShoppingList")
    public ResultVo getPhoneList(HttpSession session){
        User loginUser = new User();
        loginUser.setUid(1);
        loginUser.setPassword(Md5Util.secret("da","123456"));
        loginUser.setUsername("15621437520");
        Integer uid = 1;
        ResultVo resultVo = shoppingListService.getShoppingList(loginUser);
        System.out.println(resultVo);
        return resultVo;
    }

    @RequestMapping("/updateShoppingBySID")
    public void updateShoppingBySID(@Param("sid")Integer sid,@Param("num")Integer num){
        System.out.println(sid + " " + num);
        shoppingListService.updateShoppingBySID(sid,num);
    }

    @RequestMapping("/deleteShoppingBySID")
    public ResultVo deleteShoppingBySID(Integer sid){
        System.out.println(sid);
        ResultVo resultVo = shoppingListService.deleteShoppingBySID(sid);
        return resultVo;
    }
    @RequestMapping("/getPhoneById")
    public ResultVo getPhoneById(Integer pid){
        Phone phone = phoneService.getPhoneById(pid);
        return ResultVo.success("success",phone);
    }

    @RequestMapping("/getCollectionList")
    public ResultVo getCollectionList(HttpSession session){
        ResultVo resultVo = collectionService.getCollectionList(session);
        System.out.println("888");
        return resultVo;
        // return null;
    }

    @RequestMapping("/deleteCollectionByCid")
    public ResultVo deleteCollectionByCid(Integer cid){
        System.out.println(cid);
        ResultVo resultVo = collectionService.deleteCollectionByCid(cid);
        return resultVo;
    }
}
