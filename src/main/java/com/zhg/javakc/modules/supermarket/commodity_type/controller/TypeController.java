package com.zhg.javakc.modules.supermarket.commodity_type.controller;

import com.zhg.javakc.modules.supermarket.commodity_type.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.jws.WebParam;

/**
 * @author yang
 * @version v0.0.1
 * @date 2019/11/22 15:30
 */
@RequestMapping("commodityType")
public class TypeController {
    @Autowired
    TypeService typeService;
}
