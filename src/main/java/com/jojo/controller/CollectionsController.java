package com.jojo.controller;

import com.jojo.service.CollectionService;
import com.jojo.service.PhoneService;
import com.jojo.util.ResultVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/collections")
public class CollectionsController {

    @Autowired
    private PhoneService phoneService;

    @Autowired
    private CollectionService collectionService;


    @RequestMapping("/deleteOneCollection")
    public ResultVo deleteOneCollection(Integer pid){
        ResultVo resultVo = collectionService.deleteOneCollection(pid);
        return resultVo;
    }


}
