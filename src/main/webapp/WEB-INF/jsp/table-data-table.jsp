<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="description"
          content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <!-- Twitter meta-->
    <meta property="twitter:card" content="summary_large_image">
    <meta property="twitter:site" content="@pratikborsadiya">
    <meta property="twitter:creator" content="@pratikborsadiya">
    <!-- Open Graph Meta-->
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Vali Admin">
    <meta property="og:title" content="Vali - Free Bootstrap 4 admin theme">
    <meta property="og:url" content="http://pratikborsadiya.in/blog/vali-admin">
    <meta property="og:image" content="http://pratikborsadiya.in/blog/vali-admin/hero-social.png">
    <meta property="og:description"
          content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <title>Data Table - Vali Admin</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css"
          href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.css">
    <%--时间控件css--%>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css">
</head>
<body class="app sidebar-mini rtl">
<!-- Navbar-->
<header class="app-header"><a class="app-header__logo" href="index">Vali</a>
    <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar"
                                    aria-label="Hide Sidebar"></a>
    <!-- Navbar Right Menu-->
    <ul class="app-nav">
        <li class="app-search">
            <input class="app-search__input" type="search" placeholder="Search">
            <button class="app-search__button"><i class="fa fa-search"></i></button>
        </li>
        <!--Notification Menu-->
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Show notifications"><i
                class="fa fa-bell-o fa-lg"></i></a>
            <ul class="app-notification dropdown-menu dropdown-menu-right">
                <li class="app-notification__title">You have 4 new notifications.</li>
                <div class="app-notification__content">
                    <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span
                            class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-primary"></i><i
                            class="fa fa-envelope fa-stack-1x fa-inverse"></i></span></span>
                        <div>
                            <p class="app-notification__message">Lisa sent you a mail</p>
                            <p class="app-notification__meta">2 min ago</p>
                        </div>
                    </a></li>
                    <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span
                            class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-danger"></i><i
                            class="fa fa-hdd-o fa-stack-1x fa-inverse"></i></span></span>
                        <div>
                            <p class="app-notification__message">Mail server not working</p>
                            <p class="app-notification__meta">5 min ago</p>
                        </div>
                    </a></li>
                    <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span
                            class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-success"></i><i
                            class="fa fa-money fa-stack-1x fa-inverse"></i></span></span>
                        <div>
                            <p class="app-notification__message">Transaction complete</p>
                            <p class="app-notification__meta">2 days ago</p>
                        </div>
                    </a></li>
                    <div class="app-notification__content">
                        <li><a class="app-notification__item" href="javascript:;"><span
                                class="app-notification__icon"><span class="fa-stack fa-lg"><i
                                class="fa fa-circle fa-stack-2x text-primary"></i><i
                                class="fa fa-envelope fa-stack-1x fa-inverse"></i></span></span>
                            <div>
                                <p class="app-notification__message">Lisa sent you a mail</p>
                                <p class="app-notification__meta">2 min ago</p>
                            </div>
                        </a></li>
                        <li><a class="app-notification__item" href="javascript:;"><span
                                class="app-notification__icon"><span class="fa-stack fa-lg"><i
                                class="fa fa-circle fa-stack-2x text-danger"></i><i
                                class="fa fa-hdd-o fa-stack-1x fa-inverse"></i></span></span>
                            <div>
                                <p class="app-notification__message">Mail server not working</p>
                                <p class="app-notification__meta">5 min ago</p>
                            </div>
                        </a></li>
                        <li><a class="app-notification__item" href="javascript:;"><span
                                class="app-notification__icon"><span class="fa-stack fa-lg"><i
                                class="fa fa-circle fa-stack-2x text-success"></i><i
                                class="fa fa-money fa-stack-1x fa-inverse"></i></span></span>
                            <div>
                                <p class="app-notification__message">Transaction complete</p>
                                <p class="app-notification__meta">2 days ago</p>
                            </div>
                        </a></li>
                    </div>
                </div>
                <li class="app-notification__footer"><a href="#">See all notifications.</a></li>
            </ul>
        </li>
        <!-- User Menu-->
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu"><i
                class="fa fa-user fa-lg"></i></a>
            <ul class="dropdown-menu settings-menu dropdown-menu-right">
                <li><a class="dropdown-item" href="page-user"><i class="fa fa-cog fa-lg"></i> Settings</a></li>
                <li><a class="dropdown-item" href="page-user"><i class="fa fa-user fa-lg"></i> Profile</a></li>
                <li><a class="dropdown-item" href="page-login"><i class="fa fa-sign-out fa-lg"></i> Logout</a></li>
            </ul>
        </li>
    </ul>
</header>
<!-- Sidebar menu-->
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">
    <div class="app-sidebar__user"><img class="app-sidebar__user-avatar"
                                        src="https://s3.amazonaws.com/uifaces/faces/twitter/jsa/48.jpg"
                                        alt="User Image">
        <div>
            <p class="app-sidebar__user-name">John Doe</p>
            <p class="app-sidebar__user-designation">Frontend Developer</p>
        </div>
    </div>
    <ul class="app-menu">
        <li><a class="app-menu__item" href="index"><i class="app-menu__icon fa fa-dashboard"></i><span
                class="app-menu__label">Dashboard</span></a></li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i
                class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">UI Elements</span><i
                class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="bootstrap-components"><i class="icon fa fa-circle-o"></i> Bootstrap
                    Elements</a></li>
                <li><a class="treeview-item" href="https://fontawesome.com/v4.7.0/icons/" target="_blank"
                       rel="noopener"><i class="icon fa fa-circle-o"></i> Font Icons</a></li>
                <li><a class="treeview-item" href="ui-cards"><i class="icon fa fa-circle-o"></i> Cards</a></li>
                <li><a class="treeview-item" href="widgets"><i class="icon fa fa-circle-o"></i> Widgets</a></li>
            </ul>
        </li>
        <li><a class="app-menu__item" href="charts"><i class="app-menu__icon fa fa-pie-chart"></i><span
                class="app-menu__label">Charts</span></a></li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i
                class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">Forms</span><i
                class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="form-components"><i class="icon fa fa-circle-o"></i> Form Components</a>
                </li>
                <li><a class="treeview-item" href="form-custom"><i class="icon fa fa-circle-o"></i> Custom
                    Components</a></li>
                <li><a class="treeview-item" href="form-samples"><i class="icon fa fa-circle-o"></i> Form Samples</a>
                </li>
                <li><a class="treeview-item" href="form-notifications"><i class="icon fa fa-circle-o"></i> Form
                    Notifications</a></li>
            </ul>
        </li>
        <li class="treeview is-expanded"><a class="app-menu__item" href="#" data-toggle="treeview"><i
                class="app-menu__icon fa fa-th-list"></i><span class="app-menu__label">Tables</span><i
                class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="table-basic"><i class="icon fa fa-circle-o"></i> Basic Tables</a>
                </li>
                <li><a class="treeview-item active" href="table-data-table"><i class="icon fa fa-circle-o"></i> Data
                    Tables</a></li>
            </ul>
        </li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i
                class="app-menu__icon fa fa-file-text"></i><span class="app-menu__label">Pages</span><i
                class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="blank-page"><i class="icon fa fa-circle-o"></i> Blank Page</a></li>
                <li><a class="treeview-item" href="page-login"><i class="icon fa fa-circle-o"></i> Login Page</a></li>
                <li><a class="treeview-item" href="page-lockscreen"><i class="icon fa fa-circle-o"></i> Lockscreen Page</a>
                </li>
                <li><a class="treeview-item" href="page-user"><i class="icon fa fa-circle-o"></i> User Page</a></li>
                <li><a class="treeview-item" href="page-invoice"><i class="icon fa fa-circle-o"></i> Invoice Page</a>
                </li>
                <li><a class="treeview-item" href="page-calendar"><i class="icon fa fa-circle-o"></i> Calendar Page</a>
                </li>
                <li><a class="treeview-item" href="page-mailbox"><i class="icon fa fa-circle-o"></i> Mailbox</a></li>
                <li><a class="treeview-item" href="page-error"><i class="icon fa fa-circle-o"></i> Error Page</a></li>
            </ul>
        </li>
    </ul>
</aside>
<main class="app-content">
    <div class="app-title">
        <div>
            <h1><i class="fa fa-th-list"></i> Data Table</h1>
            <p>Table to display analytical data effectively</p>
        </div>
        <ul class="app-breadcrumb breadcrumb side">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <li class="breadcrumb-item">Tables</li>
            <li class="breadcrumb-item active"><a href="#">Data Table</a></li>
        </ul>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="tile">
                <div class="tile-body">
                    <div id="toolbar" class="btn-group">
                        <button id="btnAdd" class="btn btn-success" type="button">新增</button>
                    </div>
                    <table id="table" class="table table-striped"></table>
                </div>
            </div>
        </div>
    </div>

    <%--添加模态框开始--%>
    <div class="modal fade" id="addModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <%--模态框头部--%>
                <div class="modal-header">
                    <h4 class="modal-title">添加用户</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <%--模态框主体--%>
                <div class="modal-body">
                    <form id="addForm">
                        <div class="form-group">
                            <label class="control-label">用户名</label>
                            <input id="username" name="username" class="form-control" type="text" placeholder="请填入用户名">
                        </div>
                        <div class="form-group">
                            <label class="control-label">密码</label>
                            <input id="password" name="password" class="form-control" type="password"
                                   placeholder="请输入密码">
                        </div>
                        <div class="form-group">
                            <label class="control-label">出生日期</label>
                            <input class="form-control" type="text" id="birthday" name="birthday">
                        </div>
                        <fieldset class="form-group">
                            <label class="control-label">性别</label>
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input class="form-check-input" id="optionsRadios1" type="radio" name="sex"
                                           value="0" checked="">男
                                </label>
                                <label class="form-check-label" style="margin-left: 50px">
                                    <input class="form-check-input" id="optionsRadios2" type="radio" name="sex"
                                           value="1">女
                                </label>
                            </div>
                        </fieldset>
                        <div class="form-group">
                            <label class="control-label">国籍</label>
                            <input class="form-control" type="text" id="country" name="country">
                        </div>
                    </form>
                </div>
                <%--模态框底部--%>
                <div class="modal-footer">
                    <button id="btnAddCommit" type="button" class="btn btn-primary">提交</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
    <%--添加模态框结束--%>
    <%--编辑模态框开始--%>
    <div class="modal fade" id="editModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <%--模态框头部--%>
                <div class="modal-header">
                    <h4 class="modal-title">编辑用户</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <%--模态框主体--%>
                <div class="modal-body">
                    <form id="editForm">
                        <input type="hidden" name="id"/>
                        <div class="form-group">
                            <label class="control-label">用户名</label>
                            <input name="username" class="form-control" type="text" placeholder="请填入用户名">
                        </div>
                        <div class="form-group">
                            <label class="control-label">出生日期</label>
                            <input class="form-control" type="text" name="birthday">
                        </div>
                        <fieldset class="form-group">
                            <label class="control-label">性别</label>
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input class="form-check-input" type="radio" name="sex"
                                           value="0">男
                                </label>
                                <label class="form-check-label" style="margin-left: 50px">
                                    <input class="form-check-input" type="radio" name="sex"
                                           value="1">女
                                </label>
                            </div>
                        </fieldset>
                        <div class="form-group">
                            <label class="control-label">国籍</label>
                            <input class="form-control" type="text" name="country">
                        </div>
                    </form>
                </div>
                <%--模态框底部--%>
                <div class="modal-footer">
                    <button id="btnEditCommit" type="button" class="btn btn-primary">更改</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
    <%--编辑模态框结束--%>
</main>
<!-- Essential javascripts for application to work-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<!-- The javascript plugin to display page loading on top-->
<script src="js/plugins/pace.min.js"></script>
<!-- Page specific javascripts-->
<!-- Data table plugin-->
<script src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/locale/bootstrap-table-zh-CN.min.js"></script>
<%--时间控件js--%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment-with-locales.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript">
    //转换日期格式(时间戳毫秒数转换为datetime格式)
    function changeDateFormat(cellval) {
        var dateVal = cellval + "";
        if (cellval != null) {
            var date = new Date(parseInt(dateVal.replace("/Date(", "").replace(")/", ""), 10));
            var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
            var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();
            return date.getFullYear() + "-" + month + "-" + currentDate;
        }
    }
    //添加操作按钮
    function addOperFunction() {
        return [
            '<button id="btnEdit" class="btn btn-primary" type="button">编辑</button>&nbsp;&nbsp;&nbsp;',
            '<button id="btnDelete" class="btn btn-danger" type="button">删除</button>'
        ].join("");
    }
    //操作按钮事件
    window.operateEvents = {
        "click #btnEdit": function (e, value, row, index) {
            $.get(
                'user/' + row.id,
                function (data) {
                    $('#editForm [name=username]').val(data.username);
                    $('#editForm [name=birthday]').val(changeDateFormat(data.birthday));
                    $('#editForm [type=radio][value='+data.sex+']').attr("checked",true);
                    $('#editForm [name=country]').val(data.country);
                    $('#editForm [name=id]').val(data.id);
                },
                'json'
            );
            //点击编辑按钮事件
            var dialog = $('#editModal').modal({
                backdrop: 'static',
                keyboard: false
            });
            dialog.modal('show');
        },
        "click #btnDelete": function (e, value, row, index) {
            //点击删除按钮事件
            //$(this).parent().parent().remove();
            //异步请求删除记录
            $.post(
                'user/' + row.id,
                {'_method': 'DELETE'},
                function (data) {
                    if (data > 0) {
                        $('#table').bootstrapTable(('refresh'));
                    }
                },
            );
        }
    };
    //页面加载内容
    $(function () {
        //初始化新增模态框日期控件
        $('#birthday').datetimepicker({
            format: 'YYYY-MM-DD',
            locale: moment.locale('zh-cn')
        });
        //初始化编辑模态框日期控件
        $('#editForm [name=birthday]').datetimepicker({
            format: 'YYYY-MM-DD',
            locale: moment.locale('zh-cn')
        });
        //新增按钮点击事件
        $("#btnAdd").click(function () {
            var dialog = $('#addModal').modal({
                backdrop: 'static',
                keyboard: false
            });
            dialog.modal('show');
        });
        //初始化bootstrap-table插件
        $('#table').bootstrapTable({
            method: 'post',
            url: 'users',
            columns: [{
                checkbox: true
            }, {
                field: 'id',
                title: '人员编号'
            }, {
                field: 'username',
                title: '用户名'
            }, {
                field: 'birthday',
                title: '出生日期',
                formatter: function (value) {
                    return changeDateFormat(value);
                }
            }, {
                field: 'button',
                title: '操作',
                formatter: addOperFunction,
                events: operateEvents
            }],
            pagination: true,
            pageNumber: 1,
            pageSize: 2,
            pageList: [2, 5, 10],
            toolbar: '#toolbar',
            search: true,
            searchOnEnterKey: true,
            paginationPreText: "上一页",
            paginationNextText: "下一页",
            sidePagination: 'server'
        });
        //add模态框中提交事件
        $("#btnAddCommit").click(function () {
            $.post(
                'user',
                $("#addForm").serialize(),
                function (data) {
                    $('#addModal').modal('hide');
                    if (data > 0) {
                        $('#table').bootstrapTable(('refresh'));
                    }
                }
            );
        });
        //edit模态框中更改事件
        $("#btnEditCommit").click(function(){
            $.ajax({
                url: 'user',
                data: $("#editForm").serialize(),
                type: 'PUT',
                contentType : "application/x-www-form-urlencoded; charset=UTF-8",
                success: function (data) {
                    $('#editModal').modal('hide');
                    if (data > 0) {
                        $('#table').bootstrapTable(('refresh'));
                    }
                }
            });

        });
    });
</script>
<!-- Google analytics script-->
<script type="text/javascript">
    if (document.location.hostname == 'pratikborsadiya.in') {
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-72504830-1', 'auto');
        ga('send', 'pageview');
    }
</script>
</body>
</html>