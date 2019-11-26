<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>角色添加页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/treegrid/jquery.treegrid.css" rel="stylesheet">
		<link href="../../../static/css/bootstrap.min.css" rel="stylesheet">

		<style type="text/css">
			[class*="col-md"]{
				padding-top:15px;
				padding-bottom:15px;


			}

		</style>
	</head>
	<body>
	 <div class="wrapper wrapper-content animated fadeInRight">
		 <form action="${path }/procurement/save.do" method="post" class="form-horizontal" role="form">

			 <div class="row">

				 <div class="form-group">

					 <div class="col-md-6">
						 <div class="form-group">
							 <label class="col-sm-3 control-label" >采购单编号:</label>
							 <div class="col-sm-5">
								 <input class="form-control" id="procurementId" name="procurementId" type="text" value=""/>
							 </div>
						 </div>
					 </div>

					 <div class="col-md-6">
						 <div class="form-group">
							 <label class="col-sm-3 control-label" >入库状态：</label>
							 <div class="col-sm-5">
								 <input class="form-control"  name="procurementInstate" type="text" placeholder=""/>
							 </div>
						 </div>
					 </div>

					 <div class="form-group">

						 <div class="col-md-6">
							 <div class="form-group">
								 <label class="col-sm-3 control-label" >供应商：</label>
								 <div class="col-sm-5">
									 <input class="form-control"  name="supplierId" type="text" placeholder=""/>
								 </div>
							 </div>
						 </div>

						 <div class="col-md-6">
							 <div class="form-group">
								 <label class="col-sm-3 control-label" >采购人：</label>
								 <div class="col-sm-5">
									 <input class="form-control"  name="procurementName" type="text" placeholder=""/>
								 </div>
							 </div>
						 </div>


						 <div class="form-group">

							 <div class="col-md-6">
								 <div class="form-group">
									 <label class="col-sm-3 control-label" >联系方式：</label>
									 <div class="col-sm-5">
										 <input class="form-control"  name="procurementPhone" type="text" placeholder=""/>
									 </div>
								 </div>
							 </div>

							 <div class="col-md-6">
								 <div class="form-group">
									 <label class="col-sm-3 control-label" >备注：</label>
									 <div class="col-sm-5">
										 <input class="form-control"  name="procurementDetail" type="text" placeholder=""/>
									 </div>
								 </div>
							 </div>


						 </div>


					 </div>
				 </div>
			 </div>


			 <div class="ibox float-e-margins">


					 <fieldset>
						 <legend>商品详情</legend>

					 </fieldset>


			 </div>


			 <div class="container">




				 <table class="table table-bordered ">
					 <thead>
					 <tr class="active">
						 <td>序号</td>
						 <td>商品名称</td>
						 <td>商品编号</td>
						 <td>单位</td>
						 <td>采购数量</td>
						 <td>采购单价</td>
						 <td>折扣率</td>
						 <td>金额小计</td>


					 </tr>
					 </thead>

					 <tbody>

					 <tr>
						 <td>内容</td>
						 <td>内容</td>
						 <td>内容</td>
						 <td>内容</td>
						 <td>内容</td>
						 <td>内容</td>
						 <td>内容</td>
						 <td>内容</td>
					 </tr>

					 <tr>
						 <td>内容</td>
						 <td>内容</td>
						 <td>内容</td>
						 <td>内容</td>
						 <td>内容</td>
						 <td>内容</td>
						 <td>内容</td>
						 <td>内容</td>
					 </tr>

					 <tr>
						 <td>内容</td>
						 <td>内容</td>
						 <td>内容</td>
						 <td>内容</td>
						 <td>内容</td>
						 <td>内容</td>
						 <td>内容</td>
						 <td>内容</td>
					 </tr>



					 </tbody>
				 </table>


			 </div>

			 <div class="row">


				 <div class="form-group">

					 <div class="col-md-3">
						 <div class="form-group">
							 <label class="col-sm-3 control-label" >创建人</label>
							 <div class="col-sm-5">
								 <input class="form-control"  name="procurementCreator" type="text" placeholder=""/>
							 </div>
						 </div>
					 </div>

					 <div class="col-md-3">
						 <div class="form-group">
							 <label class="col-sm-3 control-label" >创建时间</label>
							 <div class="col-sm-5">
								 <input class="form-control"  name="procurementCreatetime" type="date" placeholder=""/>
							 </div>
						 </div>
					 </div>

					 <div class="col-md-3">
						 <div class="form-group">
							 <label class="col-sm-3 control-label" >审核人</label>
							 <div class="col-sm-5">
								 <input class="form-control"  name="procurementChecker" type="text" placeholder=""/>
							 </div>
						 </div>
					 </div>

					 <div class="col-md-3">
						 <div class="form-group">
							 <label class="col-sm-3 control-label" >审核时间</label>
							 <div class="col-sm-5">
								 <input class="form-control"  name="procurementChecktime" type="text" placeholder=""/>
							 </div>
						 </div>
					 </div>
				 </div>

			 </div>


			 <fieldset>


				 <div class="form-group">
					 <label class="col-sm-10 control-label"></label>
					 <div class="col-sm-2">
						 <input type="submit" value="提交" class="btn btn-primary"/>

					 </div>

				 </div>

			 </fieldset>











		 </form>










	 </div>
	</body>


	<script type="text/javascript" src="${path }/static/js/plugins/treegrid/jquery.treegrid.min.js"></script>
	<script type="text/javascript" src="${path }/static/js/plugins/treegrid/jquery.treegrid.bootstrap3.js"></script>
	<script type="text/javascript" src="${path }/view/system/role/js/role.js"></script>
</html>