<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>测试修改页面</title>
    <%@ include file="../../common/jsp/header.jsp" %>
    <link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
</head>
<body>
<div class="wrapper wrapper-content animated fadeInRight">
    <div>
        <div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success"
                                     onclick="javascript:history.back();"/></div>
    </div>
    <div class="ibox float-e-margins">
        <form action="${path }/test/update.do" method="post" class="form-horizontal" role="form">
            <input type="hidden" name="testId" value="${testEntity.testId}" />
            <fieldset>
                <legend>测试基本信息</legend>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="ds_host">名称</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text" name="testName" value="${testEntity.testName}"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="ds_name">性别</label>
                    <div class="col-sm-4">
                        <zhg:select codeTp="sex" name="testSex" value="${testEntity.testSex}" cls="form-control" def="true"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="ds_username">日期</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="date" name="testDate"
                               value="<fmt:formatDate value="${testEntity.testDate}" pattern="yyyy-MM-dd"/>"/>
                    </div>
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