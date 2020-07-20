package com.jojo.service;

import com.jojo.pojo.Color;
import com.jojo.pojo.Image;
import com.jojo.pojo.Phone;

import java.util.List;

public interface PhoneService {
    public List<Phone> getPhoneShow();

//    List<Image> getPhoneImg();

    Phone getPhoneDetail(Integer pid);

    List<Color> getPhoneColor(Integer pid);

    List<Image> getPhoneImage(Integer cid);

    List<Phone> getPhoneShowKeyword(String keyword);
    Phone getPhoneById(Integer pid);
}
