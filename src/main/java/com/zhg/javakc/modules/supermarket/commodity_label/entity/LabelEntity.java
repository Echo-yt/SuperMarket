package com.zhg.javakc.modules.supermarket.commodity_label.entity;

import com.zhg.javakc.base.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;

/**
 * @author yang
 * @version v0.0.1
 * @date 2019/11/22 15:42
 */
@Getter
@Setter
public class LabelEntity extends BaseEntity<LabelEntity> {

    /**
     * LABEL_ID
     */
    private String labelId;
    /**
     * LABEL_NAME
     */
    private String labelName;
    /**
     * LABEL_DESCRIPT
     */
    private String labelDescript;

}
