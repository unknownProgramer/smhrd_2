<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<meta name="description" content="">
		<meta name="author" content="">
		<link rel="icon" href="favicon.ico">
		<title>Coloring Bootstrap HTML</title>
		<!-- Bootstrap core CSS -->
		<link href="${cpath}/resources/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
		<!-- Custom styles for this template -->
		<link href="${cpath}/resources/css/style.css" rel="stylesheet">
		<style>
			#logo{
				height: 70px;
				width: 100px;
				background-repeat: no-repeat;
				background-size: cover;
				background-position: center center;
			}
			.effect-bubba{
				width: 20%;
				height: 20%;
			}
		</style>
	</head>
	<body id="page-top">
		<!-- Navigation -->
		<nav class="navbar navbar-default">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header page-scroll">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand page-scroll" href="#page-top">
						<img id="logo" src="${cpath}/resources/images/logo.png" alt="Treviso theme logo"></a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li class="hidden">
							<a href="#page-top"></a>
						</li>
						<li>
							<a class="page-scroll" href="#about">Starts</a>
						</li>
						<li>
							<a class="page-scroll" href="#contact">Login</a>
						</li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
		
		<section id="portfolio">
			<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="section-title">
						<h2 class="dye"><b>Describe Your Emotions</b></h2>
						<button type="button" class="btn btn-secondary" style="margin-top: 50px;">
							<a class="page-scroll" href="#about">Starts</a>
						</button>
						<div class="color">
							<ul class="bycolor">
								<li>
									<div style="background-color: #ff2000;"></div>
								</li>
								<li>
									<div style="background-color: #ff7c00;"></div>
								</li>
								<li>
									<div style="background-color: #f52394;"></div>
								</li>
								<li>
									<div style="background-color: purple;"></div>
								</li>
								<li>
									<div style="background-color: blue;"></div>
								</li>
								<li>
									<div style="background-color: #00b2d4;"> </div>
								</li>
								<li>
									<div style="background-color: #00ab00;"></div>
								</li>
								<li>
									<div style="background-color: #90e200;"> </div>
								</li>
								<li>
									<div style="background-color: #ffcf00;"></div>
								</li>
								<li>
									<div style="background-color: #7f00ff;"></div>
								</li>
								<li>
									<div style="background-color: #c4c4c4;"></div>
								</li>
								<li>
									<div style="background-color: #593110;"></div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		
		<div class="palettes_list">
			<ul class="palettes">
				<c:forEach var="vo" items="${list}">
					<li>
						<a>
							<div style="background-color: ${vo.palette_color1};"></div>
							<div style="background-color: ${vo.palette_color2};"></div>
							<div style="background-color: ${vo.palette_color3};"></div>
							<div style="background-color: ${vo.palette_color4};"></div>
							<div style="background-color: ${vo.palette_color5};"></div>
						</a>
					</li>
				</c:forEach>
			</ul>
		</div>

		
		<!-- </section> -->
		<section id="about" class="mz-module">
			<div class="container light-bg">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title">
							<h2>STARTS</h2>
						</div>
					</div>
				</div>

				<form>
					<div class="input-group" style="margin : 0% 20% 0% 20%;">
					  <input id="inputText" type="text" class="form-control" placeholder="Search" style="height: 40px;">
					  <div class="input-group-btn">
						<button onclick="sendInput()" class="btn btn-default" type="button">
						  <i class="glyphicon glyphicon-search"></i>
						</button>
					  </div>
					</div>
				  </form>
				
				<div class="palettes_list" style="margin-top: 0%;">
					<ul id="palettes_result" class="palettes">
					</ul>
				</div>
			</div>
		</section>
		<!-- Modal for portfolio item 1 -->
		<div class="modal fade" id="Modal-1" tabindex="-1" role="dialog" aria-labelledby="Modal-label-1">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="Modal-label-1">Dean & Letter</h4>
					</div>
					<div class="modal-body">
						<img src="${cpath}/resources/images/demo/portfolio-1.jpg" alt="img01" class="img-responsive" />
						<div class="modal-works"><span>Branding</span><span>Web Design</span></div>
						<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>

		<!-- Modal for portfolio item 2 -->
		<div class="modal fade" id="Modal-2" tabindex="-1" role="dialog" aria-labelledby="Modal-label-2">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="Modal-label-2">Startup Framework</h4>
					</div>
					<div class="modal-body">
						<img src="${cpath}/resources/images/demo/portfolio-2.jpg" alt="img01" class="img-responsive" />
						<div class="modal-works"><span>Branding</span><span>Web Design</span></div>
						<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>

		<!-- Modal for portfolio item 3 -->
		<div class="modal fade" id="Modal-3" tabindex="-1" role="dialog" aria-labelledby="Modal-label-3">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="Modal-label-3">Lamp & Velvet</h4>
					</div>
					<div class="modal-body">
						<img src="${cpath}/resources/images/demo/portfolio-3.jpg" alt="img01" class="img-responsive" />
						<div class="modal-works"><span>Branding</span><span>Web Design</span></div>
						<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>

		<!-- Modal for portfolio item 4 -->
		<div class="modal fade" id="Modal-4" tabindex="-1" role="dialog" aria-labelledby="Modal-label-4">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="Modal-label-4">Smart Name</h4>
					</div>
					<div class="modal-body">
						<img src="${cpath}/resources/images/demo/portfolio-4.jpg" alt="img01" class="img-responsive" />
						<div class="modal-works"><span>Branding</span><span>Web Design</span></div>
						<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>

		<!-- Modal for portfolio item 5 -->
		<div class="modal fade" id="Modal-5" tabindex="-1" role="dialog" aria-labelledby="Modal-label-5">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="Modal-label-5">Fast People</h4>
					</div>
					<div class="modal-body">
						<img src="${cpath}/resources/images/demo/portfolio-5.jpg" alt="img01" class="img-responsive" />
						<div class="modal-works"><span>Branding</span><span>Web Design</span></div>
						<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>

		<!-- Bootstrap core JavaScript
			================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="${cpath}resources/js/bootstrap.min.js"></script>
		<script src="${cpath}resources/js/SmoothScroll.js"></script>
		<script src="${cpath}resources/js/theme-scripts.js"></script>
		<script type="text/javascript">
			function sendInput() {
				var inputText= $("#inputText").val();
		        if(inputText==""){
		           alert("텍스트를 입력해주세요.");
		           $("#inputText").focus();
		           return false;
		        }
				$.ajax({
					url : "${cpath}//genPalette.do",
					type : "get",
					data :	{"inputText" : inputText},
					dataType : "json",
					success : showPalResult,
					error : function(){alert("fail");}
				});
			}
			function showPalResult(data) {
				for (var i=0; i<4; i++) {
					var view = "<li>";
					view += "<a href='' title=''>";
					view += "<div style='background-color: "+data[i].palette_color1+";'></div>";
					view += "<div style='background-color: "+data[i].palette_color2+";'></div>";
					view += "<div style='background-color: "+data[i].palette_color3+";'></div>";
					view += "<div style='background-color: "+data[i].palette_color4+";'></div>";
					view += "<div style='background-color: "+data[i].palette_color5+";'></div>";
					view += "</a>";
					view += "</li>";
					$("#palettes_result").append(view).children(':last').hide().fadeIn();
				}
			}
		</script>
	</body>
</html>