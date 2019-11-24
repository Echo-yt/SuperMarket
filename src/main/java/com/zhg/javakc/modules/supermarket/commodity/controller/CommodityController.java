package com.zhg.javakc.modules.supermarket.commodity.controller;

import com.zhg.javakc.base.page.Page;
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
public class CommodityController {
    @Autowired
    CommodityService commodityService;

    /**
     * 增加商品
     */
    @RequestMapping("add")
    public String add(CommodityEntity entity) {
        return "supermarket/commodity/create";
    }

    @RequestMapping("create")
    public String create(CommodityEntity entity) {
        commodityService.save(entity);
        return "redirect:/supermarket/query.do";
    }

    /**
     * 查询
     */
    @RequestMapping("query")
    public String query(CommodityEntity entity, ModelMap model,
                        HttpServletRequest request, HttpServletResponse response) throws Exception {
        Page page = commodityService.findCommodity(new Page<CommodityEntity>(request, response), entity);
        model.put("page", page);
        model.put("commodityEntity", entity);
        return "supermarket/commodity/list";
    }
    /**
     * 根据id查询
     */
    @RequestMapping("queryById")
    public String queryById(String ids,ModelMap modelMap){
       modelMap.put("entity",commodityService.get(ids));
        return "supermarket/commodity/update";
    }
    /**
 * 更新
 */
    @RequestMapping("update")
public String update(CommodityEntity entity){
    commodityService.update(entity);
    return "redirect:/supermarket/query.do";
    }
    /**
     * 删除
     */
    @RequestMapping("delete")
    public String delete(String [] ids){
        commodityService.delete(ids);
        return "redirect:/supermarket/query.do";
    }
}
