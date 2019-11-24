<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>文章添加页面</title>
    <%@ include file="../../../common/jsp/header.jsp" %>
    <link href="${path}/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
    <style>
        .panel{
            height: 150px;
            width: 150px;
            margin-bottom: 0;
            margin-top: 10px;
        }
        .icon-add-50 {
            position: relative;
            box-sizing: border-box;
            width: 20px;
            height: 20px;
            border: 1px dashed #9a9ba3;
            border-radius: 50%;
        }
        .icon-add-50:before{
            content: "";
            position: absolute;
            width: 30px;
            height:2px;
            left:50%;
            top:50%;
            margin-top: -1px;
            margin-left: -15px;
            background-color: #aaabb2;
        }
        .icon-add-50:after{
            content: "";
            position: absolute;
            width: 2px;
            height:30px;
            left:50%;
            top:50%;
            margin-top: -15px;
            margin-left: -1px;
            background-color: #aaabb2;
        }
        .updatepanel{
            border: 1px solid #ccc;
            text-align: center;
        }
        .updatepanel .addbox{
            vertical-align: middle;
            height: 150px;
            line-height: 150px;
        }
    </style>
</head>
<body>
<div class="wrapper wrapper-content animated fadeInRight">
    <div>
        <div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success"
                                     onclick="javascript:history.back();"/></div>
    </div>
    <div class="ibox float-e-margins">
        <form action="${path}/supermarket/article/create.do" method="post" class="form-horizontal" role="form">
            <fieldset>
                <legend>文章基本信息</legend>
                <div class="form-group">
                    <label class="col-sm-4 control-label">标题</label>
                    <div class="col-sm-8">
                        <input class="form-control" type="text" name="articleName" value="" placeholder="标题"/>
                    </div>
                </div>
<%--                <div class="form-group">--%>
<%--                    <label for="file" class="col-sm-4">入口图片--%>
<%--                        <div class="col-sm-8 panel updatepanel">--%>
<%--                            <div class="addbox"><span class="icon-add-50"></span></div>--%>
<%--                            <input class="form-control" type="file" id="file" name="articleImage"--%>
<%--                                   style="display: none"/>--%>
<%--                        </div>--%>
<%--                    </label>--%>
<%--                </div>--%>
                <div class="form-group">
                    <label class="col-sm-4 control-label">入口图片</label>
                    <div class="col-sm-8">
                        <img src="../../../static/img/a3.jpg" width="200" height="200">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label">分组</label>
                    <div class="col-sm-8">
                        <select style="width: auto;" class="form-control" type="text" name="articleGroup" value="">
                            <option value="0">全部分类</option>
                            <option value="1">海鲜大厨</option>
                            <option value="2">营养课堂</option>
                            <option value="3">教你挑海鲜</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label">文件简介</label>
                    <div class="col-sm-8">
                        <input class="form-control" type="text" name="articleDescript" value="" placeholder="文件简介"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label">文章简介</label>
                    <div class="col-sm-8">
                        <textarea class="form-control" type="text" name="articleDetail" placeholder="文章简介"></textarea>
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
<script type="application/javascript">
    $(".updatepanel").height($(".panel-info").height());
    document.getElementById('file').onchange=function () {
        var imgFile =this.files[0];
        var fr = new FileReader();
        fr.onload=function () {
            var imgs=document.getElementsByClassName('updateimg');
            imgs[img.length-1].src=fr.result;
        };
        fr.readAsDataURL(imgFile);
    }
</script>
</html>