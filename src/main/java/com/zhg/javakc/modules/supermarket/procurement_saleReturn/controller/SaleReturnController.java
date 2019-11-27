package com.zhg.javakc.modules.supermarket.procurement_saleReturn.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.supermarket.procurement_saleReturn.entity.SaleReturnEntity;
import com.zhg.javakc.modules.supermarket.procurement_saleReturn.service.SaleReturnService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/procurements")
public class SaleReturnController {
    @Autowired
    SaleReturnService saleReturnService;

    @RequestMapping("/querySalesReturn")
    public ModelAndView querySaleReturn(SaleReturnEntity saleReturnEntity, HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView = new ModelAndView("saleReturn/list");
        Page<SaleReturnEntity> page = saleReturnService.querySaleReturn(saleReturnEntity,new Page<SaleReturnEntity>(request,response));
        modelAndView.addObject("page",page);
        return modelAndView;
    }

    @RequestMapping("/save")
    public String save(SaleReturnEntity saleReturnEntity){
        saleReturnEntity.setSalesReturnId(CommonUtil.uuid());
        saleReturnService.save(saleReturnEntity);
        return "redirect:querySalesReturn.do";
    }

    @RequestMapping("/view")
    public String view(String ids, ModelMap modelMap){
        SaleReturnEntity saleReturnEntity = saleReturnService.get(ids);
        modelMap.put("saleReturnEntity",saleReturnEntity);
        return "saleReturn/update";
    }



}
