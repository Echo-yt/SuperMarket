package com.zhg.javakc.modules.supermarket.stock_detail.entity;

import com.zhg.javakc.base.entity.BaseEntity;
import lombok.Data;

import java.util.Date;

/**
 * @author lzj
 * @date 2019/11/25
 * @TIME 17:57
 */
@Data
public class StockDetailEntity extends BaseEntity<StockDetailEntity> {
    /**
     * ENTRY_ID
     */
    private String entryId;
    /**
     * ENTRY_STATE
     * 状态 0：待确认 1：待入库 2：已完成
     */
    private String entryState;
    /**
     * ENTRY_TYPE
     * 出入库类型 0:采购入库  1：盘盈入库  2：其他入库 3,销售出库 4,盘亏出库 5,赠品出库  6,其他出库
     */
    private String entryType;
    /**
     * ENTRY_OPERATOR
     * 经办人
     */
    private  String entryOperator;
    /**
     * ENTRY_REMARK
     * 备注
     */
    private String entryRemary;
    /**
     * ENTRY_CREATOR
     * 创建人
     */
    private String entryCreator;
    /**
     * ENTRY_CREATETIME
     * 创建时间
     */
    private Date entryCreateTime;
    /**
     * ENTRY_CHECKER
     * 审核人
     */
    private String entryChecker;
    /**
     * ENTRY_CHECKTIME
     * 审核时间
     */
    private Date entryCheckTime;
    /**
     *EMTRY_INOUT
     * 入库/出库
     */
    private String entryInout;
    /**
     * PROCUREMENT_ID
     * 入库源单据号(采购单号)
     */
    private String procurementId;
    /**
     * ORDER_ID
     * 出库源单据号(订单编号)
     */
    private String orderId;
}
