<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>库存盘点</title>
    <%@ include file="../../../common/jsp/header.jsp"%>
    <link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
</head>
<body>
<div class="wrapper wrapper-content animated fadeInRight">
    <div>
        <div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
    </div>
    <div class="ibox float-e-margins">
        <form action="${path }/procurement/save.do" method="post" class="form-horizontal" role="form">
            <fieldset>
                <legend>新增盘点单 </legend>
                <!-----第一行------>
                <div class="col-md-12">
                    <div class="col-md-5">入库单号:
                        <input class="form-control" id=""  name="入库单号" type="text" placeholder="12343566"/></div>
                    <div class="col-md-5">状态:
                        <select class="form-control">
                            <option>待审核</option>
                            <option>待确认</option>
                            <option>待入库</option>
                            <option>已完成</option>
                        </select></div>
                    <div class="col-md-2"></div>
                </div>

                    <!-----第二行------>
                    <div  class="col-md-12">
                        <div class="col-md-5">经办人:
                            <input class="form-control" id=""  name="经办人" type="text" placeholder="lzj"/></div>
                        <div class="col-md-5">备注:
                            <input class="form-control" id=""  name="备注" type="text" placeholder="手机号"/></div>
                        <div class="col-md-2"></div>
                    </div>

                    <!-----第三行,表格------>
                    <div  class="col-md-12">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th><input type="checkbox" id="checkall"/>序号</th>
                                <th>商品名称</th>
                                <th>商品编号</th>
                                <th>单位</th>
                                <th>系统缓存</th>
                                <th>盘点数量</th>
                                <th>盘盈数量</th>
                                <th>盘亏数量</th>
                                <th>平均进货价</th>
                                <th>操作</th>
                            </tr>
                            </thead>

                            <!----数据组--->
                            <tbody>
<%--                            <c:set var="vs"></c:set>--%>
<%--                            <c:forEach var="e" items="${page.list }" varStatus="v">--%>
                                <tr>
                                    <td>123</td>
                                    <td>123</td>
                                    <td>123</td>
                                    <td>123</td>
                                    <td>123</td>
                                    <td>123</td>
                                    <td>123</td>
                                    <td>123</td>
                                    <td>123</td>
                                    <td>移除 添加</td>
<%--                                    <td><input type="checkbox" name="ids" value="${e.checkId }"/></td>--%>
<%--                                    <td>${e.checkState }</td>--%>
<%--                                    <td>${e.checkOperator }</td>--%>
<%--                                    <td>${e.checkOutputStyle }</td>--%>
<%--                                    <td>${e.checkRemark }</td>--%>
<%--                                    <td>${e.checkCreator }</td>--%>
<%--                                    <td>${e.checkCreateTime}</td>--%>
<%--                                    <td>${e.checkChecker}</td>--%>
<%--                                    <td>${e.checkCheckTime}</td>--%>
                                </tr>
<%--                            </c:forEach>--%>
                            </tbody>
                        </table>
                    </div>

            </fieldset>

            <fieldset>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="ds_host"></label>
                    <div class="col-sm-4">
                        <input type="submit" value="提交" class="btn btn-primary"/>
                    </div>
                    <label class="col-sm-2 control-label" for="ds_host"></label>
                    <div class="col-sm-4">
                        <input type="reset" value="重置" class="btn btn-danger" id="resetForm"/>
                    </div>
                </div>
            </fieldset>
        </form>
    </div>
</div>
</body>
<script type="text/javascript" src="${path }/static/js/plugins/file-input/fileinput.min.js"></script>
<script type="text/javascript" src="./js/dictionary.js"></script>
</html>