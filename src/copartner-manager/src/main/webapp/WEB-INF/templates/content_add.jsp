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
	<title>创客管理平台--新建文章</title>

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

	<link rel="Shortcut Icon" href="${cdn}image/shoseicon64px.png" />

</head>
<body>
	<jsp:include page="control/header.jsp" />
	<div class="content">
		<jsp:include page="control/sidebar.jsp"></jsp:include>
		<div class="mainbar">
			<div class="page-head">
				<h2 class="pull-left">新建文章</h2>
				<div class="bread-crumb pull-right">
					<a href="/content/list"><i class="icon-home"></i>首页</a><span class="divider">/</span>新建文章
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="matter">
				<div class="container">
					<!--row start-->
					<div class="row">
						<div class="col-md-12">
							<div class="widget wgreen">
								<div class="widget-head">
									<div class="pull-left">新建文章</div>
									<div class="widget-icons pull-right">
										<a href="#" class="wminimize"><i class="icon-chevron-up"></i></a>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="widget-content">
									<div class="padd">
										<form class="form-horizontal" role="form" action="save" method="post" enctype="multipart/form-data">
											<div class="form-group">
												<label class="col-lg-5 control-label" for="title">标题:</label>
												<div class="col-lg-7">
													<input name="title" id="title" type="text" class="form-control" placeholder="标题"></input>
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-5 control-label" for="type">类型:</label>
												<div class="col-lg-7">
													<select id="type" class="form-control" name="type">
													  <option value="1">政策解读</option>
													  <option value="2">公共资源</option>
													</select>
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-5 control-label" for="status">状态:</label>
												<div class="col-lg-7">
													<select id="status" class="form-control" name="status">
													  <option value="active">激活</option>
													  <option value="inactive">无效</option>
													  <option value="deleted">已删除</option>
													</select>
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-5 control-label" for="synopsis">摘要:</label>
												<div class="col-lg-7">
													<input name="synopsis" id="synopsis" type="text" class="form-control" placeholder="摘要"></input>
												</div>
											</div>
											
											<div class="form-group">
												<label class="col-lg-5 control-label">封皮:</label>
												<div class="col-lg-7">
												<img alt="${content.title}" src="${content.coverImg}"  width="500">
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-5 control-label" for="coverImg">封皮:</label>
												<div class="col-lg-7">
													<input name="coverImg" id="coverImg" type="file" class="form-control" placeholder="封皮"></input>
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-5 control-label" for="article">内容:</label>
												<div class="col-lg-7">
													<textarea name="article" id="article" class="form-control" rows="3" placeholder="内容"></textarea>
												</div>
											</div>
											
											<hr />
											
											<div class="form-group">
												<div class="col-lg-offset-1 col-lg-9">
													<button type="submit" class="btn btn-default">提交</button>
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="widget-foot"></div>
							</div>
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
	
	<script type="text/javascript">
	$(document).ready(function(){
	});
	</script>

</body>
</html>