<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/2
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  //获取绝对路径路径
  String path = request.getContextPath();

  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
          + path + "/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <base href="<%=basePath%>" />
  <meta charset="utf-8" />
  <title>CRM - 客户关系管理系统</title>
  <meta name="keywords" content="CRM" />
  <meta name="description" content="CRM" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <!-- basic styles -->
  <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="assets/css/font-awesome.min.css" />

  <!--[if IE 7]>
  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
  <![endif]-->

  <!-- page specific plugin styles -->

  <!-- fonts

  <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />-->

  <!-- ace styles -->

  <link rel="stylesheet" href="assets/css/ace.min.css" />
  <link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
  <link rel="stylesheet" href="assets/css/ace-skins.min.css" />


  <script src="assets/js/ace-extra.min.js"></script>
  <script src="assets/js/jquery-2.0.3.min.js"></script>

</head>

<body>
<div class="navbar navbar-default" id="navbar" >
  <script type="text/javascript">
      try{ace.settings.check('navbar' , 'fixed')}catch(e){}
  </script>

  <div class="navbar-container" id="navbar-container">
    <div class="navbar-header pull-left">
      <a href="#" class="navbar-brand">
        <small>
          <i class="icon-leaf"></i>
          CRM - 客户关系管理系统
        </small>
      </a><!-- /.brand -->
    </div><!-- /.navbar-header -->

    <div class="navbar-header pull-right" role="navigation">
      <ul class="nav ace-nav">

        <li class="light-blue">
          <a data-toggle="dropdown" href="#" class="dropdown-toggle">
            <img class="nav-user-photo" src="assets/avatars/user.jpg" alt="Jason's Photo" />
            <span class="user-info">
									<small>欢迎光临,</small>
									Jason
								</span>

            <i class="icon-caret-down"></i>
          </a>

          <ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">

            <li>
              <a href="#"  data-toggle="modal" data-target="#myModal">
                <i class="icon-user"></i>
                个人资料
              </a>
            </li>

            <li class="divider"></li>

            <li>
              <a href="#">
                <i class="icon-off"></i>
                退出
              </a>
            </li>
          </ul>
        </li>
      </ul><!-- /.ace-nav -->
    </div><!-- /.navbar-header -->
  </div><!-- /.container -->
</div>


<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">个人信息</h4>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col-xs-12">
            <div class="form-group">
              <label class="col-sm-1 control-label no-padding-right" for="form-field-1">编号</label>
              <div class="col-sm-4">
                <input type="text" id="form-field-1" placeholder="编号" class="col-xs-12 col-sm-12" />
              </div>

              <label class="col-sm-1 control-label no-padding-right" for="form-field-2">账号</label>
              <div class="col-sm-4">
                <input type="text" id="form-field-2" placeholder="账号" class="col-xs-12 col-sm-12" />
              </div>
            </div>
          </div>
          <div class="form-group">
            <div class="space-4"></div>
            <label class="col-sm-1 control-label no-padding-right" for="form-field-11">职位</label>
            <div class="col-sm-4">
              <input type="text" id="form-field-11" placeholder="职位" class="col-xs-12 col-sm-12" />
            </div>

            <label class="col-sm-1 control-label no-padding-right" for="form-field-21">邮件</label>
            <div class="col-sm-4">
              <input type="text" id="form-field-21" placeholder="邮件" class="col-xs-12 col-sm-12" />
            </div>
          </div>
          <div class="space-4"></div>
        </div>
      </div>
    </div>
    <div class="modal-footer">
      <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
    </div>
  </div>
</div>
</div>
<!-- start Modal -->



<div class="main-container" id="main-container">
  <script type="text/javascript">
      try{ace.settings.check('main-container' , 'fixed')}catch(e){}
  </script>

  <div class="main-container-inner">
    <a class="menu-toggler" id="menu-toggler" href="#">
      <span class="menu-text"></span>
    </a>

    <div class="sidebar" id="sidebar">
      <script type="text/javascript">
          try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
      </script>

      <div class="sidebar-shortcuts" id="sidebar-shortcuts">
        <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
          <button class="btn btn-success">
            <i class="icon-signal"></i>
          </button>

          <button class="btn btn-info">
            <i class="icon-pencil"></i>
          </button>

          <button class="btn btn-warning">
            <i class="icon-group"></i>
          </button>

          <button class="btn btn-danger">
            <i class="icon-cogs"></i>
          </button>
        </div>

        <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
          <span class="btn btn-success"></span>

          <span class="btn btn-info"></span>

          <span class="btn btn-warning"></span>

          <span class="btn btn-danger"></span>
        </div>
      </div><!-- #sidebar-shortcuts -->

      <ul class="nav nav-list">
        <li class="active">
          <a href="main.html" target="mainframe">
            <i class="icon-dashboard"></i>
            <span class="menu-text"> 控制台 </span>
          </a>
        </li>

        <li>
          <a href="#" class="dropdown-toggle">
            <i class="icon-desktop"></i>
            <span class="menu-text"> 营销管理 </span>

            <b class="arrow icon-angle-down"></b>
          </a>

          <ul class="submenu">
            <li>
              <a href="marketing_chance/marketing_chance.html" target="mainframe">
                <i class="icon-double-angle-right"></i>
                营销机会管理
              </a>
            </li>

            <li>
              <a href="customer_plan/designated_plan.html"  target="mainframe">
                <i class="icon-double-angle-right"></i>
                客户开发计划
              </a>
            </li>

          </ul>
        </li>

        <li>
          <a href="javascript:void(0)" class="dropdown-toggle">
            <i class="icon-group"></i>
            <span class="menu-text"> 客户管理 </span>

            <b class="arrow icon-angle-down"></b>
          </a>

          <ul class="submenu" >
            <li>
              <a href="customer_manage/customer_message.html"  target="mainframe">
                <i class="icon-double-angle-right"></i>
                客户信息管理
              </a>
            </li>

            <li>
              <a href="customer_loss/customer_loss.html"  target="mainframe" >
                <i class="icon-double-angle-right"></i>
                客户流失管理
              </a>
            </li>
          </ul>
        </li>

        <li>
          <a href="javascript:void(0)" class="dropdown-toggle">
            <i class="icon-edit"></i>
            <span class="menu-text"> 服务管理 </span>

            <b class="arrow icon-angle-down"></b>
          </a>

          <ul class="submenu">
            <li>
              <a href="service_manage/add_service.html" target="mainframe">
                <i class="icon-double-angle-right"></i>
                服务创建
              </a>
            </li>

            <li>
              <a href="service_manage/distribute_service.html" target="mainframe">
                <i class="icon-double-angle-right"></i>
                服务分配
              </a>
            </li>

            <li>
              <a href="service_manage/handle_service.html" target="mainframe">
                <i class="icon-double-angle-right"></i>
                服务处理
              </a>
            </li>

            <li>
              <a href="service_manage/feedback_service.html" target="mainframe">
                <i class="icon-double-angle-right"></i>
                服务反馈
              </a>
            </li>
            <li>
              <a href="service_manage/file_service.html" target="mainframe">
                <i class="icon-double-angle-right"></i>
                服务归档
              </a>
            </li>
          </ul>
        </li>

        <li>
          <a href="#" class="dropdown-toggle">
            <i class="icon-dashboard"></i>
            <span class="menu-text"> 报表统计 </span>
            <b class="arrow icon-angle-down"></b>
          </a>

          <ul class="submenu">
            <li>
              <a href="report_forms/service_forms.html" target="mainframe">
                <i class="icon-double-angle-right"></i>
                客户服务分析
              </a>
            </li>

            <li>
              <a href="report_forms/structure_forms.html" target="mainframe">
                <i class="icon-double-angle-right"></i>
                客户构建分析
              </a>
            </li>

            <li>
              <a href="report_forms/report_forms.html" target="mainframe">
                <i class="icon-double-angle-right"></i>
                客户贡献分析
              </a>
            </li>

            <li>
              <a href="report_forms/loss_forms.html" target="mainframe">
                <i class="icon-double-angle-right"></i>
                客户流失分析
              </a>
            </li>
          </ul>
        </li>

        <li>
          <a href="#" class="dropdown-toggle">
            <i class="icon-tag"></i>
            <span class="menu-text"> 基本数据 </span>

            <b class="arrow icon-angle-down"></b>
          </a>

          <ul class="submenu">
            <li>
              <a href="main_data/data_manage.html" target="mainframe">
                <i class="icon-double-angle-right"></i>
                数据字典管理
              </a>
            </li>

            <li>
              <a href="main_data/product_manage.html" target="mainframe">
                <i class="icon-double-angle-right"></i>
                查询产品信息
              </a>
            </li>

            <li>
              <a href="main_data/stock_product_manage.html" target="mainframe">
                <i class="icon-double-angle-right"></i>
                查询库存
              </a>
            </li>
          </ul>
        </li>


      </ul><!-- /.nav-list -->

      <div class="sidebar-collapse" id="sidebar-collapse">
        <i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
      </div>

      <script type="text/javascript">
          try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
      </script>
    </div>

    <div class="main-content" >

      <iframe id="mainframe" name="mainframe" src="main.html"
              style="width: 100%;border: 0px;"> </iframe>


    </div>

    <div class="ace-settings-container" id="ace-settings-container">
      <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
        <i class="icon-cog bigger-150"></i>
      </div>

      <div class="ace-settings-box" id="ace-settings-box">
        <div>
          <div class="pull-left">
            <select id="skin-colorpicker" class="hide">
              <option data-skin="default" value="#438EB9">#438EB9</option>
              <option data-skin="skin-1" value="#222A2D">#222A2D</option>
              <option data-skin="skin-2" value="#C6487E">#C6487E</option>
              <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
            </select>
          </div>
          <span>&nbsp; 选择皮肤</span>
        </div>

        <div>
          <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
          <label class="lbl" for="ace-settings-navbar"> 固定导航条</label>
        </div>

        <div>
          <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
          <label class="lbl" for="ace-settings-sidebar"> 固定滑动条</label>
        </div>

        <div>
          <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
          <label class="lbl" for="ace-settings-breadcrumbs">固定面包屑</label>
        </div>

        <div>
          <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
          <label class="lbl" for="ace-settings-rtl">切换到左边</label>
        </div>

        <div>
          <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
          <label class="lbl" for="ace-settings-add-container">
            切换窄屏
            <b></b>
          </label>
        </div>
      </div>
    </div><!-- /#ace-settings-container -->
  </div><!-- /.main-container-inner -->

  <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
    <i class="icon-double-angle-up icon-only bigger-110"></i>
  </a>
</div><!-- /.main-container -->


</body>
<script type="text/javascript">
    var height = jQuery(window).height() - 50;
    jQuery("#mainframe").prop("height", "" + height + "px;");
</script>
<!-- basic scripts -->

<!--[if !IE]> -->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

<!--	<script type="text/javascript">
			window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>"+"<"+"script>");
		</script>
-->

<script type="text/javascript">
    if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"script>");
</script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/typeahead-bs2.min.js"></script>


<script src="assets/js/jquery-ui-1.10.3.custom.min.js"></script>
<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
<script src="assets/js/jquery.slimscroll.min.js"></script>
<script src="assets/js/jquery.easy-pie-chart.min.js"></script>
<script src="assets/js/jquery.sparkline.min.js"></script>
<script src="assets/js/flot/jquery.flot.min.js"></script>
<script src="assets/js/flot/jquery.flot.pie.min.js"></script>
<script src="assets/js/flot/jquery.flot.resize.min.js"></script>


<script src="assets/js/ace-elements.min.js"></script>
<script src="assets/js/ace.min.js"></script>



</html>

