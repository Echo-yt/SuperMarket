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
        <form action="${path}/supermarket/article/update.do" method="post" class="form-horizontal" role="form">
            <fieldset>
                <legend>文章基本信息</legend>
                <div class="form-group">
                    <label class="col-sm-2 control-label">标题</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text" name="articleName" value="${entity.articleName}"
                               placeholder="标题"/>
                    </div>
                </div>
                <%--                <div class="form-group">--%>
                <%--                    <label for="file" class="col-sm-4">入口图片--%>
                <%--                        <div class="col-sm-8 panel updatepanel">--%>
                <%--                            <div class="addbox"><span class="icon-add-50"></span></div>--%>
                <%--                            <input class="form-control" type="file" id="file" name="articleImage" value="${articleImage}"--%>
                <%--                                   style="display: none"/>--%>
                <%--                        </div>--%>
                <%--                    </label>--%>
                <%--                </div>--%>
                <div class="form-group">
                    <label class="col-sm-2 control-label">入口图片</label>
                    <div class="col-sm-4">
                        <img src="<%=path%>/static/img/a5.jpg" width="100" height="100">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">分组</label>
                    <div class="col-sm-4">
                        <select style="width: auto;" class="form-control" type="text" name="articleGroup"
                                autocomplete="off" value="${entity.articleGroup}">
                            <option value="全部分类">全部分类</option>
                            <option value="生活小妙招" selected="${entity.articleGroup=='生活小妙招'?selected:null}">生活小妙招</option>
                            <option value="鬼故事">鬼故事</option>
                            <option value="海鲜大厨">海鲜大厨</option>
                            <option value="营养课堂">营养课堂</option>
                            <option value="教你挑海鲜">教你挑海鲜</option>
                            <option value="不为人知的秘密">不为人知的秘密</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">文件简介</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text" name="articleDescript" value="${entity.articleDescript}"
                               placeholder="文件简介"/>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>文章详情</legend>
                <div class="form-group">
                    <div class="col-sm-12">
                        <textarea id="articleDetail" class="form-control" type="text" name="articleDetail"
                                  style="height: 200px">${entity.articleDetail}</textarea>
                    </div>
                </div>
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