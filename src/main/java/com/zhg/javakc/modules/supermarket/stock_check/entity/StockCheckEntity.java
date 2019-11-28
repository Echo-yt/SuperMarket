package com.zhg.javakc.modules.supermarket.stock_check.entity;

import com.zhg.javakc.base.entity.BaseEntity;
import lombok.Data;

import java.util.Date;

/**
 * @author lzj
 * @date 2019/11/22
 * @TIME 16:08
 */
@Data
public class StockCheckEntity extends BaseEntity <StockCheckEntity> {
    /**
     * id
     */
    private String checkId;

    /**
     * 状态 0：待确认 1：待审核 2：已完成
     */
    private Integer checkState;

    /**
     * 经办人
     */
    private String checkOperator;

    /**
     * 备注   CHECK_REMARK
     * base      remarks
     */
    private String checkRemark;

    /**
     * 创建人    CHECK_CREATOR
     * base     createUser
     */
    private String checkCreator;

    /**
     * 创建时间   CHECK_CREATETIME
     * base    createDate
     */
    private Date checkCreateTime;

    /**
     * 审核人   CHECK_CHECKER
     * base     updateUser
     */
    private String checkChecker;

    /**
     * 审核时间    CHECK_CHECKTIME
     * base        updateDate
     */
    private Date checkCheckTime;

    /**
     * 出库方式
     */
    private String checkOutputStyle;


}
