package com.zhg.javakc.modules.supermarket.supplier.entity;

import com.zhg.javakc.base.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class SupplierEntity extends BaseEntity<SupplierEntity> {

    /*序号*/
    private String supplierId;
    /*供应商名称*/
    private String supplierName;
    /*描述*/
    private String supplierDetail;
    /*地址*/
    private String supplierAddress;
    /*联系人1*/
    private String supplierContact1;
    /*联系电话1*/
    private String supplierPhone1;
    /*联系人2*/
    private String supplierContact2;
    /*联系电话2*/
    private String supplierPhone2;
    /*详细地址*/
    private String supplierdetailAddress;

}
