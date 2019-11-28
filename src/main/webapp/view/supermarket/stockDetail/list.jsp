<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>商品库存明细</title>

    <!-- Bootstrap -->
    <link href="../../../static/css/bootstrap.min.css" rel="stylesheet">

    <%@ include file="../../../common/jsp/header.jsp" %>
</head>
<body>

<div class="wrapper wrapper-content animated fadeInRight">
    <div class="ibox float-e-margins">
        <form id="searchForm" action="">
            <div class="col-md-12">
                <!-- ------------页面名字组 start------------ -->
                <div class="alert alert-info" role="alert">商品库存明细</div>
                <!-- ------------页码隐藏 end------------ -->
                <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
                <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>

                <!-- ------------页面标签组------------ -->
                <div class="col-md-12">
                    <div class="col-md-3">
                        <input type="" class="form-control" id="" placeholder="请输入商品编号">
                    </div>
                    <div class="col-md-3">
                        <select class="form-control">
                            <option>全部</option>
                            <option>入库</option>
                            <option>出库</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <select class="form-control">
                            <option>全部</option>
                            <option>采购入库</option>
                            <option>盘盈入库</option>
                            <option>其他入库</option>
                            <option>销售出库</option>
                            <option>盘亏出库</option>
                            <option>赠品出库</option>
                            <option>其他出库</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <button type="button"  data-toggle="modal" id="" name="">
                            <i  aria-hidden="true">查询</i>
                        </button>
                    </div>
                </div>
                <!-- ------------表格组------------ -->
                <table class="table table-striped table-bordered table-hover table-condensed">

                    <thead>
                    <tr>
                        <th><input type="checkbox" id="checkall"/></th>
                        <th>序号</th>
                        <th>商品编号</th>
                        <th>商品名称</th>
                        <th>出/入库</th>
                        <th>业务类型</th>
                        <th>业务单号</th>
                        <th>出/入库数量</th>
                        <th>业务出/入库时间</th>
                    </tr>
                    </thead>

                    <tbody>
                    <c:set var="vs"></c:set>
                    <c:forEach var="e" items="${page.list }" varStatus="v">
                        <tr>
                            <td><input type="checkbox" name="ids" value="${e.entryId}"/></td>
                            <td>${e.entryId}</td>
                            <td>12234343</td>
                            <td>老顽童</td>
                            <!-----------1入库,2出库---------------------->
                            <td>${e.entryInout==1?"入库":"出库"}</td>
   <!-----------出入库类型 0:采购入库  1：盘盈入库  2：其他入库 3,销售出库 4,盘亏出库 5,赠品出库  6,其他出库---------------------->
                            <td>${e.entryType==0?"采购入库":e.entryType==1?"盘盈入库":e.entryType==2?"其他出库":e.entryType==3?"销售出库":e.entryType==4?"盘亏出库":e.entryType==5?"赠品出库":"其他出库"}</td>
                            <td>1233234</td>
                            <td>6</td>
                            <!-----------年月日 格式yyyy-mm-dd---------------------->
                            <td><fmt:formatDate value="${e.entryCreateTime}" pattern="yyyy-MM-dd"></fmt:formatDate></td>
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