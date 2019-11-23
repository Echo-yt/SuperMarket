<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>文章管理展示列表页面</title>

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
                <div class="alert alert-success" role="alert">文章管理详细信息</div>
                <div class="col-md-12">
                    <button type="button" class="btn btn-success " data-toggle="modal">全部 ${page.count}</button>
                    <button type="button" class="btn btn-info" data-toggle="modal">已上架 ${page.count}</button>
                    <button type="button" class="btn btn-info" data-toggle="modal">未上架 ${page.count}</button>
                </div>
                <div class="col-md-3">
                    <button type="button" class="btn btn-success" data-toggle="modal" id="update"
                            name="supermarket/article/view.do">
                        <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
                    </button>
                    <button type="button" class="btn btn-info" data-toggle="modal" id="delete"
                            name="supermarket/article/delete.do">
                        <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>批量操作
                    </button>
                </div>
                <div class="col-md-9">
                    <div class="col-md-3">
                        <input style="width: auto;" class="form-control" id="search" name="articleName"
                               autocomplete="off"
                               value="${articleEntity.articleName}" type="text" placeholder="请输入文章标题"/>
                    </div>
                    <div class="col-md-3">
                        <select style="width: auto;" class="form-control">
                            <option>全部分类</option>
                            <option>海鲜大厨</option>
                            <option>营养课堂</option>
                            <option>教你挑海鲜</option>
                        </select>
                    </div>
                    <%--                <div class="col-md-3">--%>
                    <%--                                    </div>--%>
                    <%--                <div class="col-md-3 btn-group">--%>
                    <%--                                    </div>--%>
                    <div class="col-md-1 col-lg-offset-11">
                        <button type="button" class="btn btn-primary" data-toggle="modal" id="create"
                                name="supermarket/business_article/create.jsp">
                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
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
                        <th>序号</th>
                        <th>标题</th>
                        <th>类型</th>
                        <th>阅读量</th>
                        <th>状态</th>
                        <th>是否推荐</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:set var="vs"></c:set>
                    <c:forEach var="e" items="${page.list }" varStatus="v">
                        <tr>
                            <td><input type="checkbox" name="ids" value="${e.articleId}"/></td>
                            <td>1</td>
                            <td>${e.articleName}</td>
                            <td>${e.articleGroup}</td>
                            <td>999</td>
                            <td>${e.articleState}</td>
                            <td>推荐</td>
                            <td>操作</td>
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