package com.zhg.javakc.modules.supermarket.procurement.controller;


import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.supermarket.procurement.entity.ProcurementEntity;
import com.zhg.javakc.modules.supermarket.procurement.service.ProcurementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/procurement")
public class ProcurementController {

    @Autowired
    private ProcurementService procurementService;

    @RequestMapping("/query")
    public ModelAndView query(ProcurementEntity procurementEntity, HttpServletRequest request, HttpServletResponse response ){




        ModelAndView modelAndView = new ModelAndView("supermarket/procurement/list");

        Page<ProcurementEntity> page =procurementService.query(procurementEntity,new Page<ProcurementEntity>(request,response));

        modelAndView.addObject("page",page);
        return modelAndView;


    }






    @RequestMapping("/save")
    public String save(ProcurementEntity procurementEntity){


        System.out.println("inserttime:"+procurementEntity.getProcurementCreatetime());
       // procurementEntity.setProcurementId(CommonUtil.uuid());
        procurementService.save(procurementEntity);

        return "redirect:query.do";
    }


    @RequestMapping("/delete")
    public String delete(String[] ids){
        procurementService.delete(ids);
        return "redirect:query.do";

    }
}
