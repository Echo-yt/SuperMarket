package com.zhg.javakc.modules.supermarket.commodity_label.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.modules.supermarket.commodity_label.entity.LabelEntity;
import com.zhg.javakc.modules.supermarket.commodity_label.service.LabelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author yang
 * @version v0.0.1
 * @date 2019/11/22 14:51
 */
@Controller
@RequestMapping("supermarket")
public class LabelController {

    @Autowired
    private LabelService labelService;

    @RequestMapping("label")
    public ModelAndView query(LabelEntity entity, HttpServletRequest request, HttpServletResponse response){
        ModelAndView model = new ModelAndView("supermarket/commodity_label/list");
        Page<LabelEntity> page =labelService.queryTest(entity,new Page<LabelEntity>(request,response));
        model.addObject("page",page);
        return model;
    }
}
