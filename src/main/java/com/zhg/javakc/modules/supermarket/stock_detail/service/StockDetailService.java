package com.zhg.javakc.modules.supermarket.stock_detail.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.supermarket.stock_detail.dao.StockDetailDao;
import com.zhg.javakc.modules.supermarket.stock_detail.entity.StockDetailEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author lzj
 * @date 2019/11/25
 * @TIME 17:59
 */
@Service
public class StockDetailService extends BaseService<StockDetailDao, StockDetailEntity> {

    @Autowired
    StockDetailDao stockDetailDao;

    public Page<StockDetailEntity> queryTest(StockDetailEntity stockDetailEntity, Page<StockDetailEntity> page){
        stockDetailEntity.setPage(page);
        List<StockDetailEntity> testList= stockDetailDao.findList(stockDetailEntity);
        page.setList(testList);
        return page;
    }
}

