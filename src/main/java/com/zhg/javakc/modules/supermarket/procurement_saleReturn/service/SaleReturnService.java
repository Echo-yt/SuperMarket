package com.zhg.javakc.modules.supermarket.procurement_saleReturn.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.supermarket.procurement_saleReturn.dao.SaleReturnDao;
import com.zhg.javakc.modules.supermarket.procurement_saleReturn.entity.SaleReturnEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SaleReturnService extends BaseService<SaleReturnDao, SaleReturnEntity> {

    @Autowired
    SaleReturnDao saleReturnDao;

    public Page<SaleReturnEntity> querySaleReturn(SaleReturnEntity saleReturnEntity,Page<SaleReturnEntity> page){
        saleReturnEntity.setPage(page);
        List<SaleReturnEntity> saleReturnList = saleReturnDao.findList(saleReturnEntity);
        page.setList(saleReturnList);
        return page;
    }
}
