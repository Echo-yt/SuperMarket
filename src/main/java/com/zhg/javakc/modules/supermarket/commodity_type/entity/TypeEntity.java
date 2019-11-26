package com.zhg.javakc.modules.supermarket.commodity_type.entity;

import com.zhg.javakc.base.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Controller;

/**
 * @author yang
 * @version v0.0.1
 * @date 2019/11/22 15:46
 */
@Getter
@Setter
@Controller
public class TypeEntity extends BaseEntity<TypeEntity> {
    private String typeFirst;
    private String typeSecond;
}
