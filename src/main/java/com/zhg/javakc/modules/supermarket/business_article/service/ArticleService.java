package com.zhg.javakc.modules.supermarket.business_article.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.supermarket.business_article.dao.ArticleDao;
import com.zhg.javakc.modules.supermarket.business_article.entity.ArticleEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.FileCopyUtils;
import org.springframework.util.ResourceUtils;

import java.io.File;
import java.util.List;

/**
 * @author yang
 * @version v0.0.1
 * @date 2019/11/22 15:26
 */
@Service
public class ArticleService extends BaseService<ArticleDao, ArticleEntity> {
    @Autowired
    private ArticleDao articleDao;

    /**
     * @param entity
     * @param page
     * @return
     */
    public Page<ArticleEntity> queryTest(ArticleEntity entity, Page<ArticleEntity> page) {
        //设置分页参数，才会被Mybatis分页插件所识别，拦截SQL，再其SQL的前后加入分页SQL语句
        entity.setPage(page);
        //根据分页与查询条件进行测试数据的查询
        List<ArticleEntity> list = articleDao.findList(entity);
        //将查询数据设置到分页类的List集合当中，一起返回
        page.setList(list);

        return page;
    }

    @Transactional(readOnly = false)
    public void save(ArticleEntity entity) {
        try {
            //获取文件存储路径
            String path = ResourceUtils.getURL("classpath:").getPath();
            File file = new File(path + File.separator + entity.getArticleImage());
            //文件转byte[]
            byte[] photo = FileCopyUtils.copyToByteArray(file);
            //准备执行文件存储
            entity.setArticleImage(photo);
            //删除临时文件
            file.delete();
        } catch (Exception e) {
            e.printStackTrace();
        }
        dao.insert(entity);
    }


}