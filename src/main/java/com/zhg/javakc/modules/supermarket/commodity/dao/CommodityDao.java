package com.zhg.javakc.modules.supermarket.commodity.dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.modules.supermarket.commodity.entity.CommodityEntity;
import org.apache.poi.ss.formula.functions.T;

import java.util.List;

public interface CommodityDao extends BaseDao<CommodityEntity> {
    public List<CommodityEntity> searchList(CommodityEntity entity);
    public void changeState(String commodityId,Integer commodityState);
}
