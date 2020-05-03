<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人博客系统</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap3/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap3/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/blog.css">
<link href="${pageContext.request.contextPath}/favicon.ico" rel="SHORTCUT ICON">
<script src="${pageContext.request.contextPath}/static/bootstrap3/js/jquery-1.11.2.min.js"></script>
<script src="${pageContext.request.contextPath}/static/bootstrap3/js/bootstrap.min.js"></script>


<style type="text/css">
	  body {
        padding-top: 10px;
        padding-bottom: 40px;
      }
</style>
</head>
<body>
<div class="container">
	<jsp:include page="foreground/common/head.jsp"/>
	
	<jsp:include page="foreground/common/menu.jsp"/>
	
	<div class="row">
		<div class="col-md-9">
			<jsp:include page="foreground/blog/list.jsp"></jsp:include>
		</div>
		
		<div class="col-md-3">
			<div class="data_list">
				<div class="data_list_title">
					<img src="static/images/user_icon.png"/>
					博主信息
				</div>
				<div class="user_image">
					<img src="static/images/tou.png"/>
				</div>
				<div class="nickName">昵称</div>
				<div class="userSign">(个性签名)</div>
			</div>
			
			<div class="data_list">
				<div class="data_list_title">
					<img src="static/images/byType_icon.png"/>
					按日志类别
				</div>
				<div class="datas">
					<ul>
						<li><span><a href="index.html">Java核心基础(4)</a></span></li>
						<li><span><a href="index.html">spring(1)</a></span></li>
					</ul>
				</div>
			</div>
			
			<div class="data_list">
				<div class="data_list_title">
					<img src="static/images/byDate_icon.png"/>
					按日志日期
				</div>
				<div class="datas">
					<ul>
						<li><span><a href="index.html">2019年07月(2)</a></span></li>
						<li><span><a href="index.html">2019年04月(6)</a></span></li>
					</ul>
				</div>
			</div>
			
			<div class="data_list">
				<div class="data_list_title">
					<img src="static/images/link_icon.png"/>
					友情链接
				</div>
				<div class="datas">
					<ul>
						<li><span><a href="index.html">小图标下载</a></span></li>
						<li><span><a href="index.html">Java贴吧</a></span></li>
						<li><span><a href="index.html">免费logo在线制作</a></span></li>
					</ul>
				</div>
			</div>
			
		</div>
		
		
	</div>
	
	
</div>
</body>
</html>