<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<link rel="stylesheet" href="static/css/public.css" />
<link rel="stylesheet" href="static/css/header.css" />
<style>

	ul li {list-style: none;}
	
	.banner {
		height: 380px ;
    	overflow: hidden ;
	    position: relative;
	    overflow: hidden;
	}
	
	.banner .content {
		width: 1060px;
	    height: 450px;
	    margin: 20px auto;
	    position: relative;
	}
	
	.banner ul li img {
		width: 1024px ;
		height: 380px ;
	}
	
	.fl {float: left;}
	.fr {float: right;}
	
	.banner .content ul{
		width: 10000px;
	}
	
	.banner .content ul li{
		float:left;
	}
	
	
	
	.btn_left ,.btn_right{
		display: inline-block;
		width: 21px;
		height: 150px;
		background: url(img/banner_tb.png) no-repeat;
		position: absolute;
		left: -38px;
		top: 90px;
		opacity: 0;
		transition: all ease 0.6s;
		cursor:pointer;
	}
	
	.btn_right{
		background-position: -29px 0;
		position: absolute;
		left: 1041px;
		top: 90px;
	}
	
	.banner .content:hover .btn_left{
		opacity: 1;
	}
	
	.banner .content:hover .btn_right{
		opacity: 1;
	}
	
	.banner .content ul{
	    width: 10000px;
	    margin-left: -1024px;
	}


</style>

<script type="text/javascript" src="static/js/jquery.js"></script>

</head>
<body>

	<!-- 头部页面 -->
	<%@include file="common/header.jsp" %>
	
	<div class='banner'>
		<div class='content'>
			
			<i class='btn_left'></i>
			<i class='btn_right'></i>
		
			<ul>
				<li>
					<a href="javascript:void(0)">
						<img src="img/5.JPG "/>
					</a>
				</li>
				<li>
					<a href="javascript:void(0)">
						<img src="img/1.JPG "/>
					</a>
				</li>
				<li>
					<a href="javascript:void(0)">
						<img src="img/2.JPG "/>
					</a>
				</li>
				<li>
					<a href="javascript:void(0)">
						<img src="img/3.JPG "/>
					</a>
				</li>
				<li>
					<a href="javascript:void(0)">
						<img src="img/4.JPG "/>
					</a>
				</li>
				<li>
					<a href="javascript:void(0)">
						<img src="img/5.JPG "/>
					</a>
				</li>
				<li>
					<a href="javascript:void(0)">
						<img src="img/1.JPG "/>
					</a>
				</li>
				
			</ul>
		</div>
	</div>
	
	<script type="text/javascript">
	
		var leftBtn = $('.btn_left').eq(0); //左按钮
		var rightBtn = $('.btn_right').eq(0);//右按钮
			
		
		var ul = $('.banner .content ul').eq(0); 
		
		/* rightBtn.on('click',function(){
			ul.animate({marginLeft : -2048},1000);
		}); */
		
		var index = 0;
		var imgwidth = $('.banner .content ul li').width(); //获取轮播图片的宽度
		var len =  $('.banner .content ul li').length - 2//获取总共的图片数量
	
		//移动图片的方法
		function movePicture(){
			$('.banner .content ul').animate({'margin-left':-imgwidth * (index+1)},1000,function(){
				
				if(index == len){
					$(this).css('margin-left',-imgwidth);
					index = 0;
				}
				if(index == -1){
					$(this).css('margin-left',-imgwidth * len);
					index = len - 1;
				}
			});
		}
		
		/* //右按钮绑定点击事件
		rightBtn.on('click',function(){
			index ++;
			movePicture();
		});
		
		//左按钮绑定点击事件
		leftBtn.on('click',function(){
			index --;
			movePicture();
		}); */
		
		//节流版本
		
		var timer = 0;
		
		rightBtn.on('click',function(){
			clearTimeout(timer); //定时器清零
			timer = setTimeout(function(){
				index ++;
				movePicture();
			},500);
			
		});
	
		leftBtn.on('click',function(){
			clearTimeout(timer); //定时器清零
			timer = setTimeout(function(){
				index --;
				movePicture();
			},500);
		});
		
	</script>
	
</body>
</html>