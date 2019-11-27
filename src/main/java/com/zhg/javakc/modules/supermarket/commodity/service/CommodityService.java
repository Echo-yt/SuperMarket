package com.zhg.javakc.modules.supermarket.commodity.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.supermarket.commodity.dao.CommodityDao;
import com.zhg.javakc.modules.supermarket.commodity.entity.CommodityEntity;
import com.zhg.javakc.modules.supermarket.commodity_type.entity.TypeEntity;
import com.zhg.javakc.modules.system.user.entity.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class CommodityService extends BaseService<CommodityDao, CommodityEntity> {
    @Autowired
    CommodityDao commodityDao;
    public Page<CommodityEntity> findCommodity(Page<CommodityEntity> page, CommodityEntity entity) {
        // 设置分页参数
        entity.setPage(page);
        // 执行分页查询
        page.setList(commodityDao.findList(entity));
        return page;
    }
    /**
     * 查询已经上架的商品
     */
    public Page<CommodityEntity> searchCommodity(Page<CommodityEntity> page, CommodityEntity entity) {
        // 设置分页参数
        entity.setPage(page);
        // 执行分页查询
        page.setList(commodityDao.searchList(entity));
        return page;
    }
    /**
     * 改变状态
     */
    public void changeState(String commodityId,Integer commodityState){
        commodityDao.changeState(commodityId,commodityState);
    }
    //查询类型
    public List<TypeEntity>queryType(){
       return commodityDao.queryType();
    }
}
