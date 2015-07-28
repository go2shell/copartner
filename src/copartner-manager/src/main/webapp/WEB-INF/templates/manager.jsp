<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
	<meta charset="UTF-8" />
	<meta name="keywords" content="dap" />
	<meta name="description" content="dap" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="author" content="andpay.me" />
	<title>创客管理平台--资源管理</title>

	<link rel="stylesheet" href="${cdn}css/bootstrap.css"></link>
	<link rel="stylesheet" href="${cdn}css/font-awesome.css"></link>
	<link rel="stylesheet" href="${cdn}css/jquery-ui.css"></link>
	<link rel="stylesheet" href="${cdn}css/fullcalendar.css"></link>
	<link rel="stylesheet" href="${cdn}css/prettyPhoto.css"></link>
	<link rel="stylesheet" href="${cdn}css/rateit.css"></link>
	<link rel="stylesheet" href="${cdn}css/bootstrap-datetimepicker.min.css"></link>
	<link rel="stylesheet" href="${cdn}css/jquery.cleditor.css"></link>
	<link rel="stylesheet" href="${cdn}css/uniform.default.css"></link>
	<link rel="stylesheet" href="${cdn}css/bootstrap-switch.css"></link>
	<link rel="stylesheet" href="${cdn}css/style.css"></link>
	<link rel="stylesheet" href="${cdn}css/widgets.css"></link>
	
	<!--[if lt IE 9]>
	<script src="${cdn}js/html5shim.js"></script>
	<![endif]-->

	<link rel="Shortcut Icon" href="${cdn}image/icon.png" />

</head>
<body>
	<jsp:include page="control/header.jsp" />
	<div class="content">
		<jsp:include page="control/sidebar.jsp"></jsp:include>
		<div class="mainbar">
			<div class="page-head">
				<h2 class="pull-left">资源管理</h2>
				<div class="bread-crumb pull-right">
					<a class="btn btn-default btn-sm" href="add">资源管理</a>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="matter">
				<div class="container">
					<!--row start-->
					<div class="row">
						<div class="col-md-4">
				          <ul class="nav nav-pills">
				          
				            <li class="dropdown dropdown-big">
				              <a class="dropdown-toggle" href="#" data-toggle="dropdown">
				                <i class="icon-comments"></i>行业管理<span class="label label-info">2</span> 
				              </a>
				                <ul class="dropdown-menu">
				                  <li>
				                    <h6><a href="/industry/list">行业列表</a></h6>
				                    <div class="clearfix"></div>
				                    <hr />
				                  </li>
				                  <li>
				                    <h6><a href="/industry/add">新建行业</a></h6>
				                    <div class="clearfix"></div>
				                    <hr />
				                  </li>
				                </ul>
				            </li>
				            <li class="dropdown dropdown-big">
				              <a class="dropdown-toggle" href="#" data-toggle="dropdown">
				                <i class="icon-envelope-alt"></i>项目阶段管理<span class="label label-primary">2</span> 
				              </a>
				                <ul class="dropdown-menu">
				                  <li>
				                    <h6><a href="/phase/list">项目阶段列表</a></h6>
				                    <div class="clearfix"></div>
				                    <hr />
				                  </li>
				                  <li>
				                    <h6><a href="/phase/add">添加项目阶段</a></h6>
				                    <div class="clearfix"></div>
				                    <hr />
				                  </li>
				                </ul>
				            </li>
				            <li class="dropdown dropdown-big">
				              <a class="dropdown-toggle" href="#" data-toggle="dropdown">
				                <i class="icon-envelope-alt"></i>角色管理<span class="label label-primary">2</span> 
				              </a>
				                <ul class="dropdown-menu">
				                  <li>
				                    <h6><a href="/role/list">角色列表</a></h6>
				                    <div class="clearfix"></div>
				                    <hr />
				                  </li>
				                  <li>
				                    <h6><a href="/role/add">添加角色</a></h6>
				                    <div class="clearfix"></div>
				                    <hr />
				                  </li>
				                </ul>
				            </li>
				            <li class="dropdown dropdown-big">
				              <a class="dropdown-toggle" href="#" data-toggle="dropdown">
				                <i class="icon-envelope-alt"></i>状态管理<span class="label label-primary">2</span> 
				              </a>
				                <ul class="dropdown-menu">
				                  <li>
				                    <h6><a href="/status/list">状态列表</a></h6>
				                    <div class="clearfix"></div>
				                    <hr />
				                  </li>
				                  <li>
				                    <h6><a href="/status/add">添加状态</a></h6>
				                    <div class="clearfix"></div>
				                    <hr />
				                  </li>
				                </ul>
				            </li>
				          </ul>
				        </div>
					</div>
					<!--row end-->
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>

	<!--
	<jsp:include page="control/copy-rights.jsp" />
	-->

	<script src="${cdn}js/jquery.js"></script>
	<script src="${cdn}js/bootstrap.js"></script>
	<script src="${cdn}js/jquery-ui-1.9.2.custom.min.js"></script>
	<script src="${cdn}js/fullcalendar.min.js"></script>
	<script src="${cdn}js/jquery.rateit.min.js"></script>
	<script src="${cdn}js/jquery.prettyPhoto.js"></script>
	<script src="${cdn}js/excanvas.min.js"></script>
	<script src="${cdn}js/jquery.flot.js"></script>
	<script src="${cdn}js/jquery.flot.resize.js"></script>
	<script src="${cdn}js/jquery.flot.pie.js"></script>
	<script src="${cdn}js/jquery.flot.stack.js"></script>
	<script src="${cdn}js/jquery.noty.js"></script>
	<script src="${cdn}js/themes/default.js"></script>
	<script src="${cdn}js/layouts/bottom.js"></script>
	<script src="${cdn}js/layouts/topRight.js"></script>
	<script src="${cdn}js/layouts/top.js"></script>
	<script src="${cdn}js/sparklines.js"></script>
	<script src="${cdn}js/jquery.cleditor.min.js"></script>
	<script src="${cdn}js/bootstrap-datetimepicker.min.js"></script>
	<script src="${cdn}js/jquery.uniform.min.js"></script>
	<script src="${cdn}js/bootstrap-switch.min.js"></script>
	<script src="${cdn}js/filter.js"></script>
	<script src="${cdn}js/custom.js"></script>
	<script src="${cdn}js/charts.js"></script>
	<script src="${cdn}js/ckeditor/ckeditor.js" type="text/javascript"></script>
	<script type="text/javascript">
	    $(function() {
	        CKEDITOR.replace("article");
	    });
	</script>
</body>
</html>