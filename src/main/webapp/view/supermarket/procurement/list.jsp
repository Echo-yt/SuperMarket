<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>测试展示列表页面</title>
	<%@ include file="../../../common/jsp/header.jsp"%>


</head>
<body>

<div class="wrapper wrapper-content animated fadeInRight">
	<div class="ibox float-e-margins">
		<form id="searchForm" action="${path }/procurement/query.do">
			<div class="col-sm-12">
				<!-- ------------按钮组 start------------ -->
				<div class="alert alert-success" role="alert">采购单信息</div>

				<div class="col-sm-2">
					<input class="form-control" id="se" name="procurementId" value="${procurementEntity.procurementId }" type="text" placeholder="请输入采购单编号"/>
				</div>
				<div class="col-sm-2">
					<input class="form-control" id="sear" name="testName" value="${testEntity.testName }" type="text" placeholder="全部供应商"/>
				</div>
				<div class="col-sm-2">
					<input class="form-control" id="seac" name="startTime" type="date" placeholder="开始时间"/>
				</div>
				<div class="col-sm-2">
					<input class="form-control" id="sea" name="endTime"  type="date" placeholder="截止时间"/>
				</div>

				<div class="col-sm-1">
					<button type="button" class="btn btn-primary"  id="tosearch" name="" >
						搜索
					</button>

				</div>





				<div class="col-sm-3">
					<div class="btn-group hidden-xs" role="group">
						<button type="button"  data-toggle="modal" id="create" name="supermarket/procurement/create.jsp">
							<i  aria-hidden="true"></i>进货
						</button>
						<button type="button"  data-toggle="modal" id="updat" name="test/view.do">
							<i  aria-hidden="true"></i>编辑
						</button>

						<button type="button"  data-toggle="modal" id="creat" name="test/create.jsp">
							<i  aria-hidden="true"></i>详情
						</button>
						<button type="button"  data-toggle="modal" id="delete" name="procurement/delete.do">
							<i  aria-hidden="true"></i>删除
						</button>
						<button type="button"  data-toggle="modal" id="upda" name="test/view.do">
							<i  aria-hidden="true"></i>审核
						</button>
					</div>
				</div>
				<!-- ------------按钮组 end------------ -->
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<table class="table table-striped table-bordered table-hover table-condensed">
					<thead>
					<tr>
						<th><input type="checkbox" id="checkall"/></th>
						<th>入库状态</th>
						<th>审核状态</th>
						<th>采购单编号</th>
						<th>供应商</th>
						<th>采购金额</th>
						<th>创建时间</th>
						<th>操作</th>

					</tr>
					</thead>
					<tbody>
					<c:set var="vs"></c:set>
					<c:forEach var="e" items="${page.list }" varStatus="v">
						<tr>
							<td><input type="checkbox" name="ids" value="${e.procurementId}"/></td>

							<td>${e.procurementInstate}</td>
							<td>${e.procurementTostate}</td>
							<td>${e.procurementId}</td>
							<td>${e.supplierId}</td>
							<td>${e.procurementMoney}</td>

							<td><fmt:formatDate value="${e.procurementCreatetime}" pattern="yyyy-MM-dd"></fmt:formatDate></td>

							<td>


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


<script type="application/javascript">

    $(document).ready(function() {
        $("#tosearch").click(function() {
            $('#searchForm').submit();
        });
    });



</script>

</body>
</html>