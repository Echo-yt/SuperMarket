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
		<div class="form-group">
			<label for="commodityName">商品名称：</label>
			<input type="text" class="form-control" id="commodityName" name="commodityName">
		</div>
		<div class="form-group">
			<label for="firstName">商品分类：</label>
			<input type="text" class="form-control" id="firstName" name="firstName">
		</div>
		<div class="form-group">
			<label for="commodityId">商品编号：</label>
			<input type="text" class="form-control" id="commodityId" name="commodityId">
		</div>
		<div class="form-group">
			<label for="commodityRprice">参考价：</label>
			<input type="text" class="form-control" id="commodityRprice" placeholder="jane.doe@example.com">
		</div>
		<div class="form-group">
			<label for="commodityPrice">销售价：</label>
			<input type="text" class="form-control" id="commodityPrice" placeholder="jane.doe@example.com">
		</div>
		<div class="form-group">
			<label for="commodityCprice">成本价：</label>
			<input type="text" class="form-control" id="commodityCprice" placeholder="jane.doe@example.com">
		</div>
		<div class="form-group">
			<label for="commodityDetail">商品简介：</label>
			<input type="text" class="form-control" id="commodityDetail" placeholder="jane.doe@example.com">
		</div>
		<div class="form-group">
			<label for="commodityKeyword">关键字：</label>
			<input type="text" class="form-control" id="commodityKeyword" placeholder="jane.doe@example.com">
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