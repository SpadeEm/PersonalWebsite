$(function(){
	
	 $("#face img").mouseover(function(e){
		 $(this).addClass("hover");
	 });
	 $("#face img").mouseout(function(e){
		 $(this).removeClass("hover");
	 });
	 //选择头像
	 $("#face img").click(function(){
		 $("#face img").removeClass("current");
		 $(this).addClass("current");
	 });
	 //计算输入框内的字数
	$("#conBox").keyup(function(){
	     var length = 140;
	     var content_len = $("#conBox").val().length;
	     var in_len = length-content_len;
	     
	     if(in_len >=0){
	    	$(".countTxt").html("还能输入");
	    	$(".maxNum").css("color","black");
	        $(".maxNum").html(in_len);
	        // 可以继续执行其他操作
	     }else{
	    	$(".countTxt").html("已经超过");
	    	$(".maxNum").css("color","red");
	    	//求绝对值
	    	var z_len =Math.abs(in_len);
	        $(".maxNum").html(z_len);
	        return false;
	     }	    
	});
	
	//显示删除按钮
	$("#commentList li").mouseover(function(e){
		$(this).find(".del").css("display","block");
	});
	$("#commentList li").mouseout(function(e){
		$(this).find(".del").css("display","none");
	});
	 
});