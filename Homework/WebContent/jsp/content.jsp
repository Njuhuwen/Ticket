<%@page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>
<%@page import="dataservice.SearchDataService" %>
<%@page import="data.SearchDataImpl" %>
<%@page import="vo.ShowVO" %>
<%@page import="java.util.List" %>
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
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="../bootstrap/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
  <script src="../bootstrap/js/jquery-1.11.3.min.js"></script>
  <script src="../bootstrap/js/bootstrap.js"></script>
  <script src="../bootstrap/dist/js/demo.js"></script>
  <script src="../bootstrap/dist/js/jquery-ui.min.js"></script>

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
        
          
      
        </div>
        <!-- /.navbar-collapse -->

      </div>
      <!-- /.container-fluid -->
    </nav>
  </header>
		<%
			SimpleDateFormat formatter = new SimpleDateFormat ("MM/dd/yyyy");
        	Date date=formatter.parse(request.getParameter("date").toString());
        	SearchDataService search=new SearchDataImpl();
			List<List<ShowVO>> list=search.searchShow(date,request.getParameter("name").toString(),request.getParameter("cn").toString());
       		
		%>
		
        
   <div class="content-wrapper">
	   <section class="content-header">
	      <h1>
	        	影片信息
	        <small>Preview</small>
	      </h1>
	      
	    </section>
	    
	    <section class="content">
			
			<div class="box box-default">
			
				<div class="box-header with-border">
					<h3 class="box-title"><%=request.getParameter("name").toString() %></h3>
				</div>
				
				<div class="box-body">
			
					<div class="row">
					
	        		<div class="col-md-9">
						
							<div class="list-group">
							<%for(int i=0;i<list.size()&&list.get(0).size()!=0;i++){ 
								List<ShowVO> l=list.get(i);
							%>
					
							
							<p></p>
								<span class="label label-info">开始</span>
								<span class="label label-warning"><%=l.get(0).getStartTime() %></span>
								
								<span class="label label-info">结束</span>
								<span class="label label-default"><%=l.get(0).getEndTime() %></span>
						
							<p></p>
							
							<table class="table table-bordered">
				                <tr>
				                  <th >平台</th>
				                  <th >语言</th>
				                  <th >genre</th>
				                  <th >type</th>
				                  <th>导演</th>
				                  <th>演员</th>
				                  <th>wish</th>
				                  <th>价格</th>
				                </tr>
				                <%for(int j=0;j<l.size();j++){ 
				                	ShowVO show=l.get(j);
				                %>
						             <tr>
						                  <td style="width: 60px"><span class="badge bg-blue"><%=show.getPlatform() %></span></td>
						                  <td></td>
						                  <td><%=show.getGenre() %></td>
						                  <td><%=show.getType() %></td>
						                  <td></td>
						                  <td></td>
						                  <td style="width: 60px"><span class="badge bg-yellow"><%=show.getWish() %></span></td>
						                  <td style="width: 60px"><span class="badge bg-red"><%=show.getPrice() %></span></td>
						             </tr>
				                <%} %>
				               </table>
				              
							<%} %>
							
							  
							</div>
						
					</div>
					</div>
		
				</div>
				
			</div>
			
		</section>
   </div>
<script type="text/javascript">

</script>
</body>
</html>