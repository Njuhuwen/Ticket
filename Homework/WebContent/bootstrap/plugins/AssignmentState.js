/**
 * 
 */

$(document).ready(function(){
	$.ajax({
		type: "POST",
		url: "getAssignmentState",
		success: function(data){
			l=data.list.length;
			$("#notification-number1").html(l);
			$("#notification-number2").html(l);
			for(var i=0;i<l;i++){
				var content="<li><i class='fa fa-users text-aqua'></i>课程id:"+data.list[i].courseID+" 第"+data.list[i].orders+"次作业";
		
				if(data.list[i].state==1)
					content=content+"处于待审核状态</li>";
				$("#notification-message").append(content);
			}
		}
		
	});
	
});