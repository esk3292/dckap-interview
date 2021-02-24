   $(document).ready(function () {
		
		//nav start 
		
		$(".sidenav > li > a").on("click",function(){
			$(this).parent().addClass('active subnav_open');
			$(this).parent().siblings().removeClass('active subnav_open');
			$(this).parent().siblings().find(".subnav_content").slideUp();
			$(this).parent().find(".subnav_content").slideToggle();
		});	
			
		//nav end
		
		//node_info_popup start 
		setTimeout(function(){	
		$(document).on("click",function(e){			
			$(".node_content_info").fadeOut(300);			
		});
		
		$(".node_content").on("click",function(e){			
			$(this).parents('.root_node').find('.node_content').not(this).find(".node_content_info").fadeOut(300);
			e.stopPropagation();
			$(this).find(".node_content_info").fadeToggle(300);			
		});	
		},200);	
		
		//node_info_popup end
		
		
		
		$(".classifier").each(function(){
			
			if($(this).parent().parent().children(".node").length > 1){				
				var start_point = $(this).parent().parent().children(".node").first().offset().top;
				var end_point = $(this).parent().parent().children(".node").last().offset().top;
				var height = end_point - start_point;
				console.log($(this).parent().parent().children(".node").first(),$(this).parent().parent().children(".node").last(),start_point,end_point,height);
				$(this).height(height);
			}else{
				$(this).height("1");
			}
			
		
		});
		
		
		if($(".tree-wrap").height() > 450){
			var initial = (400/($(".tree-wrap").height())) ;
			var scale = initial;
		}else{
			var initial = 1;
			var scale = initial;
		}	
		var zoomCount = 0;
		
		$(".tree-wrap").css("transform","scale(" + initial + ") ");
		
		$(".panel_head .zoomin").on("click",function(){			
			scale = scale * 1.08;
			zoomCount = zoomCount + 1;
			$(".tree-wrap").css("transform","scale(" + scale + ") ");
			
		});
		
		$(".panel_head .zoomout").on("click",function(){			
			scale = scale / 1.08;
			zoomCount = zoomCount + 1;
			$(".tree-wrap").css("transform","scale(" + scale + ") ");
			
		});
		
		
		
   });

 