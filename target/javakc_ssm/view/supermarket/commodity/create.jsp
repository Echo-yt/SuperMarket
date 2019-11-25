<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>添加商品</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
	</head>
	<body>
	<form class="form-inline" action="${path }/supermarket/create.do" method="post" enctype="multipart/form-data"
		  class="form-horizontal" role="form">
        <div >
            <h2 class="offset2">基本信息</h2>
            <div class="form-group col-sm-6">
                <label class="col-sm-4 control-label" for="commodityName">商品名称：</label>
                <input type="text" class="col-sm-8 form-control" id="commodityName" name="commodityName">
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-4 control-label" for="typeFirst">商品分类：</label>
                <input class="form-control col-sm-4" type="text"  id="typeFirst" name="firstName">
                <input class="form-control col-sm-4" type="text"  id="typeSecond" name="typeSecond">
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-4 control-label" for="commodityId">商品编号：</label>
                <input type="text" class="col-sm-8 form-control" id="commodityId" name="commodityId">
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-4 control-label" for="commodityRprice">参考价：</label>
                <input type="text" class="col-sm-8 form-control" id="commodityRprice" name="commodityRprice">
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-4 control-label" for="commodityPrice">销售价：</label>
                <input type="text" class="col-sm-8 form-control" id="commodityPrice" name="commodityPrice">
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-4 control-label" for="commodityCprice">成本价：</label>
                <input type="text" class="col-sm-8 form-control" id="commodityCprice" name="commodityCprice">
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-4 control-label" for="commodityDetail">商品简介：</label>
                <input type="text" class="col-sm-8 form-control" id="commodityDetail" name="commodityDetail">
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-4 control-label" for="commoditySafeStock">安全库存：</label>
                <input type="text" class="col-sm-8 form-control" id="commoditySafeStock" name="commodityKeyword">
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-4 control-label" for="commodityKeyword">关键字搜索：</label>
                <input type="text" class="col-sm-8 form-control" id="commodityKeyword" name="commodityKeyword">
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-4 control-label" for="commoditySupport">退换货：</label>
                <input type="radio" class="col-sm-4 form-control" id="commoditySupport" value="0" name="commodityKeyword"/>支持
                <input type="radio" class="col-sm-4 form-control" value="1" name="commodityKeyword">不支持
            </div>
        </div>
		<div>
            <h2>商品属性</h2>
            <div class="form-group col-sm-6">
                <label class="col-sm-4 control-label" for="supplierId">供应商：</label>
                <input type="text" class="col-sm-8 form-control" id="supplierId" name="supplierId">
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-4 control-label" for="commodityStorage">存储条件：</label>
                <input type="text" class="col-sm-8 form-control" id="commodityStorage" name="commodityStorage">
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-4 control-label" for="commodityBrand">商品品牌：</label>
                <input type="text" class="col-sm-8 form-control" id="commodityBrand" name="commodityBrand">
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-4 control-label" for="commodityQuality">保质期：</label>
                <input type="text" class="col-sm-8 form-control" id="commodityQuality" name="commodityQuality">
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-4 control-label" for="commodityPlace">产地：</label>
                <input type="text" class="col-sm-8 form-control" id="commodityPlace" name="commodityPlace">
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-4 control-label" for="commodityPackage">包装：</label>
                <input type="text" class="col-sm-8 form-control" id="commodityPackage" name="commodityPackage">
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-4 control-label" for="commodityWater">水体：</label>
                <input type="text" class="col-sm-8 form-control" id="commodityWater" name="commodityWater">
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-4 control-label" for="commodityCompany">单位：</label>
                <input type="text" class="col-sm-8 form-control" id="commodityCompany" name="commodityCompany">
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-4 control-label" for="commodityContent">净含量：</label>
                <input type="text" class="col-sm-8 form-control" id="commodityContent" name="commodityContent">
            </div>
        </div>
        <div class="col-sm-10">
            <h2 class="offset2">图片</h2>
        </div>
        <div class="col-sm-10">
            <h2 class="offset2">文章</h2>
        </div>

		<div class="col-sm-4">
			<input type="submit" value="提交" class="btn btn-primary"/>
		</div>
		<label class="col-sm-2 control-label"></label>
		<div class="col-sm-4">
			<input type="reset" value="重置" class="btn btn-danger"/>
		</div>
	</form>
	</body>
	<script type="text/javascript" src="${path }/view/system/user/js/user.js"></script>
</html>