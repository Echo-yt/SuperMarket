package com.zhg.javakc.modules.supermarket.commodity_image.entity;

import com.zhg.javakc.base.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;

/**
 * @author yang
 * @version v0.0.1
 * @date 2019/11/22 15:44
 */
@Setter
@Getter
public class ImageEntity extends BaseEntity<ImageEntity> {

    /**
     * 图片编号
     */
    private String imageId;

    /**
     * 图片名称
     */
    private String imageName;

    /**
     * 图片
     */
    private byte[] image;

    /**
     * 外键：商品id
     */
    private String commodityId;
}
