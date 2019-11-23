package com.zhg.javakc.modules.supermarket.business_article.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.supermarket.business_article.entity.ArticleEntity;
import com.zhg.javakc.modules.supermarket.business_article.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.UUID;

/**
 * @author yang
 * @version v0.0.1
 * @date 2019/11/22 15:25
 */
@Controller
@RequestMapping("supermarket")
public class ArticleController {
    @Autowired
    private ArticleService articleService;

    @RequestMapping("article")
    public ModelAndView queryTest (ArticleEntity entity, HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView=new ModelAndView("supermarket/business_article/list");
        Page<ArticleEntity> page=articleService.queryTest(entity,new Page<ArticleEntity>(request,response));
        modelAndView.addObject("page",page);
        return modelAndView;
    }

    @RequestMapping("article/create")
    public String create(ArticleEntity entity){
        entity.setArticleId(CommonUtil.uuid());
        articleService.save(entity);
        return "redirect:/supermarket/article.do";
    }

    @RequestMapping("article/view")
    public String view(String ids, ModelMap modelMap){
        ArticleEntity entity=articleService.get(ids);
        modelMap.put("entity",entity);
        return "supermarket/business_article/update";
    }

    @RequestMapping("article/update")
    public String update(ArticleEntity entity){
        articleService.update(entity);
        return "redirect:/supermarket/article.do";
    }

    @RequestMapping("article/delete")
    public String delete(String ids[]){
        articleService.delete(ids);
        return "redirect:/supermarket/article.do";
    }

    @PostMapping("article/photo")
    public String photo(@RequestParam("photo") MultipartFile photo)
    {
        String name = UUID.randomUUID().toString();
        try {
            String path = ResourceUtils.getURL("classpath:").getPath();
            File photoFile = new File(path + File.separator + name);
            photo.transferTo(photoFile);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return name;
    }
}
