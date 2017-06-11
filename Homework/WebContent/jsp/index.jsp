<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <!-- Ionicons -->
  <link rel="stylesheet" href="../bootstrap/dist/css/ionicons.min.css">
  <!-- Theme style -->
  
  <link rel="stylesheet" href="../bootstrap/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="../bootstrap/dist/css/skins/_all-skins.min.css">
  <link rel="stylesheet" href="../bootstrap/plugins/datepicker/datepicker3.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="../bootstrap/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
  <script src="../bootstrap/js/jquery-1.11.3.min.js"></script>
  <script src="../bootstrap/js/bootstrap.js"></script>
  <script src="../bootstrap/dist/js/demo.js"></script>
  <script src="../bootstrap/dist/js/jquery-ui.min.js"></script>
  <script src="../bootstrap/plugins/datepicker/bootstrap-datepicker.js"></script>
  <script type="text/javascript" src="../bootstrap/dist/js/respond.min.js"></script>

<title>Insert title here</title>
</head>
<body class="skin-blue layout-top-nav">
<header class="main-header">
    <nav class="navbar navbar-static-top">
      <div class="container">
      
        <div class="navbar-header">
          <a class="navbar-brand"><b>Admin</b>LTE</a>
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
            <i class="fa fa-bars"></i>
          </button>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse pull-left" id="navbar-collapse">
        
          
       <form class="navbar-form navbar-right" role="form" id="search" onsubmit="return submitForm();">
       
         <div class="form-group">   
              <div class="input-group date">
  					<input type="text" class="form-control" id="datepicker"><span class="input-group-addon"><i class="glyphicon glyphicon-th"></i></span>
			  </div>
         </div>
         
         <div class="form-group">
              <input type="text" class="form-control" id="navbar-search-input" placeholder="Search">
         </div>
         <div class="form-group">
               	<button type="submit" class="btn btn-primary pull-right">搜索</button>
         </div>
       </form>
        </div>
        <!-- /.navbar-collapse -->

      </div>
      <!-- /.container-fluid -->
    </nav>
  </header>

   <div class="content-wrapper">
	   <section class="content-header">
	      <h1>
	        	影院信息
	        <small>Preview</small>
	      </h1>
	      
	    </section>
	    
	    <section class="content">
			
			<div class="box box-default">
			
				<div class="box-header with-border">
					<h3 class="box-title">影院列表</h3>
				</div>
				
				<div class="box-body">
				
				<div class="row">
        		<div class="col-md-6">
					
						<div class="list-group" id="cinema-list">
						  
						</div>
					
				</div>
				</div>
				
				
				
			</div>
			
		</section>
   </div>
<script type="text/javascript">
$(function () {
	//Date picker
    $('#datepicker').datepicker({
      autoclose: true
    });
	
});
function submitForm(){
	$.ajax({
		type: "POST",
        url: "../Search",
        data: {time:$("#datepicker").val(), movie:$("#navbar-search-input").val()},
        dataType: "json",
        success: function(data){
               $("#cinema-list").append("<a href='#' class='list-group-item'>"+
					    "<h4 class='list-group-item-heading'>List group item heading</h4>"+
					    "<p class='list-group-item-text'>...</p></a>")
		}

	});
	return false;
}

</script>
</body>
</html>