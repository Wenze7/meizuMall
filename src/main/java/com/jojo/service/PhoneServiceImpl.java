package com.jojo.service;

import com.jojo.dao.ColorMapper;
import com.jojo.dao.ImageMapper;
import com.jojo.dao.PhoneMapper;
import com.jojo.pojo.Color;
import com.jojo.pojo.Image;
import com.jojo.pojo.Phone;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PhoneServiceImpl implements PhoneService {

    @Autowired
    private PhoneMapper phoneMapper;

    @Autowired
    private ColorMapper colorMapper;

    @Autowired
    private ImageMapper imageMapper;

    @Override
    public List<Phone> getPhoneShow() {
        System.out.println("——————进入service—getPhoneShow———————");
        List<Phone> phoneList = phoneMapper.selectAll();
//        phoneList = phoneList.subList(0,6);
        return phoneList;
    }
    @Override
    public Phone getPhoneById(Integer pid) {
        return phoneMapper.selectByPrimaryKey(pid);
    }
//    @Override
//    public List<Image> getPhoneImg() {
//        System.out.println("——————进入service—getPhoneImg———————");
//        List<Integer> phoneId = phoneMapper.selectId();
////        List<Integer> colorList = null;
//        System.out.println("——————进入service—getPhoneImg—for1——————");
//        for (int index = 0; index<phoneId.size(); index++){
//            System.out.println("——————进入service—getPhoneImg—for2——————");
////            System.out.println(colorMapper.selectByPid(phoneId.get(index)));
////            System.out.println("3"+colorMapper.selectByPid(phoneId.get(index)).get(0));
////            System.out.println("4"+colorMapper.selectByPid(phoneId.get(index)).get(0).getCid());
////            colorList.add(colorMapper.selectByPid(phoneId.get(index)).get(0));
//        }
////        List<Image> imgList = null;
////        for (Integer c:colorList){
////            imgList.add(imageMapper.selectByCid(c).get(0));
////        }
//        return null;
//    }

    @Override
    public Phone getPhoneDetail(Integer pid) {
        System.out.println("——————进入service—getPhoneDetail———————");
        Phone phone = phoneMapper.selectByPrimaryKey(pid);
        return phone;
    }

    @Override
    public List<Color> getPhoneColor(Integer pid) {
        System.out.println("——————进入service—getPhoneColor———————");
        List<Color> colorList = colorMapper.selectByPid(pid);

//        List<Image> imageList = phoneMapper.select
        return colorList;
    }

    @Override
    public List<Image> getPhoneImage(Integer cid) {
        System.out.println("——————进入service—getPhoneImage———————");
        List<Image> imageList = imageMapper.selectByCid(cid);
        return imageList;
    }

    @Override
    public List<Phone> getPhoneShowKeyword(String keyword) {
        System.out.println("——————进入service—getPhoneShow———————");
        List<Phone> phoneList = phoneMapper.selectByKeyword(keyword);
//        phoneList = phoneList.subList(0,6);
        return phoneList;
    }
}
