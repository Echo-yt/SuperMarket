<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>采购退货单添加页面</title>
		<%@ include file="../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/procurements/save.do" method="post" class="form-horizontal" role="form">
                    <fieldset>
                        <legend>采购退货单基本信息</legend>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_host">关联采购单编号</label>
                          <div class="col-sm-4">
                             <input class="form-control" type="text" name="procurementId" />
                          </div>
						    <label class="col-sm-1 control-label" for="ds_name">审核状态</label>
						 	<div class="col-sm-4">
								<input class="form-control" type="text" value="待审核" readonly />
							</div>
						</div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="ds_name">出库状态</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="salesReturnOutstate" />
                            </div>
							<label class="col-sm-1 control-label" for="ds_name">供应商</label>
							<div class="col-sm-4">
								<input class="form-control" type="text" name="supplierId" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label" for="ds_name">退货原因</label>
							<div class="col-sm-4">
								<input class="form-control" type="text" name="salesReturnReason" />
							</div>
							<label class="col-sm-1 control-label" for="ds_name">退货金额</label>
							<div class="col-sm-4">
								<input class="form-control" type="text" name="salesReturnMoney" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label" for="ds_name">备注</label>
							<div class="col-sm-4">
								<input class="form-control" type="text" name="salesReturnDetail" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label" for="ds_name">创建人</label>
							<div class="col-sm-4">
								<input class="form-control" type="text" name="salesReturnCreate" />
							</div>
							<label class="col-sm-1 control-label" for="ds_name">创建时间</label>
							<div class="col-sm-4">
								<input class="form-control" type="date" name="salesReturnCreatetime" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label" for="ds_name">审核人</label>
							<div class="col-sm-4">
								<input class="form-control" type="text" name="salesReturnChecker" />
							</div>
							<label class="col-sm-1 control-label" for="ds_name">审核时间</label>
							<div class="col-sm-4">
								<input class="form-control" type="date" name="salesReturnChecktime" />
							</div>
						</div>

                    </fieldset>
                    <fieldset>
                        <div class="form-group">
                        	<label class="col-sm-5 control-label" for="ds_host"></label>
                           	<div class="col-sm-4">
                              	<input type="submit" value="提交" class="btn btn-primary"/>
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