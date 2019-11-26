<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>商品展示列表页面</title>
    <%@ include file="../../../common/jsp/header.jsp" %>
    <link rel="stylesheet" href="<%=path%>static/css/plugins/ztree/zTreeStyle/zTreeStyle.css" type="text/css">
    <script type="text/javascropt" src="<%=path%>static/js/plugins/ztree/jquery.ztree.core-3.5.js"></script>
</head>
<body>
<ul id="treeDemo" class="ztree" style="margin-top:0; width:160px;"></ul>
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="ibox float-e-margins">
        <form id="searchForm" action="">
            <div class="col-sm-12">
                <!-- ------------按钮组 start------------ -->
                <div class="col-sm-8">
                    <%--查询  start--%>
                    <div>
                        <button type="button" class="btn btn-info btn-sm" id="queryAll" onclick="queryAll">全部</button>
                        <button type="button" class="btn btn-info btn-sm" id="queryUp" onclick="queryUp">已上架</button>
                        <button type="button" class="btn btn-info btn-sm" id="queryUnUp" onclick="uneryUnUp">未上架
                        </button>
                    </div>
                    <div>
                        <%--<c:forEach items="${u.roleList }" var="r">
						                		${r }
						                	</c:forEach>--%>
                        <input type="text" placeholder="请输入商品名称" name="commodityName" value="${commodityEntity.commodityName}">
                        <input type="text" placeholder="请输入商品编号" name="commodityId" value="${commodityEntity.commodityId}">
                        <select id="type">
                               <option>所有分类</option>
                        </select>
                            <button type="button" class="btn btn-primary" data-toggle="modal" id="search" onclick="search">
                                <i  aria-hidden="true"></i>查询
                            </button>
                    </div>
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
                        <th class="info">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="comm" items="${page.list }" varStatus="v">
                        <tr>
                            <td><input type="checkbox" class="ids" name="ids" value="${comm.commodityId }"/></td>
                            <td>${v.count+(page.pageNo-1)*page.pageSize }</td>
                            <td>${comm.commodityName }</td>
                            <td>${comm.commodityPrice }</td>
                            <td>库存</td>
                            <td>30天售价</td>
                                <%--<td><zhg:show codeTp="commodityState" value="${comm.commodityState}"/></td>--%>
                                <%--0:未上架 1：已上架 2：已下架 3：删除--%>
                            <c:if test="${comm.commodityState==0}">
                                <td class="commodityState">未上架</td>
                            </c:if>
                            <c:if test="${comm.commodityState==1}">
                                <td class="commodityState">已上架</td>
                            </c:if>
                            <c:if test="${comm.commodityState==2}">
                                <td class="commodityState">已下架</td>
                            </c:if>
                            <td>
                                    <%--  <input type="button" id="state" value="${comm.commodityState==1?"下架":"上架"}">--%>
                                <span class="changeState" onclick="changeState" >${comm.commodityState==1?"下架":"上架"}</span>
                                <span class="detail" onclick="detail">详情</span>
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
<script language="JavaScript">
    /*  $(document).ready(function(){
        alert("123");
      });*/
    //全部按钮
    $(function () {
        $('#queryAll').click(function () {
            /*alert("查询全部");*/
            document.location.href = root + 'supermarket/query.do'
        });
        //查询已上架  状态为 1
        $('#queryUp').click(function () {
            /* alert("查询已上架");*/
            document.location.href = root + "supermarket/query.do?commodityState=1";
        });
        //查询未上架 状态为 0
        $('#queryUnUp').click(function () {
            /*alert("查询未上架");*/
            document.location.href = root + "supermarket/query.do?commodityState=0";
        });
        //查看详情
        $('.detail').click(function () {
            var id = $(this).parent().parent().find("input").attr("value");
            var url = root + "supermarket/queryDetail.do?ids=" + id;
            document.location.href = url;
            /*$("#searchForm").attr('action', url).submit();*/
        });
        //改变商品状态
        $(".changeState").click(function () {
            var state=$(this).text();
            var id = $(this).parent().parent().find("input").attr("value");
            if(state=="上架"){
                var commodityState=1
            }else{
                var commodityState=3;
            }
            /*alert(commodityState);*/
             document.location.href = root + "supermarket/changeState.do?commodityState="+commodityState+"&commodityId="+id;


        });
        //条件查询
        $('#search').click(function () {
           var url = root + "supermarket/search.do";
            $("#searchForm").attr('action', url).submit();
        })
    });
    /*==============================================================ztree==========================================================================*/
    var setting = {
        view: {
            dblClickExpand: false
        },
        data: {
            simpleData: {
                enable: true
            }
        },
        callback: {
            beforeClick: beforeClick,
            onClick: onClick
        }
    };

    var zNodes =[
        {id:1, pId:0, name:"北京"},
        {id:2, pId:0, name:"天津"},
        {id:3, pId:0, name:"上海"},
        {id:6, pId:0, name:"重庆"},
        {id:4, pId:0, name:"河北省", open:true},
        {id:41, pId:4, name:"石家庄"},
        {id:42, pId:4, name:"保定"},
        {id:43, pId:4, name:"邯郸"},
        {id:44, pId:4, name:"承德"},
        {id:5, pId:0, name:"广东省", open:true},
        {id:51, pId:5, name:"广州"},
        {id:52, pId:5, name:"深圳"},
        {id:53, pId:5, name:"东莞"},
        {id:54, pId:5, name:"佛山"},
        {id:6, pId:0, name:"福建省", open:true},
        {id:61, pId:6, name:"福州"},
        {id:62, pId:6, name:"厦门"},
        {id:63, pId:6, name:"泉州"},
        {id:64, pId:6, name:"三明"}
    ];

    function beforeClick(treeId, treeNode) {
        var check = (treeNode && !treeNode.isParent);
        if (!check) alert("只能选择城市...");
        return check;
    }

    function onClick(e, treeId, treeNode) {
        var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
            nodes = zTree.getSelectedNodes(),
            v = "";
        nodes.sort(function compare(a,b){return a.id-b.id;});
        for (var i=0, l=nodes.length; i<l; i++) {
            v += nodes[i].name + ",";
        }
        if (v.length > 0 ) v = v.substring(0, v.length-1);
        var cityObj = $("#citySel");
        cityObj.attr("value", v);
    }

    function showMenu() {
        var cityObj = $("#citySel");
        var cityOffset = $("#citySel").offset();
        $("#menuContent").css({left:cityOffset.left + "px", top:cityOffset.top + cityObj.outerHeight() + "px"}).slideDown("fast");

        $("body").bind("mousedown", onBodyDown);
    }
    function hideMenu() {
        $("#menuContent").fadeOut("fast");
        $("body").unbind("mousedown", onBodyDown);
    }
    function onBodyDown(event) {
        if (!(event.target.id == "menuBtn" || event.target.id == "menuContent" || $(event.target).parents("#menuContent").length>0)) {
            hideMenu();
        }
    }
    $(document).ready(function(){
        $.fn.zTree.init($("#treeDemo"), setting, zNodes);
    });


</script>
</html>