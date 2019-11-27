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
                <div class="alert alert-success" role="alert">文章管理详细信息</div>
                <div class="col-md-12">
                    <button type="button" class="btn btn-success " data-toggle="modal">全部 ${page.count}</button>
                    <button type="button" class="btn btn-info" data-toggle="modal">已上架<a id="state1"></a></button>
                    <button type="button" class="btn btn-info" data-toggle="modal">未上架<a id="state0"></a></button>
                </div>
                <div class="col-md-3">
                    <button type="button" class="btn btn-success" data-toggle="modal" id="update"
                            name="supermarket/article/view.do">
                        <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
                    </button>
                    <button type="button" class="btn btn-info" data-toggle="modal" id="delete"
                            name="supermarket/article/deleteAll.do">
                        <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>批量操作
                    </button>
                </div>
                <div class="col-md-6">
                    <div class="col-md-5">
                        <input style="width: auto;" class="form-control" id="articleName" name="articleName"
                               autocomplete="off"
                               value="${articleEntity.articleName}" type="text" placeholder="请输入文章标题,回车搜索"/>
                    </div>
                    <%--                    <div class="col-md-5">--%>
                    <%--                        <select style="width: auto;" name="articleState" class="form-control">--%>
                    <%--                            <option value="${articleEntity.articleState}">全部分类</option>--%>
                    <%--                            <option value="${articleEntity.articleState}">海鲜大厨</option>--%>
                    <%--                            <option value="${articleEntity.articleState}">营养课堂</option>--%>
                    <%--                            <option value="${articleEntity.articleState}">教你挑海鲜</option>--%>
                    <%--                        </select>--%>
                    <%--                    </div>--%>
                </div>
                <%--                <div class="col-md-1 col-lg-offset-10">--%>
                <%--                    <button type="button" class="btn btn-primary" data-toggle="modal" id="tosearch">--%>
                <%--                        搜索--%>
                <%--                    </button>--%>
                <%--                </div>--%>
                <div class="col-md-1 col-lg-offset-11">
                    <button type="button" class="btn btn-primary" data-toggle="modal" id="create"
                            name="supermarket/business_article/create.jsp">
                        <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
                    </button>
                </div>
                <!-- ------------按钮组 end------------ -->
                <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
                <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
                <table class="table table-bordered table-hover table-condensed">
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
                    <c:forEach var="e" items="${page.list }" varStatus="v">
                        <tr>
                            <td><input type="checkbox" name="ids" value="${e.articleId}"/></td>
                            <td>${v.count}</td>
                            <td>${e.articleName}</td>
                            <td>${e.articleGroup}</td>
                            <td>999</td>
                            <td>${e.articleState==0?"未上架":e.articleState==1?"已上架":"已下架"}</td>
                            <td>推荐</td>
                            <td>
                                <a href="${path}/supermarket/article/view.do?ids=${e.articleId}">编辑</a>
                                <c:if test="${e.articleState==0}">
                                    <a href="${path}/supermarket/article/upstate.do?id=${e.articleId}">上架</a>
                                    <a href="${path}/supermarket/article/delete.do?id=${e.articleId}">删除</a>
                                </c:if>
                                <c:if test="${e.articleState==1}"><a
                                        href="${path}/supermarket/article/upstate.do?id=${e.articleId}">下架</a></c:if>
                                <c:if test="${e.articleState==2}">
                                    <a href="${path}/supermarket/article/delete.do?id=${e.articleId}">删除</a></c:if>
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
    $(function () {
        $.ajax({
            type: "POST",
            url: "<%=path%>/supermarket/article/queryState.do",
            data: 1,
            success: function(n){
                //返回数据后，删除勾选的数据
                alert( "返回信息:" + n );
                $("#state"+n).val=n;
            },
            error:function(){
                alert("网络错误");
            }
        });
    })
</script>
</body>
</html>