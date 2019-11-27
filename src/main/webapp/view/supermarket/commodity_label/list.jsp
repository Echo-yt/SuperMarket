<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>文章管理展示列表页面</title>

    <%@ include file="../../../common/jsp/header.jsp" %>
</head>
<body>
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="ibox float-e-margins">
        <form id="searchForm" action="">
            <div class="col-md-12">
                <!-- ------------按钮组 start------------ -->
                <div class="alert alert-success" role="alert">标签管理详细信息</div>
                <div class="col-md-8">
                    <div class="col-md-6">
                    <button type="button" class="btn btn-success" data-toggle="modal" id="update"
                            name="supermarket/label/view.do">
                        <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
                    </button>
                    <button type="button" class="btn btn-info" data-toggle="modal" id="delete"
                            name="supermarket/label/deleteAll.do">
                        <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>批量操作
                    </button>
                    </div>
                    <div class="col-md-6">
                    <input style="width: auto;" class="form-control" id="articleName" name="labelName"
                           autocomplete="off"
                           value="${labelEntity.labelName}" type="text" placeholder="请输入标签标题,回车搜索"/>
                    </div>
                </div>
                <div class="col-md-4 col-lg-offset-8">
                    <button type="button" class="btn btn-primary" data-toggle="modal" id="create"
                            name="supermarket/commodity_label/create.jsp">
                        <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
                    </button>
                </div>
                <!-- ------------按钮组 end------------ -->
                <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
                <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
                <table style="width: 100%" class="table table-bordered table-hover table-condensed">
                    <thead>
                    <tr>
                        <th><input type="checkbox" id="checkall"/></th>
                        <th>序号</th>
                        <th>标题</th>
                        <th>详情</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="e" items="${page.list }" varStatus="v">
                        <tr>
                            <td><input type="checkbox" name="ids" value="${e.labelId}"/></td>
                            <td>${v.count}</td>
                            <td>${e.labelName}</td>
                            <td>${e.labelDescript}</td>
                            <td>
                                <a href="${path}/supermarket/label/view.do?ids=${e.labelId}">编辑</a>
                                <a href="${path}/supermarket/label/delete.do?id=${e.labelId}">删除</a>
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
<%--<script type="application/javascript">
// 点击搜索按钮，触发事件
    $('#tosearch').click(function(){
        $('#searchForm').submit();
        document.location.href=root+'/supermarket/article/search.do';
    });
</script>--%>
</body>
</html>