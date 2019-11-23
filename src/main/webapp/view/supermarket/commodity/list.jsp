<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>商品库</title>
    <%@ include file="../../../common/jsp/header.jsp"%>
    <!-- Bootstrap -->
    <link href="/supermarket/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div>
    <div>
        <button type="button" class="btn btn-primary" data-toggle="modal" id="add" name="supermarket/add.do">
            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
        </button>
    </div>

    <table class="table">
        <tr>
            <td class="active">商品信息</td>
            <td class="success">当前售价</td>
            <td class="warning">库存</td>
            <td class="danger">30天销量</td>
            <td class="info">状态</td>
            <td class="info">操作</td>
        </tr>
    </table>
</div>
</body>
</html>