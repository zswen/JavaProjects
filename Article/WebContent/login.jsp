<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页面</title>
<link rel="stylesheet" href="static/css/public.css" />
<link rel="stylesheet" href="static/css/header.css" />
<link rel="stylesheet" href="static/layui-v2.4.5/layui/css/layui.css" />
<style type="text/css">
#sky {
		background:-webkit-linear-gradient(top,#CADCE9 0%,#fff 100%);
		background:linear-gradient(top,#CADCE9 0%,#fff 100%);
		padding:100px 0;
	}
	.clound {
		width:200px;
		height:60px;
		background:#fff;
		border-radius:200px;
		position:relative;
	}
	.clound:before,.clound:after {
		content:"";
		width:100px;
		height:80px;
		background:#fff;
		border-radius:100px;
		position:absolute;
		top:-15px;
		left:10px;
		transform:rotate(30deg)}
	.clound:before {
		width:120px;
		height:120px;
		border-radius:120px;
		top:-55px;
		right:15px;
		left:auto;
	}
	@-webkit-keyframes moveclouds {
		0% {
		margin-left:1000px;
	}
	100% {
		margin-left:-1000px;
	}
	}
	@keyframes moveclouds {
		0% {
		margin-left:1000px;
	}
	100% {
		margin-left:-1000px;
	}
	}
	.s1 {
		-webkit-animation:moveclouds 15s infinite ease;
		animation:moveclouds 15s infinite ease;
	}
	.s2 {
		left:200px;
		-webkit-animation:moveclouds 18s infinite ease;
		animation:moveclouds 18s infinite ease;
		transform:scale(0.6);
		opacity:0.6}
	.s3 {
		left:-200px;
		top:-200px;
		-webkit-animation:moveclouds 20s infinite ease;
		animation:moveclouds 20s infinite ease;
		transform:scale(0.7);
		opacity:0.7}
	.s4 {
		left:-300px;
		top:-200px;
		-webkit-animation:moveclouds 25s infinite ease;
		animation:moveclouds 25s infinite ease;
		transform:scale(0.8);
		opacity:0.8}
	.s5 {
		left:-400px;
		top:-100px;
		-webkit-animation:moveclouds 28s infinite ease;
		animation:moveclouds 25s infinite ease;
		transform:scale(0.9);
		opacity:0.9}
		
		#login {
			position:absolute;
			left:0;
			top:0;
			width:300px;
			height:450px;
		}
		
		
		#login .layui-col-md6{
			position: absolute;
		    width: 500px;
		    left: 500px;
		    top: 200px;
		    z-index: 999;
		}
</style>
</head>
<body>
	<!-- 头部页面 -->
	<%@include file="common/header.jsp" %>

	<div id="login" class="layui-row layui-col-space15">
	    <div class="layui-col-md6">
	      <div class="layui-card">
	        <div class="layui-card-header">用户登录</div>
	        <div class="layui-card-body">
	         	<!-- 这里写登录页面的主体 -->
	         	<form class="layui-form" action="${pageContext.request.contextPath}/user" lay-filter="example">
	         		
	         	 <input type='text' value='login' name='action' hidden='true'>	
	         	
				  <div class="layui-form-item">
				    <label class="layui-form-label">用户名</label>
				    <div class="layui-input-block">
				      <input type="text" name="username" lay-verify="title" autocomplete="off" placeholder="请输入用户名" class="layui-input">
				    </div>
				  </div>
				  <div class="layui-form-item">
				    <label class="layui-form-label">密码</label>
				    <div class="layui-input-block">
				      <input type="password" name="password" placeholder="请输入密码" autocomplete="off" class="layui-input">
				    </div>
				  </div>
				  <div class="layui-form-item">
				    <div class="layui-input-block">
				      <button type="submit" class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
				      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
				    </div>
				  </div>
				  <p style='color:red'>${err }</p>
				</form>
	        </div>
	      </div>
	    </div>
    </div>
    
    <div id="sky">
		<div class="clound s1"></div>
		<div class="clound s2"></div>
		<div class="clound s3"></div>
		<div class="clound s4"></div>
		<div class="clound s5"></div>
	</div>
	
</body>
</html>