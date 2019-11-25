package com.zhg.javakc.modules.test.entity;

import com.zhg.javakc.base.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

/**
 * @author yang
 * @version v0.0.1
 * @date 2019/11/19 12:36
 */
@Getter
@Setter
public class TestEntity extends BaseEntity<TestEntity> {

    private String testId;
    private String testName;
    private String testSex;
    private Date testDate;
}
