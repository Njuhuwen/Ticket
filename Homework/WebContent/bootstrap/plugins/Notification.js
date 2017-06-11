/**
 * 
 */

$(document).ready(function(){
	
	
	$.ajax({
		type: "POST",
		url: "getAssignmentNotification",
		success: function(data){
			l=data.list.length;
			$("#notification-number1").html(l);
			$("#notification-number2").html(l);
			for(var i=0;i<l;i++){
				var content="<li><i class='fa fa-users text-aqua'></i>课程id:"+data.list[i].courseID+" 第"+data.list[i].orders+"次作业";
				if(data.list[i].state==-1)
					content=content+"审核未通过</li>";
				if(data.list[i].state==1)
					content=content+"处于待审核状态</li>";
				$("#notification-message").append(content);
			}
		}
		
	}
			
	);
	$.ajax({
		type: "POST",
		url: "getHomeworkNotification",
		success: function(data){
			l=data.list.length;
			
			$("#homework-number1").html(l);
			$("#homework-number2").html(l);
			for(var i=0;i<l;i++){
				var content="<li><i class='fa fa-users text-aqua'></i>课程id:"+data.list[i].courseID+" 第"+data.list[i].orders+"次作业 没有完成</li>";
				$("#homework-message").append(content);
			}
		}
		
	}
			
	);
	
});