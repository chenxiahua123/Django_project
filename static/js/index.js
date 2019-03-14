$(function(){
	//banner
	$.getJSON("date/banner.json",function(responsedate){
		console.log(responsedate);
		var datelist=responsedate;
		for(var i=0;i<datelist.length;i++){
			var obj=datelist[i];
			
			//创建li
			var bannerli=$("<li></li>");
			var bannerli2=$("<li></li>");
			//创建图片
			var bannerImg=$("<img>");
			//给图片添加地址
			bannerImg.attr({src:obj.img})
			//吧图片添加进li
			bannerli.append(bannerImg);
			//把li添加进ul
			var list1=$(".list1");
			var list2=$(".list2");
			list1.append(bannerli);
			list2.append(bannerli2);
		}
		//添加动态效果
		var _li1=$(".list1 li");
		var _li2=$(".list2 li");
		var size=_li1.size();
		var size1=_li2.size();
		console.log(size);
		var i=0;
		_li1.eq(0).show().siblings().hide();
		_li2.eq(0).addClass("active");
		var timer=setInterval(function(){
			i++;
			move();
		},2000)
		function move(){
			if(i==size){
				i=0;
			}
			_li1.eq(i).stop().fadeIn().siblings().fadeOut();
			_li2.eq(i).stop().addClass("active").siblings().removeClass()
		}
		$(".banner").hover(function(){
			$(".prevent").css("display","block");
			$(".next").css("display","block");
		},
		function(){
			$(".prevent").css("display","none");
			$(".next").css("display","none");
		})
		
		_li2.mouseover(function(){
			var index=$(this).index();
			i=index;
			move();
		})
		
		$(".banner").hover(function(){
			clearInterval(timer);
		},
		function(){
			timer=setInterval(function(){
				i++;
				move();
			},2000);
		})
		$(".prevent").click(function(){
			i--;
			move();
		})
		$(".next").click(function(){
			i++;
			move();
		})
	})

	//推荐栏图片
	$.getJSON("date/tuijian.json",function(responsedate){
		console.log(responsedate);
		var datelist1=responsedate;
		for(var i=0;i<datelist1.length;i++){
			var obj1=datelist1[i];
			var tuijianimg=$("<img>");
			tuijianimg.attr({src:obj1.img});
			$(".tuijian").append(tuijianimg);
		}
	})
	
	//商品推荐1
	$.getJSON("date/goods-2.json",function(responsedate){
		console.log(responsedate);
		var datelist2=responsedate;
		for(var i=0;i<datelist2.length;i++){
			var obj2=datelist2[i];
			console.log(obj2);
			var div1=$("<div></div>");
			div1.addClass("goods1-detail-1");//创建div
			var goodsdl=$("<dl></dl>");
			goodsdl.appendTo(div1);
			var goodsdt=$("<dt><img src='"+obj2.goodsimg+"'></img></dt>");
			goodsdt.appendTo(goodsdl);
			var goodsdd=$("<dd></dd>");
			var a1=$("<a><span class='goods-number'>"+obj2.number1+"</span><span class='goods-name'>"+obj2.name+"</span></a>");
			a1.attr({href:'#'});
			a1.appendTo(goodsdd);
			var p1=$("<p class='goods-text'>"+obj2.descript+"</p>");
			p1.appendTo(goodsdd);
			var oneprice=$("<i class='tagitem'>"+obj2.oneprice+"</i>");
			oneprice.appendTo(goodsdd);
			var span3=$("<span class='w-price'>"+obj2.price+"<del>"+obj2.lastprice+"</del></span>");
			span3.appendTo(goodsdd);
			var a2=$("<a class='car-btn-1'>立即购买</a>");
			a2.attr({href:""});
			a2.appendTo(goodsdd);
			goodsdd.appendTo(goodsdl);
			div1.appendTo($(".goods1-detail-inner-1"));//div添加到页面
		}
	})		
	$.getJSON("date/goods-1.json",function(responsedate){
		console.log(responsedate);
		var datelist2=responsedate;
		for(var i=0;i<datelist2.length;i++){
			var obj2=datelist2[i];
			console.log(obj2);
			var div1=$("<div></div>");
			div1.addClass("goods1-detail-1");//创建div
			var goodsdl=$("<dl></dl>");
			goodsdl.appendTo(div1);
			var goodsdt=$("<dt><img src='"+obj2.goodsimg+"'></img></dt>");
			goodsdt.appendTo(goodsdl);
			var goodsdd=$("<dd></dd>");
			var a1=$("<a><span class='goods-number'>"+obj2.number1+"</span><span class='goods-name'>"+obj2.name+"</span></a>");
			a1.attr({href:'#'});
			a1.appendTo(goodsdd);
			var p1=$("<p class='goods-text'>"+obj2.descript+"</p>");
			p1.appendTo(goodsdd);
			var oneprice=$("<i class='tagitem'>"+obj2.oneprice+"</i>");
			oneprice.appendTo(goodsdd);
			var span3=$("<span class='w-price'>"+obj2.price+"<del>"+obj2.lastprice+"</del></span>");
			span3.appendTo(goodsdd);
			var a2=$("<a class='car-btn-1'>立即购买</a>");
			a2.attr({href:""});
			a2.appendTo(goodsdd);
			goodsdd.appendTo(goodsdl);
			div1.appendTo($(".goods1-detail-inner-2"));//div添加到页面
		}
	})
	//切换商品详情
//	var listnav=$(".goods-nav").length;
//	for (var i=0;i<7;i++) {
		/*var list=$(".goods-nav").eq(i).children();
		var goodsdetail=$(".goods-nav").eq(i).next().children();
		list.hover(function(){
			var index=$(this).index();
			goodsdetail.eq(index).css("display","block").siblings().css("display","none");
		})*/
//	}
	$('.goods-nav div').hover(function(){
		var index=$(this).index();
		$(this).parent().next('.goods-detail').children('div').eq(index).show().siblings().hide();
	})
	
	//手机考拉海购
	$(".topnav-left-2").hover(function(){
		$("#tel-ewmimg").show();
	},
	function(){
		$("#tel-ewmimg").hide();	
	})
	
	$(".person-home-1").hover(function(){
		$(".person-home-inner-1").show();
	},
	function(){
		$(".person-home-inner-1").hide();
	})
	
	$(".person-home-2").hover(function(){
		$(".person-home-inner-2").show();
	},
	function(){
		$(".person-home-inner-2").hide();
	})
	$(".person-home-3").hover(function(){
		$(".person-home-inner-3").show();
	},
	function(){
		$(".person-home-inner-3").hide();
	})
	
	
	//导航功能
	$(".nav-box-left-1").hover(function(){
		$(".nav-box-left-2").show();
	},function(){
		$(".nav-box-left-2").hide();
	})
	
	$(".nav-box-left-2").hover(function(){
		$(".nav-box-left-2").show();
	},function(){
		$(".nav-box-left-2").hide();
	})
	
	$(".navliinner").hover(function(){
		$(".nav-box-left-2").show();
	},function(){
		$(".nav-box-left-2").hide();
		$(".nav-box-left-2").hide();
	})
	
	$(".nav-box-left-2-li").hover(function(){
		var index=$(this).index();
		$(".navliinner").eq(index).show().siblings().hide();
	},function(){
		$(".navliinner").hide();
	})
	
	
	//侧面导航条
	
	$(window).scroll(function(){
		var _top=$(".footer").offset().top-500;
		console.log(_top);
		var _scrolltop=$(document).scrollTop();
		console.log(_scrolltop);
		if (_scrolltop>575) {
			$(".right-nav").css("display","block");
		}else{
			$(".right-nav").css("display","none");
		}
		if(_scrolltop>_top){
			$(".right-nav").css({"position":"absolute","top":_top});
		}else{
			$(".right-nav").css({"position":"fixed","top":0});
		}
	})
	
	
	$(".right-nav ul li").click(function(){
		var _index=$(this).index();
		var _top=$(".goods-show").eq(_index).offset().top;
		ismove=true;
		$("html body").stop().animate({scrollTop:_top},100);
	})
	
	var cookie=$.cookie("cookie1");
	cookie = JSON.parse(cookie);
//	console.log(cookie);
	
	for (var i=0;i<cookie.length;i++) {
		var objuser=cookie[i];
//		console.log(cookie[i]);
		var nameuser=objuser.name;
//		console.log(nameuser);
		$("#user-ifo").html("<span>"+nameuser+"</span><span> | </span><a class='undenglu'>退出</a>");
	}
	
	$(".undenglu").click(function(){
		console.log(1);
		$.cookie("cookie1", "", {expires:-1, path:"/"});
		window.location.href="index.html"
	})
	
})
