package com.zhg.javakc.modules.supermarket.commodity_type.dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.modules.supermarket.commodity.entity.CommodityEntity;
import com.zhg.javakc.modules.supermarket.commodity_type.entity.TypeEntity;

import java.util.List;

/**
 * @author yang
 * @version v0.0.1
 * @date 2019/11/22 15:31
 */
public interface TypeDao  extends BaseDao<TypeEntity> {
    public List<TypeEntity> queryAll();
    public List<TypeEntity>queryType(String typeFirst);
}
