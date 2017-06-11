/**
 * 
 */

$(document).ready(function(){
	$.ajax({
		type: "POST",
		url: "course/getUnAllocate",
		success: function(data){
			l=data.list.length;
			$("#notification-number1").html(l);
			$("#notification-number2").html(l);
			for(var i=0;i<l;i++){
				var content="<li><i class='fa fa-users text-aqua'></i>课程id:"+data.list[i].courseID+" 即将开课尚未分配教师";
				$("#notification-message").append(content);
			}
		}
		
	});
});