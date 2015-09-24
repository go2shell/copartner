<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
	<title>课程编辑</title>
	<link href="${cdn}css/video-js.css" rel="stylesheet" type="text/css">
	<script src="${cdn}js/video.js"></script>
</head>
<body>
	<div class="mainbar">
		<div class="page-head">
			<h2 class="pull-left">课程管理</h2>
			<div class="bread-crumb pull-right">
				<a class="btn btn-default btn-sm" href="/course/add">新建课程</a>
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
								<div class="pull-left">编辑课程</div>
								<div class="clearfix"></div>
							</div>
							<div class="widget-content">
								<div class="padd">
									<form id="edit_course_form" class="form-horizontal" role="form" action="/course/update/${course.id}" method="post" enctype="multipart/form-data">
										<div class="form-group">
											<label class="col-lg-5 control-label" for="name">课程名称<span class="cofrequired">*</span>:</label>
											<div class="col-lg-7">
												<input name="name" id="name" value="${course.name}" type="text" class="form-control" placeholder="课程名称"></input>
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-5 control-label" for="speaker">主讲人<span class="cofrequired">*</span>:</label>
											<div class="col-lg-7">
												<input name="speaker" id="speaker" value="${course.speaker}" type="text" class="form-control" placeholder="主讲人"></input>
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-5 control-label" for="synopsis">摘要<span class="cofrequired">*</span>:</label>
											<div class="col-lg-7">
												<textarea name="synopsis" id="synopsis" class="form-control" rows="3" placeholder="摘要">${course.synopsis}</textarea>
												<!-- <input name="synopsis" id="synopsis" value="${course.synopsis}" type="text" class="form-control" placeholder="摘要"></input> -->
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-5 control-label" for="time">时长(分钟)<span class="cofrequired">*</span>:</label>
											<div class="col-lg-7">
												<input name="time" id="time" value="${course.time}" type="text" class="form-control" placeholder="时长(分钟)"></input>
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-5 control-label" for="status">状态<span class="cofrequired">*</span>:</label>
											<div class="col-lg-7">
												<jsp:include page="control/commons-status.jsp">
													<jsp:param value="${course.status}" name="status"/>
													<jsp:param value="false" name="has_all"/>
													<jsp:param value="false" name="update"/>
												</jsp:include>
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-5 control-label" for="free">是否免费<span class="cofrequired">*</span>:</label>
											<div class="col-lg-7">
												<select id="free" class="form-control" name="free">
													<option value="1" <c:if test="${course.isFree}"> selected="selected" </c:if> >免费</option>
													<option value="0" <c:if test="${!course.isFree}"> selected="selected" </c:if> >非免费</option>
												</select>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-lg-5 control-label">封皮:</label>
											<div class="col-lg-7">
											<img alt="${course.name}" src="${cdnDomain}${course.coverImg}" width="500">
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-5 control-label" for="coverImg">封皮:</label>
											<div class="col-lg-7">
												<input name="coverImg" id="coverImg" type="file" class="form-control" placeholder="封皮"></input>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-lg-5 control-label">视频:</label>
											<div class="col-lg-7">
											  <video id="cop.video.media" class="video-js vjs-default-skin" controls preload="none" width="500" height="300"
											      poster="${cdnDomain}${course.url}?vframe/jpg/offset/0/w/600/h/600"
											      data-setup="{}">
											    <source src="${cdnDomain}${course.url}" type='video/mp4' />
											    <source src="${cdnDomain}${course.url}" type='video/webm' />
											    <source src="${cdnDomain}${course.url}" type='video/ogg' />
											  </video>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-lg-5 control-label" for="media">视频:</label>
											<div class="col-lg-7">
												<input name="media" id="media" type="file" class="form-control" placeholder="视频"></input>
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
	
	<script>
		$(document).ready(function() {
			$('#name').focus();
	        $('#edit_course_form').validate({
	        	onsubmit:true,
        	  	onfocusout:false,
        	  	onkeyup:false,
        	  	onkeyup:false,
        	  	onclick:false,
	            rules: {
	            	name: {
	                    required: true,
	                    minlength: 2,
	                    maxlength: 64
	                },
	                speaker: {
	                	required: true,
	                    minlength: 2,
	                    maxlength: 20
	                },
	                synopsis: {
	                	required: true,
	                    minlength: 2,
	                    maxlength: 256
	                },
	                time: {
	                	required: true,
	                	digits: true
	                }
	            },
	            messages: {
	            	name: {
	                    required: '名称不能为空',
	                    minlength: "名称长度不能小于2个字符",
	                    maxlength: "名称长度不能大于64个字符"
	                },
	                speaker: {
	                    required: '主讲人不能为空',
	                    minlength: "主讲人长度不能小于2个字符",
	                    maxlength: "主讲人长度不能大于20个字符"
	                },
	                synopsis: {
	                    required: '摘要不能为空',
	                    minlength: "摘要长度不能小于2个字符",
	                    maxlength: "摘要长度不能大于256个字符"
	                },
	                time: {
	                    required: '时长不能为空',
	                    digits: "只能输入整数"
	                }
	            },
	            submitHandler: function(form) {
	                form.submit();
	            }
	        });
		});
	</script>
	
</body>
