<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>供应商展示列表页面</title>
		<%@ include file="../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
				<div class="col-sm-12">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">供应商详细信息</div>
	                <div class="col-sm-8">
	                	<div class="btn-group hidden-xs" role="group">
                			<button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="supplier/create.jsp">
	                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
	                        </button>
	                        <button type="button" class="btn btn-success" data-toggle="modal" id="update" name="procurement/view.do">
	                            <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>编辑
	                        </button>

	                        <button type="button" class="btn btn-danger" data-toggle="modal" id="delete" name="procurement/delete.do">
	                            <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
	                        </button>
		                 </div>
	                </div>
	                <div class="col-sm-4">
	                	<input class="form-control" id="search" name="supplierName" value="${supplierEntity.supplierName }" type="text" placeholder="查询内容 回车搜索"/>
	                </div>
	                 <!-- ------------按钮组 end------------ -->
						<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
						<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		                 <table class="table table-striped table-bordered table-hover table-condensed">
					        <thead>
					            <tr>
					                <th><input type="checkbox" id="checkall"/></th>
					                <th>序号</th>
					                <th>供应商名称</th>
					                <th>描述</th>
									<th>地址</th>
									<th>联系人</th>
									<th>联系电话</th>
									<th>操作</th>
					            </tr>
					        </thead>
					        <tbody>
					        	<c:set var="vs"></c:set>
					        	<c:forEach var="e" items="${page.list }" varStatus="v">
						            <tr>
						                <td><input type="checkbox" name="ids" value="${e.supplierId }"/></td>
										<td>${e.supplierId }</td>
						                <td>${e.supplierName }</td>
										<td>${e.supplierDetail }</td>
										<td>${e.supplierdetailAddress }</td>
										<td>${e.supplierContact1 }</td>
										<td>${e.supplierPhone1 }</td>

										<td type="button" class="btn btn-primary" data-toggle="modal" id="details" name="supplier/details.jsp">
											<i class="glyphicon glyphicon-plus" aria-hidden="true"></i>详情
										</td>

										<td class="btn-group hidden-xs" role="group">
											<button type="button"  data-toggle="modal"  name="supplier/details.jsp">
												<i  aria-hidden="true"></i>详情
											</button>
										</td>

									</tr>
					            </c:forEach>
					        </tbody>
					    </table>
				    <div class="page">${page}</div>
			     </div>
			     </form>
			</div>
		</div>
	</body>
</html>