package com.zhg.javakc.modules.supermarket.commodity.entity;

import com.zhg.javakc.base.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class CommodityEntity extends BaseEntity<CommodityEntity> {
    //商品id
  String commodityId;
  //商品名字
  String commodityName;
  //商品销售价格
    String commodityPrice ;
    //商品简介
   String commodityDetail;
   //关键字
   String commodityKeyword ;
   //参考价
   double commodityRprice;
   //成本价
   double commodityCprice ;
   //是否支持退货
    Integer commoditySupport;
    //供应商id
   String supplierId ;
   //品牌
   String commodityBrand;
   //产地
    String commodityPlace;
    //水体
   String commodityWater;
    //净含量
  Integer  commodityContent ;
  //存储条件
  String  commodityStorage;
  //保质期
   Integer commodityQuality;
   //包装
    String commodityPackage;
    //单位
    String commodityCompany;
    //文章id
    String articleId;
    //一级分类
    String typeFirst;
    //二级分类
   String typeSecond ;
   //状态 0:未上架 1：已上架 2：已下架 3：删除 进入回收站
    Integer commodityState;
    //安全库存
    Integer commoditySafeStock;
}
