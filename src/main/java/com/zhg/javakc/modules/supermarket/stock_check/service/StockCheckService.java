package com.zhg.javakc.modules.supermarket.stock_check.service;


import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.supermarket.stock_check.dao.StockCheckDao;
import com.zhg.javakc.modules.supermarket.stock_check.entity.StockCheckEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author lzj
 * @date 2019/11/22
 * @TIME 16:09
 */
@Service
public class StockCheckService extends BaseService <StockCheckDao,StockCheckEntity>{

    @Autowired
    StockCheckDao stockCheckDao;

    public Page<StockCheckEntity> queryTest(StockCheckEntity stockCheckEntity,Page<StockCheckEntity> page){
        //设置分页参数,才会被mybatis分页插件所识别,拦截sql,再起sql前后加入分页sql语句
        stockCheckEntity.setPage(page);
        //根据分页与查询条件测试数据的查询
        List <StockCheckEntity> stockCheckList=stockCheckDao.findList(stockCheckEntity);
        page.setList(stockCheckList);
        return page;
    }
}
