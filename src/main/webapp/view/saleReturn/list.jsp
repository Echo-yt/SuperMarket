<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>采购退货展示列表页面</title>
		<%@ include file="../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
				<div class="col-sm-12">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">采购退货详细信息</div>
	                <div class="col-sm-8">
	                	<div class="btn-group hidden-xs" role="group">
                			<button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="saleReturn/create.jsp">
	                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
	                        </button>
	                        <button type="button" class="btn btn-success" data-toggle="modal" id="update" name="procurements/view.do">
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
									<th>退货单编号</th>
					                <th>出库状态</th>
					                <th>审核状态</th>
									<th>采购单编号</th>
									<th>供应商</th>
									<th>退货金额</th>
									<th>创建时间</th>
									<th>操作</th>
					            </tr>
					        </thead>
					        <tbody>
					        	<c:set var="vs"></c:set>
					        	<c:forEach var="e" items="${page.list }" varStatus="v">
						            <tr>
						                <td><input type="checkbox" name="ids" value="${e.salesReturnId }"/></td>
										<td>${e.salesReturnId }</td>
						                <td>${e.salesReturnOutstate }</td>
										<td>${e.salesReturnTostate }</td>
										<td>${e.procurementId }</td>
										<td>${e.supplierId }</td>
										<td>${e.salesReturnMoney }</td>
										<td><fmt:formatDate value="${e.salesReturnCreatetime }" pattern="yyyy-MM-dd"></fmt:formatDate></td>
										<td type="button" class="btn btn-primary" data-toggle="modal" id="details" name="supplier/details.jsp">
											<i class="glyphicon glyphicon-plus" aria-hidden="true"></i>详情
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