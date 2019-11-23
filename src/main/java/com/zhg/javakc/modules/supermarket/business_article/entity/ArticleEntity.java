package com.zhg.javakc.modules.supermarket.business_article.entity;

import com.zhg.javakc.base.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;

/**
 * @author yang
 * @version v0.0.1
 * @date 2019/11/22 15:43
 */
@Setter
@Getter
public class ArticleEntity extends BaseEntity<ArticleEntity> {
    /**
     * 'id'
     */
    private String articleId;

    /**
     * '标题'
     */
    private String articleName;

    /**
     * '分组'
     */
    private String articleGroup;

    /**
     * '状态 0:已上架 1：未上架 2：待上架'
     */
    private int articleState;

    /**
     * '入口图片'
     */
    private byte[] articleImage;

    /**
     * '简介'
     */
    private String articleDescript;

    /**
     * ' 是否推荐 0：推荐 1：不推荐'
     */
    private int articleRecomme;

    /**
     * '详情'
     */
    private String articleDetail;

    /**
     * 外键：商品'编号'
     */
    private String commodityId;

}
