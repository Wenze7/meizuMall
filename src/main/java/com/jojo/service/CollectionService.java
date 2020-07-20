package com.jojo.service;

import com.jojo.pojo.Collections;
import com.jojo.util.ResultVo;

import javax.servlet.http.HttpSession;

public interface CollectionService {
    ResultVo getCollectionList(HttpSession session);

    ResultVo deleteOneCollection(Integer pid);

    ResultVo deleteCollectionByCid(Integer cid);

    ResultVo addCollection(Collections collections, HttpSession session);
}
