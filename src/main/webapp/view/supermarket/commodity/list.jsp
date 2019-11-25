<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>商品展示列表页面</title>
    <%@ include file="../../../common/jsp/header.jsp" %>
</head>
<body>
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="ibox float-e-margins">
        <form id="searchForm" action="">
            <div class="col-sm-12">
                <!-- ------------按钮组 start------------ -->

                <div class="col-sm-8">
                    <div class="btn-group" role="group">
                        <shiro:hasPermission name="user:create">
                            <button type="button" class="btn btn-primary" data-toggle="modal" id="add"
                                    name="supermarket/add.do">
                                <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
                            </button>
                        </shiro:hasPermission>
                        <shiro:hasPermission name="user:update">
                            <button type="button" class="btn btn-success" data-toggle="modal" id="update"
                                    name="supermarket/queryById.do">
                                <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
                            </button>
                        </shiro:hasPermission>
                        <shiro:hasPermission name="user:delete">
                            <button type="button" class="btn btn-danger" data-toggle="modal" id="delete"
                                    name="supermarket/delete.do">
                                <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
                            </button>
                        </shiro:hasPermission>
                    </div>
                </div>
                <!-- ------------按钮组 end------------ -->
                <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
                <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
                <table class="table table-striped table-bordered table-hover table-condensed">
                    <thead>
                    <tr>
                        <th><input type="checkbox" id="checkall"/></th>
                        <th class="active">序号</th>
                        <th class="active">商品信息</th>
                        <th class="success">当前售价</th>
                        <th class="warning">库存</th>
                        <th class="danger">30天销量</th>
                        <th class="info">状态</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="comm" items="${page.list }" varStatus="v">
                        <tr>
                            <td><input type="checkbox" name="ids" value="${comm.commodityId }"/></td>
                            <td>${v.count+(page.pageNo-1)*page.pageSize }</td>
                            <td>${comm.commodityName }</td>
                            <td>${comm.commodityPrice }</td>
                            <td>库存</td>
                            <td>30天售价</td>
                                <%--<td><zhg:show codeTp="commodityState" value="${comm.commodityState}"/></td>--%>
                            <c:if test="${comm.commodityState==0}">
                                <td>已上架</td>
                            </c:if>
                            <c:if test="${comm.commodityState==1}">
                                <td>未上架</td>
                            </c:if>
                            <c:if test="${comm.commodityState==2}">
                                <td>已下架</td>
                            </c:if>

                                <%--                <td><zhg:show codeTp="sex" value="${u.userSex }"/></td>--%>
                                <%--                <td>--%>
                                <%--                    <c:forEach items="${u.roleList }" var="r">--%>
                                <%--                        ${r }--%>
                                <%--                    </c:forEach>--%>
                                <%--                </td>--%>
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
</body>
</html>