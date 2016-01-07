<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/WEB-INF/ti-tags.tld" prefix="t"%>
<head>
	<title>导师列表</title>
</head>
<body>
	<div class="mainbar">
		<div class="page-head">
			<h2 class="pull-left">导师管理</h2>
			<div class="bread-crumb pull-right">
                <a class="btn btn-default btn-sm" href="/tutor/add">新建导师</a>
            </div>
			<div class="clearfix"></div>
		</div>
		<div class="matter">
			<div class="container">
				<!-- row start -->
				<div class="row">
					<div class="col-md-12">
						<div class="widget">
							<div class="widget-head">
								<div class="pull-left">导师列表</div>
								<div class="clearfix"></div>
							</div>
							<div class="widget-content">
								<table class="table table-striped table-bordered table-hover">
									<thead>
										<tr>
											<th>姓名</th>
											<th>电话</th>
											<th>职务</th>
											<th>类型</th>
											<th>领域</th>
											<th>管理经验</th>
											<th>创业经验</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
										<c:if test="${!success}">
											<tr><td colspan="12" style="text-align: center;">空空如也!!!</td></tr>
										</c:if>
										<c:if test="${success}">
											<c:forEach var="c" items="${tutors}" varStatus="status">
												<tr>
													<td>${c.name}</td>
													<td>${c.mobile}</td>
													<td>${c.title}</td>
													<td>${c.professionName}</td>
													<td>${c.domain}</td>
													<td>${c.managementExp}</td>
													<td>${c.startupExp}</td>
													<td>
														<div class="btn-group">
															<a class="btn btn-xs btn-default" href="edit/${c.tutorId}">
																编辑
															</a>
														</div>
													</td>
												</tr>
											</c:forEach>
										</c:if>
									</tbody>
								</table>
								<jsp:include page="control/pagination.jsp"/>
							</div>
						</div>
						
					</div>
				</div>
				<!-- row end -->
			</div>
		</div>
	</div>
</body>
