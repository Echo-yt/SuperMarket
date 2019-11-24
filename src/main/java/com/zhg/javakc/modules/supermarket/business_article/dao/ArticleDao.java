package com.zhg.javakc.modules.supermarket.business_article.dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.modules.supermarket.business_article.entity.ArticleEntity;

/**
 * @author yang
 * @version v0.0.1
 * @date 2019/11/22 15:26
 */
public interface ArticleDao extends BaseDao<ArticleEntity> {

    public void upstate(String id);
}
