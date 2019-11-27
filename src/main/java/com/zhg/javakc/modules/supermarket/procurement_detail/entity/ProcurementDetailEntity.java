package com.zhg.javakc.modules.supermarket.procurement_detail.entity;


import lombok.Getter;
import lombok.Setter;


/*采购详情表*/
@Setter
@Getter
public class ProcurementDetailEntity {

    /*商品编号*/
    private String procurementdetailId;

    /*商品名称*/
    private String procurementdetailName;

    /*采购单编号*/
    private String procurementId;

    /*采购数量*/
    private int procurementdetailCount;

  /**/


}
