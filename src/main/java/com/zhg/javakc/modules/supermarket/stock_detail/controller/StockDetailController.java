package com.zhg.javakc.modules.supermarket.stock_detail.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.supermarket.stock_detail.dao.StockDetailDao;
import com.zhg.javakc.modules.supermarket.stock_detail.entity.StockDetailEntity;
import com.zhg.javakc.modules.supermarket.stock_detail.service.StockDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author lzj
 * @date 2019/11/25
 * @TIME 17:59
 */
@Controller
@RequestMapping("/supermarket/stockDetail")
public class StockDetailController extends BaseService<StockDetailDao, StockDetailEntity> {

    @Autowired
    StockDetailService stockDetailService;

    @RequestMapping("/queryTest")
    public ModelAndView queryTest(StockDetailEntity stockDetailEntity,
                                  HttpServletRequest request,
                                  HttpServletResponse response){
        ModelAndView modelAndView=new ModelAndView("supermarket/stockDetail/list");
        Page<StockDetailEntity> page= stockDetailService.queryTest(stockDetailEntity,new Page<StockDetailEntity>(request,response));
        modelAndView.addObject("page",page);
        return modelAndView;
    }
}
