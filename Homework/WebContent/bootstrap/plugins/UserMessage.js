/**
 * 
 */

$(document).ready(function(){
	$.ajax({
		type: "POST",
        url: "userMessage",
    
        success: function(data){
      
                    $("#header-id").html(data.user.id);   //清空resText里面的所有内容
                    $("#header-name").html(data.user.name);
                    $("#header-role").html(data.user.role);
                
                 }
		}

			);

});