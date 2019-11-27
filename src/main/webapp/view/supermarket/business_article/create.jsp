<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>文章添加页面</title>
    <%@ include file="../../../common/jsp/header.jsp" %>
    <link href="${path}/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
    <style>
        /*.panel {*/
        /*    height: 150px;*/
        /*    width: 150px;*/
        /*    margin-bottom: 0;*/
        /*    margin-top: 10px;*/
        /*}*/

        /*.icon-add-50 {*/
        /*    position: relative;*/
        /*    box-sizing: border-box;*/
        /*    width: 20px;*/
        /*    height: 20px;*/
        /*    border: 1px dashed #9a9ba3;*/
        /*    border-radius: 50%;*/
        /*}*/

        /*.icon-add-50:before {*/
        /*    content: "";*/
        /*    position: absolute;*/
        /*    width: 30px;*/
        /*    height: 2px;*/
        /*    left: 50%;*/
        /*    top: 50%;*/
        /*    margin-top: -1px;*/
        /*    margin-left: -15px;*/
        /*    background-color: #aaabb2;*/
        /*}*/

        /*.icon-add-50:after {*/
        /*    content: "";*/
        /*    position: absolute;*/
        /*    width: 2px;*/
        /*    height: 30px;*/
        /*    left: 50%;*/
        /*    top: 50%;*/
        /*    margin-top: -15px;*/
        /*    margin-left: -1px;*/
        /*    background-color: #aaabb2;*/
        /*}*/

        /*.updatepanel {*/
        /*    border: 1px solid #ccc;*/
        /*    text-align: center;*/
        /*}*/

        /*.updatepanel .addbox {*/
        /*    vertical-align: middle;*/
        /*    height: 150px;*/
        /*    line-height: 150px;*/
        /*}*/

        /*fieldset {*/
        /*    border: 1px solid grey;*/
        /*    margin-top: 16px;*/
        /*    padding: 8px;*/
        /*}*/

        /*legend {*/
        /*    width: 130px;*/
        /*    font: bold 18px Arial, Helvetica, sans-serif;*/
        /*    color: #00008b;*/
        /*    background-color: #FFFFFF;*/
        /*}*/

        /*.classDivBlank {*/
        /*    float: left;*/
        /*    width: 130px;*/
        /*    height: 150px;*/
        /*}*/
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
                <legend class="legend">文章基本信息</legend>
                <div class="classDivBlank"></div>
                <%--                <div style="border: 1px solid slateblue; width: 100px;height: 30px">文章基本信息</div>--%>
                <div class="form-group">
                    <label class="col-sm-2 control-label">标题</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text" name="articleName" value="" placeholder="标题"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="file" class="col-sm-4">入口图片
                        <div class="col-sm-8 panel updatepanel">
                            <div class="addbox"><span class="icon-add-50"></span></div>
                            <input class="form-control" type="file" id="file" name="articleImage" value="${articleImage}"
                                   style="display: none"/>
                        </div>
                    </label>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">入口图片</label>
                    <div class="col-sm-4">
                        <img src="<%=path%>/static/img/a3.jpg" width="100" height="100">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">分组</label>
                    <div class="col-sm-4">
                        <select style="width: auto;" class="form-control" type="text" name="articleGroup" value="">
                            <option>全部分类</option>
                            <option>鬼故事</option>
                            <option>海鲜大厨</option>
                            <option>营养课堂</option>
                            <option>教你挑海鲜</option>
                            <option>生活小妙招</option>
                            <option>不为人知的秘密</option>
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
                        <textarea class="form-control" type="text" name="articleDetail"
                                  style="height: 200px" placeholder=" 详细描述详细描述详细描述..."></textarea>
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
    document.getElementById('file').onchange = function () {
        var imgFile = this.files[0];
        var fr = new FileReader();
        fr.onload = function () {
            var imgs = document.getElementsByClassName('updateimg');
            imgs[img.length - 1].src = fr.result;
        };
        fr.readAsDataURL(imgFile);
    }
</script>
</html>