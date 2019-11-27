package com.zhg.javakc.modules.supermarket.commodity_image.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.supermarket.commodity_image.entity.ImageEntity;
import com.zhg.javakc.modules.supermarket.commodity_image.service.ImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
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
 * @date 2019/11/22 15:26
 */
@Controller
@RequestMapping("/supermarket")
public class ImageController {
    @Autowired
    private ImageService imageService;

    @RequestMapping("/image/queryImage")
    public ModelAndView queryTest (ImageEntity imageEntity, HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView=new ModelAndView("test/list");
        Page<ImageEntity> page=imageService.queryTest(imageEntity,new Page<ImageEntity>(request,response));
        modelAndView.addObject("page",page);
        return modelAndView;
    }

    @RequestMapping("/image/create")
    public String create(@RequestBody ImageEntity imageEntity){
        imageEntity.setImageId(CommonUtil.uuid());
        imageService.save(imageEntity);
        return "redirect:queryTest.do";
    }

    @RequestMapping("/image/view")
    public String view(String ids, ModelMap modelMap){
        ImageEntity imageEntity=imageService.get(ids);
        modelMap.put("imageEntity",imageEntity);
        return "test/update";
    }

    @RequestMapping("/image/update")
    public String update(ImageEntity imageEntity){
        imageService.update(imageEntity);
        return "redirect:queryTest.do";
    }

    @RequestMapping("/image/delete")
    public String delete(String ids[]){
        imageService.delete(ids);
        return "redirect:queryTest.do";
    }

    @PostMapping("image/photo")
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
