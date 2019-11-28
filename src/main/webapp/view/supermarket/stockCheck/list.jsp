<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>商品库存盘点</title>

    <!-- Bootstrap -->
    <link href="../../../static/css/bootstrap.min.css" rel="stylesheet">

    <%@ include file="../../../common/jsp/header.jsp" %>
</head>
<body>
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="ibox float-e-margins">
        <form id="searchForm" action="">
            <div class="col-md-12">
                <!-- ------------按钮组 start------------ -->
                <div class="alert alert-success" role="alert">商品库存盘点</div>

                <!-- ------------按钮组 end------------ -->
                <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
                <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
                <table class="table table-striped table-bordered table-hover table-condensed">
                    <!-- ------------页面标签组 end 1------------ -->
                    <div>
                        <p>
                            <button type="button" class="btn btn-success">全部</button>
                            <button type="button" class="btn btn-success">待确认</button>
                            <button type="button" class="btn btn-success">待出库</button>
                            <button type="button" class="btn btn-success">已完成</button>
                            <button type="button" class="btn btn-success">已关闭</button>
                        </p>
                        <!-- ------------页面标签组 end 2------------ -->
                        <div class="col-md-12">
                            <div class="col-md-2">
                                <input type="" class="form-control" id="" placeholder="请输入出库单号">
                            </div>
                            <div class="col-md-2">
                                <select class="form-control">
                                    <option>全部</option>
                                    <option>销售出库</option>
                                    <option>盘亏出库</option>
                                    <option>赠品出库</option>
                                    <option>其他出库</option>
                                </select>
                            </div>
                            <div class="col-md-7">
                                <div class="col-md-3">
                                    <label for="">创建时间</label>
                                    <input class="form-control" type="date"  name="procurementCreatetime" />
                                </div>
                                <div class="col-md-3">
                                        <label for="">结束时间</label>
                                    <input class="form-control" type="date"  name="procurementCreatetime" />
                                </div>
                                <div class="col-md-1">
                                    <button type="button"  data-toggle="modal" id="" name="">
                                        <i  aria-hidden="true">查询</i>
                                    </button>
                                </div>
                                <!-- ------------新增盘点单------------ -->
                                <div class="col-md-1">
                                    <button type="button"  data-toggle="modal" id="create" name="supermarket/stockCheck/create.jsp">
                                        <i  aria-hidden="true">盘点</i>
                                    </button>
                                </div>
                            </div>
                        </div>

                    </div>

                    <!-- ------------数据组 end------------ -->
                    <thead>
                    <tr>
                        <th><input type="checkbox" id="checkall"/></th>
                        <th>序号</th>
                        <th>状态</th>
                        <th>盘点单号</th>
                        <th>盘盈金额</th>
                        <th>盘亏金额</th>
                        <th>创建时间</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <!-- ------------数据组 end------------ -->
                    <tbody>
                    <c:set var="vs"></c:set>
                    <c:forEach var="e" items="${page.list }" varStatus="v">
                        <tr>
                            <td><input type="checkbox" name="ids" value="${e.checkId }"/></td>
                            <td>${e.checkId }</td>
                            <!-- ------------状态 0：待确认 1：待审核 2：已完成------------ -->
                            <td>${e.checkState==0?"待确认":e.checkState==1?"待审核":"已完成"}</td>
                            <td>1233444</td>
                            <td></td>
                            <td></td>
                            <!-----------年月日 格式yyyy-mm-dd---------------------->
                            <td><fmt:formatDate value="${e.checkCreateTime}" pattern="yyyy-MM-dd"></fmt:formatDate></td>
                            <td> 编辑 详情 删除 审核 </td>
                        </tr>
                    </c:forEach>
                    </tbody>

                </table>
                <div class="page">${page}</div>
            </div>
        </form>
    </div>
</div>

<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="../../../static/js/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="../../../static/js/bootstrap.min.js"></script>

</body>
</html>