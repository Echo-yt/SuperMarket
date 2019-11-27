package com.zhg.javakc.modules.supermarket.procurement.entity;


import com.fasterxml.jackson.annotation.JsonFormat;
import com.zhg.javakc.base.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;



/*采购表*/
@Setter
@Getter
public class ProcurementEntity extends BaseEntity<ProcurementEntity> {

    /*采购单编号*/
    private String procurementId;

    /*供应商id*/
    private String supplierId;

    /*入库状态*/
    private int procurementInstate;

    /*审核状态*/
    private int procurementTostate;

    /*采购人姓名*/
    private String procurementName;

    /*采购人联系方式*/
    private String procurementPhone;

    /*备注*/
    private String procurementDetail ;

    /*采购金额*/
    private int procurementMoney;

    /*创建人*/
    private String procurementCreator;

    /*创建时间*/

    private Date procurementCreatetime;

    /*审核人*/
    private String procurementChecker;

    /*审核时间*/
    private String procurementChecktime;


    /*搜索开始时间*/

    private Date startTime;


    /*搜索截至时间*/

    private Date endTime;
}
