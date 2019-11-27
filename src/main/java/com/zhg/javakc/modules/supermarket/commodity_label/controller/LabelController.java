package com.zhg.javakc.modules.supermarket.commodity_label.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.supermarket.commodity_label.entity.LabelEntity;
import com.zhg.javakc.modules.supermarket.commodity_label.service.LabelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
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

    @RequestMapping("/label")
    public ModelAndView query(LabelEntity entity, HttpServletRequest request, HttpServletResponse response){
        ModelAndView model = new ModelAndView("supermarket/commodity_label/list");
        Page<LabelEntity> page =labelService.queryTest(entity,new Page<LabelEntity>(request,response));
        model.addObject("page",page);
        return model;
    }

    @RequestMapping("/label/insert")
    public String insert(LabelEntity entity){
        entity.setLabelId(CommonUtil.uuid());
        labelService.save(entity);
        return "redirect:/supermarket/label.do";
    }

    @RequestMapping("/label/view")
    public String view(String ids,ModelMap modelMap){
        LabelEntity entity=labelService.get(ids);
        modelMap.put("entity",entity);
        return "supermarket/commodity_label/update";
    }

    @RequestMapping("/label/update")
    public String update(LabelEntity entity){
        labelService.update(entity);
        return "redirect:/supermarket/label.do";
    }

    @RequestMapping("/label/deleteAll")
    public String deleteAll(String[] ids){
        labelService.delete(ids);
        return "redirect:/supermarket/label.do";
    }

    @RequestMapping("/label/delete")
    public String delete(String id){
        String[] ids=new String[1];
        ids[0]=id;
        labelService.delete(ids);
        return "redirect:/supermarket/label.do";
    }
}
