package com.zhg.javakc.modules.supermarket.commodity.dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.modules.supermarket.commodity.entity.CommodityEntity;
import com.zhg.javakc.modules.supermarket.commodity_type.entity.TypeEntity;

import java.util.List;

public interface CommodityDao extends BaseDao<CommodityEntity> {
    public List<CommodityEntity> searchList(CommodityEntity entity);
    public void changeState(String commodityId,Integer commodityState);
    public List<TypeEntity>queryType();
}
