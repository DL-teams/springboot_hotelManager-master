<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../common/loading.jsp" %>
<html>
<head>
    <title>公告管理</title>
    <%@include file="../../common/head.jsp" %>
    <link rel="stylesheet" href="/static/bower_components/font-awesome/css/font-awesome.min.css">
    <style>
        .datagrid-header-row, .datagrid-row {
            height: 40px;
        }

        body {
            font-family: verdana, helvetica, arial, sans-serif;
        }

    </style>
</head>
<body>
<section class="content-header">
    <h1>
        公告管理
        <small>公告管理</small>
    </h1>
    <ol class="breadcrumb">
        <li><a><i class="fa fa-dashboard"></i>系统管理</a></li>
        <li class="active">公告管理</li>
    </ol>
</section>

<section class="content container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="box" style="margin-bottom: 2px">

            <table id="dg" title="公告列表" iconCls="icon-man" class="easyui-datagrid" width="100%"
                   url="/announcement/list"
                   toolbar="#tb" pagination="true"
                   rownumbers="true" fitColumns="true" singleSelect="true">
                <thead>
                <%--<th field="userId" width="10" align="center">编号</th>--%>
                <th field="ck" checkbox="true"></th>
                <th field="announcementId" width="55" align="center" hidden>公告id</th>
                <th field="announcementValue" width="55" align="center">公告内容</th>
                <th field="announcementCreateTime" width="55" align="center">创建时间</th>
                <th field="announcementLastModifyTime" width="55" align="center">更新时间</th>
                </thead>
            </table>

            <div id="tb">
                <div>
                    <a href="javascript:openRoleModifyDialog()" class="easyui-linkbutton" iconCls="icon-edit"
                       plain="true">修改</a>
                </div>
            </div>

            <div id="dlg1" class="easyui-dialog" style="width:400px"
                 data-options="closed:true,modal:true,border:'thin',buttons:'#dlg1-buttons'">
                <form id="fm1" novalidate style="margin:0;padding:20px 50px">
                    <div style="margin-bottom:10px">
                        <textarea name="announcementValue" id="u_roleName" class="easyui-textarea" required label="公告内容:"
                                  style="width:100%;height: 100px"></textarea>
                    </div>
                </form>
            </div>
            <div id="dlg1-buttons">
                <a href="javascript:void(0)" class="easyui-linkbutton c6" iconCls="icon-ok" onclick="updateRole()"
                   style="width:90px">保存</a>
                <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel"
                   onclick="javascript:$('#dlg1').dialog('close')" style="width:90px">取消</a>
            </div>
        </div>
    </div>
</section>

<script>
    if ($.fn.datagrid) {
        $.fn.datagrid.defaults.pageSize = 10;//这里一定要用datagrid.defaults.pageSize
        $.fn.datagrid.defaults.pageList = [10];//这里一定要有，不然上面的也不起效
    }

    function formatOperate(value, row) {
        return "<button onclick=\"openPermissionChooseDialog('" + row.roleId + "')\" class='btn btn-success btn-sm'>分配权限</button> ";
    }

    function openRoleModifyDialog() {
        var selectedRows = $("#dg").datagrid("getSelections");
        if (selectedRows.length != 1) {
            $.messager.alert("系统提示", "请选择一条要修改的数据！");
            return;
        }
        var row = selectedRows[0];
        $("#dlg1").dialog("open").dialog("center").dialog("setTitle", "修改角色信息");
        $("#fm1").form("load", row);
        url = "/announcement/update?announcementId=" + row.announcementId;
    }

    function updateRole() {
        $.ajax({
            type: "PUT",
            url: url,
            dateType: "json",
            beforeSend: function () {
                var isValid = $("#fm1").form("validate");
                return isValid; // 返回false终止表单提交
            },
            data: {
                announcementValue: $("#u_roleName").val()
            },
            success: function (res) {
                if (res.ret) {
                    $.messager.alert("系统提示", "修改成功！");
                    $("#dlg1").dialog("close");
                    $("#dg").datagrid("reload");

                } else {
                    $.messager.alert("系统提示", res.msg);
                }
            }
        });
    }
</script>
</body>
</html>
