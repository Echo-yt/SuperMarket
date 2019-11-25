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


		<div class="row">

			<div class="form-group">

				<div class="col-md-4">
					<div class="form-group">
						<label class="col-sm-3 control-label" for="rolename">角色名称</label>
						<div class="col-sm-6">
							<input class="form-control" id="rolen" name="roleName" type="text" placeholder="填写角色名称"/>

						</div>


					</div>

				</div>



				<div class="col-md-4">
					<div class="form-group">
						<label class="col-sm-3 control-label" for="rolename">角色名称</label>
						<div class="col-sm-6">
							<input class="form-control" id="rolename" name="roleName" type="text" placeholder="填写角色名称"/>

						</div>


					</div>

				</div>


			</div>

		</div>
		<div class="ibox float-e-margins">
			<form action="${path }/role/create.do" method="post" enctype="multipart/form-data"
				  class="form-horizontal" role="form">
				<fieldset>
					<legend>角色基本信息</legend>

				</fieldset>

			</form>
		</div>
	</div>

	<div class="container">




		<table class="table table-bordered ">
			<thead>
			<tr class="active">
				<td>名字</td>
				<td>名字</td>
				<td>名字</td>

			</tr>
			</thead>

			<tbody>
			<tr>
				<td>内容</td>
				<td>内容</td>
				<td>内容</td>


			</tr>

			<tr>
				<td>内容</td>
				<td>内容</td>
				<td>内容</td>


			</tr>

			<tr>
				<td>内容</td>
				<td>内容</td>
				<td>内容</td>


			</tr>
			</tbody>
		</table>


	</div>

	<fieldset>
		<div class="form-group">
			<label class="col-sm-2 control-label"></label>
			<div class="col-sm-4">
				<input type="submit" value="提交" class="btn btn-primary"/>
			</div>

		</div>
	</fieldset>


	</body>
	<script type="text/javascript" src="${path }/static/js/plugins/treegrid/jquery.treegrid.min.js"></script>
	<script type="text/javascript" src="${path }/static/js/plugins/treegrid/jquery.treegrid.bootstrap3.js"></script>
	<script type="text/javascript" src="${path }/view/system/role/js/role.js"></script>
</html>