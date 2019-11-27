package com.zhg.javakc.modules.supermarket.commodity_type.service;

import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.supermarket.commodity_type.dao.TypeDao;
import com.zhg.javakc.modules.supermarket.commodity_type.entity.TypeEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author yang
 * @version v0.0.1
 * @date 2019/11/22 15:31
 */
@Service
public class TypeService extends BaseService<TypeDao, TypeEntity> {
    @Autowired
    TypeDao typeDao;
    public List<TypeEntity>queryAll(){
        return typeDao.queryAll();
    }
    public List<TypeEntity>queryType(String typeFirst){
        return typeDao.queryType(typeFirst);
    }
}
