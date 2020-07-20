package com.jojo.service;

import com.jojo.dao.CollectionsMapper;
import com.jojo.dao.PhoneMapper;
import com.jojo.pojo.Collections;
import com.jojo.pojo.Phone;
import com.jojo.pojo.Shopping;
import com.jojo.pojo.User;
import com.jojo.util.ResultVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class CollectionServiceImpl implements CollectionService {
    @Autowired
    private PhoneMapper phoneMapper;
    @Autowired
    private CollectionsMapper collectionsMapper;


    @Override
    public ResultVo getCollectionList(HttpSession session) {
           User loginUser = (User)session.getAttribute("loginUser");
         if(loginUser==null){
               return ResultVo.error("用户未登录，请登录");
             }else{
              List<Collections> collectionList = collectionsMapper.getCollectionListByuid(loginUser.getUid());
              //查询收藏所对应的商品的数据
              for (Collections collection : collectionList) {
                  Phone phone = phoneMapper.selectByPrimaryKey(collection.getPid());
                  System.out.println("55");
                  collection.setPhone(phone);
              }
              System.out.println("11");
              return ResultVo.success("success", collectionList);
          }
    }

    @Override
    public ResultVo deleteOneCollection(Integer pid) {

        collectionsMapper.deleteByPid(pid, 1);
        List<Collections> collectionList = collectionsMapper.getCollectionListByuid(1);

        return ResultVo.success("success", collectionList);
    }

    @Override
    public ResultVo deleteCollectionByCid(Integer cid) {

        collectionsMapper.deleteByPrimaryKey(cid);
        System.out.println("!!!!");
        return ResultVo.success("删除成功");
    }

    @Override
    public ResultVo addCollection(Collections collections, HttpSession session) {
        //先从session中获取用户对象,查看是否为空
        User loginUser = (User) session.getAttribute("loginUser");
        if(loginUser==null){
            return ResultVo.error("用户未登录,请登录,再收藏");
        }else{
            collections.setUid(loginUser.getUid());
            Collections oldCollections = collectionsMapper.selectByUidAndPid(collections);
            if(oldCollections==null){
                collectionsMapper.insert(collections);
                return ResultVo.success("收藏成功");
            }else{
                collectionsMapper.deleteByPrimaryKey(oldCollections.getCid());
                return ResultVo.success("取消收藏");
            }
        }
    }
}
