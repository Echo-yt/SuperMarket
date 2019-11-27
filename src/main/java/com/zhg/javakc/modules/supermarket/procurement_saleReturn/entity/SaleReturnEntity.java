package com.zhg.javakc.modules.supermarket.procurement_saleReturn.entity;

import com.zhg.javakc.base.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter

public class SaleReturnEntity extends BaseEntity<SaleReturnEntity> {

    /*序号*/
    private String salesReturnId;
    /*出库状态*/
    private int salesReturnOutstate;
    /*审核状态*/
    private int salesReturnTostate;
    /*采购单ID*/
    private String procurementId;
    /*供应商ID*/
    private String supplierId;
    /*退货金额*/
    private int salesReturnMoney;
    /*退货原因*/
    private String salesReturnReason;
    /*备注*/
    private String salesReturnDetail;
    /*创建人*/
    private String salesReturnCreate;
    /*创建时间*/
    private Date salesReturnCreatetime;
    /*审核人*/
    private String salesReturnChecker;
    /*审核时间*/
    private Date salesReturnChecktime;

}
