<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>文章添加页面</title>
    <%@ include file="../../../common/jsp/header.jsp" %>
    <link href="${path}/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
</head>
<body>
<div class="wrapper wrapper-content animated fadeInRight">
    <div>
        <div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success"
                                     onclick="javascript:history.back();"/></div>
    </div>
    <div class="ibox float-e-margins">
        <form action="${path}/supermarket/label/insert.do" method="post" class="form-horizontal" role="form">
            <input type="hidden" name="labelId" value="${entity.labelId}">
            <fieldset>
                <legend class="legend">文章基本信息</legend>
                <div class="classDivBlank"></div>
                <%--                <div style="border: 1px solid slateblue; width: 100px;height: 30px">文章基本信息</div>--%>
                <div class="form-group">
                    <label class="col-sm-2 control-label">标签名称</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text" name="labelName" value="${entity.labelName}" placeholder="标题"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">标签描述</label>
                    <div class="col-sm-4">
                        <textarea class="form-control" style="height: 200px;width: 100%"
                                  name="labelDescript" value="${entity.labelDescript}" placeholder="文件简介"></textarea>
                    </div>
                </div>
            </fieldset>
            </fieldset>
            <fieldset>
                <div class="form-group">
                    <label class="col-sm-2 control-label"></label>
                    <div class="col-sm-4">
                        <input type="submit" value="提交" class="btn btn-primary"/>
                    </div>
                    <label class="col-sm-2 control-label"></label>
                    <div class="col-sm-4">
                        <input type="reset" value="重置" class="btn btn-danger" id="resetForm"/>
                    </div>
                </div>
            </fieldset>
        </form>
    </div>
</div>
</body>
<script type="text/javascript" src="${path}/static/js/plugins/file-input/fileinput.min.js"></script>
</html>