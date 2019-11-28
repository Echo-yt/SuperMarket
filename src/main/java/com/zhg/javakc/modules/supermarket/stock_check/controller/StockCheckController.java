package com.zhg.javakc.modules.supermarket.stock_check.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.modules.supermarket.stock_check.entity.StockCheckEntity;
import com.zhg.javakc.modules.supermarket.stock_check.service.StockCheckService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author lzj
 * @date 2019/11/22
 * @TIME 16:07
 */
@Controller
@RequestMapping("/supermarket/stockCheck")
public class StockCheckController {

    @Autowired
    StockCheckService stockCheckService;

    @RequestMapping("/query")
    public ModelAndView queryTest(StockCheckEntity stockCheckEntity, HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView=new ModelAndView("supermarket/stockCheck/list");
        Page<StockCheckEntity> page=stockCheckService.queryTest(stockCheckEntity,new Page<StockCheckEntity>(request,response));
        modelAndView.addObject("page",page);
        return modelAndView;
    }
}
