<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>供应商添加页面</title>
		<%@ include file="../../common/jsp/header.jsp"%>
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
                        <legend>供应商基本信息</legend>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_host">名称</label>
                          <div class="col-sm-4">
                             <input class="form-control" type="text" name="supplierName" />
                          </div>
                       </div>

						<div class="form-group">
							<label class="col-sm-2 control-label" for="ds_name">联系人1</label>
						 	<div class="col-sm-4">
								<input class="form-control" type="text" name="supplierContact1" />
							</div>
						</div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="ds_name">联系人1电话</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="supplierPhone1" />
                            </div>
                        </div>

						<div class="form-group">
							<label class="col-sm-2 control-label" for="ds_name">联系人2</label>
							<div class="col-sm-4">
								<input class="form-control" type="text" name="supplierContact2" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label" for="ds_name">联系人2电话</label>
							<div class="col-sm-4">
								<input class="form-control" type="text" name="supplierPhone2" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label" for="ds_name">地区</label>
							<div class="col-sm-4">
								<input class="form-control" type="text" name="supplierAddress" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label" for="ds_name">详细地址</label>
							<div class="col-sm-4">
								<input class="form-control" type="text" name="supplierdetailAddress" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label" for="ds_name">备注</label>
							<div class="col-sm-4">
								<input class="form-control" type="text" name="supplierDetail" />
							</div>
						</div>

                    </fieldset>
                    <fieldset>
                        <div class="form-group">
                        	<label class="col-sm-2 control-label" for="ds_host"></label>
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