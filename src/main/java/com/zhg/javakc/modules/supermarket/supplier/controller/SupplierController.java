package com.zhg.javakc.modules.supermarket.supplier.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.supermarket.supplier.entity.SupplierEntity;
import com.zhg.javakc.modules.supermarket.supplier.service.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/procurement")
public class SupplierController {
    @Autowired
    SupplierService supplierService;

    @RequestMapping("/querySupplier")
    public ModelAndView querySupplier(SupplierEntity supplierEntity, HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView = new ModelAndView("supplier/list");
        Page<SupplierEntity> page = supplierService.querySupplier(supplierEntity,new Page<SupplierEntity>(request,response));
        modelAndView.addObject("page",page);
        return modelAndView;
    }

    @RequestMapping("/save")
    public String save(SupplierEntity supplierEntity){
        supplierEntity.setSupplierId(CommonUtil.uuid());
        supplierService.save(supplierEntity);
        return "redirect:querySupplier.do";
    }

    @RequestMapping("/view")
    public String view(String ids, ModelMap modelMap){
        SupplierEntity supplierEntity = supplierService.get(ids);
        modelMap.put("supplierEntity",supplierEntity);
        return "supplier/update";
    }

    @RequestMapping("/update")
    public String update(SupplierEntity supplierEntity){
        supplierService.update(supplierEntity);
        return "redirect:querySupplier.do";
    }

    @RequestMapping("/delete")
    public String delete(String[] ids){
        supplierService.delete(ids);
        return "redirect:querySupplier.do";
    }

}
