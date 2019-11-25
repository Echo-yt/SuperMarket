<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>测试添加页面</title>
	<%@ include file="../../../common/jsp/header.jsp"%>
	<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
</head>
<body>
<div class="wrapper wrapper-content animated fadeInRight">
	<div>
		<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
	</div>
	<div class="ibox float-e-margins">
		<form action="${path }/procurement/save.do" method="post" class="form-horizontal" role="form">
			<fieldset>
				<legend>用户基本信息 </legend>

				<div class="form-group">
					<label class="col-sm-2 control-label" for="username">编号</label>
					<div class="col-sm-3">
						<input class="form-control" id="username"  name="procurementId" type="text" placeholder="填写用户名称"/>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label" for="username">供应商id</label>
					<div class="col-sm-3">
						<input class="form-control"  name="supplierId" type="text" placeholder="填写用户名称"/>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label" for="username">入库状态 </label>
					<div class="col-sm-3">
						<input class="form-control"  name="procurementInstate" type="text" placeholder="填写用户名称"/>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label" for="username">审核状态</label>
					<div class="col-sm-3">
						<input class="form-control"  name="procurementTostate" type="text" placeholder="填写用户名称"/>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label" for="username">采购人</label>
					<div class="col-sm-3">
						<input class="form-control" name="procurementName" type="text" placeholder="填写用户名称"/>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label" for="username">联系方式</label>
					<div class="col-sm-3">
						<input class="form-control"  name="procurementPhone" type="text" placeholder="填写用户名称"/>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label" for="username">备注</label>
					<div class="col-sm-3">
						<input class="form-control"  name="procurementDetail" type="text" placeholder="填写用户名称"/>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label" for="username">采购金额</label>
					<div class="col-sm-3">
						<input class="form-control" name="procurementMoney" type="text" placeholder="填写用户名称"/>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label" for="username">创建人</label>
					<div class="col-sm-3">
						<input class="form-control" name="procurementCreator" type="text" placeholder="填写用户名称"/>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label" for="username">创建时间</label>
					<div class="col-sm-3">
						<input class="form-control" type="date"  name="procurementCreatetime" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label" for="username">审核人</label>
					<div class="col-sm-3">
						<input class="form-control" name="procurementChecker" type="text" placeholder="填写用户名称"/>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label" for="username">审核时间</label>
					<div class="col-sm-3">
						<input class="form-control" name="procurementChecktime" type="text" placeholder="填写用户名称"/>
					</div>
				</div>
			</fieldset>

			<fieldset>
				<div class="form-group">
					<label class="col-sm-2 control-label" for="ds_host"></label>
					<div class="col-sm-4">
						<input type="submit" value="提交" class="btn btn-primary"/>
					</div>
					<label class="col-sm-2 control-label" for="ds_host"></label>
					<div class="col-sm-4">
						<input type="reset" value="重置" class="btn btn-danger" id="resetForm"/>
					</div>
				</div>
			</fieldset>
		</form>
	</div>
</div>
</body>
<script type="text/javascript" src="${path }/static/js/plugins/file-input/fileinput.min.js"></script>
<script type="text/javascript" src="./js/dictionary.js"></script>
</html>