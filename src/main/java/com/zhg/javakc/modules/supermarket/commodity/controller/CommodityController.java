package com.zhg.javakc.modules.supermarket.commodity.controller;

import com.zhg.javakc.modules.supermarket.commodity.entity.CommodityEntity;
import com.zhg.javakc.modules.supermarket.commodity.service.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("supermarket")
public class CommodityController{
    @Autowired
    CommodityService commodityService;
    /**
     * 增加商品
     */
    @RequestMapping("add")
  public String  add(){
      return "supermarket/commodity/create";
  }
  @RequestMapping("create")
  public String create(CommodityEntity entity){
        commodityService.save(entity);
        return null;
  }
    /**
     * 查询
     */
    @RequestMapping("query")
    public String query(CommodityEntity entity, ModelMap model,
                        HttpServletRequest request, HttpServletResponse response) throws Exception{

        return "supermarket/commodity/list";
    }

}
