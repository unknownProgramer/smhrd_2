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
			.list_div{
				padding-bottom: 40px;
				padding-top: 40px;
				margin: 0 auto;
				max-width: 1200px;
				padding-left: 0px;
				padding-right: 0px;
			}
			.list_ul{
				display: grid;
				grid-template-columns: 1fr 1fr 1fr 1fr;
				grid-gap: 40px;
				list-style: none;
			}
			.list_ul>li{
				display: block;
				width: 100%;
			}
			.list_ul>li>a{
				width: 100%;
				padding: 0;
				display: flex;
				overflow: hidden;
				border-radius: 5px;
				box-shadow: 0 0 2px rgb(0 0 0 / 10%);
			}
			.list_ul>li>a>div{
				height: 50px;
				flex: 1;
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
							<a class="page-scroll" href="#about">About</a>
						</li>
						<li>
							<a class="page-scroll" href="#portfolio">Portfolio</a>
						</li>
						<li>
							<a class="page-scroll" href="#team">Team</a>
						</li>
						<li>
							<a class="page-scroll" href="#contact">Contact</a>
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
						<button type="button" class="btn btn-secondary" style="margin-top: 50px;">Starts</button>
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
					<div class="list_div">
						<ul class="list_ul">
							<li>
								<a href="" title="Test Palette">
									<div style="background-color: #00ab00;"></div>
									<div style="background-color: #00b2d4;"></div>
									<div style="background-color: #7f00ff;"></div>
									<div style="background-color: #ffcf00;"></div>
									<div style="background-color: #00b2d4;"></div>
								</a>
							</li>
							<li>
								<a href="" title="Test Palette">
									<div style="background-color: #00ab00;"></div>
									<div style="background-color: #00b2d4;"></div>
									<div style="background-color: #7f00ff;"></div>
									<div style="background-color: #ffcf00;"></div>
									<div style="background-color: #00b2d4;"></div>
								</a>
							</li>
							<li>
								<a href="" title="Test Palette">
									<div style="background-color: #00ab00;"></div>
									<div style="background-color: #00b2d4;"></div>
									<div style="background-color: #7f00ff;"></div>
									<div style="background-color: #ffcf00;"></div>
									<div style="background-color: #00b2d4;"></div>
								</a>
							</li>
							<li>
								<a href="" title="Test Palette">
									<div style="background-color: #00ab00;"></div>
									<div style="background-color: #00b2d4;"></div>
									<div style="background-color: #7f00ff;"></div>
									<div style="background-color: #ffcf00;"></div>
									<div style="background-color: #00b2d4;"></div>
								</a>
							</li>
							<li>
								<a href="" title="Test Palette">
									<div style="background-color: #00ab00;"></div>
									<div style="background-color: #00b2d4;"></div>
									<div style="background-color: #7f00ff;"></div>
									<div style="background-color: #ffcf00;"></div>
									<div style="background-color: #00b2d4;"></div>
								</a>
							</li>
							<li>
								<a href="" title="Test Palette">
									<div style="background-color: #00ab00;"></div>
									<div style="background-color: #00b2d4;"></div>
									<div style="background-color: #7f00ff;"></div>
									<div style="background-color: #ffcf00;"></div>
									<div style="background-color: #00b2d4;"></div>
								</a>
							</li>
							<li>
								<a href="" title="Test Palette">
									<div style="background-color: #00ab00;"></div>
									<div style="background-color: #00b2d4;"></div>
									<div style="background-color: #7f00ff;"></div>
									<div style="background-color: #ffcf00;"></div>
									<div style="background-color: #00b2d4;"></div>
								</a>
							</li>
							<li>
								<a href="" title="Test Palette">
									<div style="background-color: #00ab00;"></div>
									<div style="background-color: #00b2d4;"></div>
									<div style="background-color: #7f00ff;"></div>
									<div style="background-color: #ffcf00;"></div>
									<div style="background-color: #00b2d4;"></div>
								</a>
							</li>
							<li>
								<a href="" title="Test Palette">
									<div style="background-color: #00ab00;"></div>
									<div style="background-color: #00b2d4;"></div>
									<div style="background-color: #7f00ff;"></div>
									<div style="background-color: #ffcf00;"></div>
									<div style="background-color: #00b2d4;"></div>
								</a>
							</li>
							<li>
								<a href="" title="Test Palette">
									<div style="background-color: #00ab00;"></div>
									<div style="background-color: #00b2d4;"></div>
									<div style="background-color: #7f00ff;"></div>
									<div style="background-color: #ffcf00;"></div>
									<div style="background-color: #00b2d4;"></div>
								</a>
							</li>
							<li>
								<a href="" title="Test Palette">
									<div style="background-color: #00ab00;"></div>
									<div style="background-color: #00b2d4;"></div>
									<div style="background-color: #7f00ff;"></div>
									<div style="background-color: #ffcf00;"></div>
									<div style="background-color: #00b2d4;"></div>
								</a>
							</li>
							<li>
								<a href="" title="Test Palette">
									<div style="background-color: #00ab00;"></div>
									<div style="background-color: #00b2d4;"></div>
									<div style="background-color: #7f00ff;"></div>
									<div style="background-color: #ffcf00;"></div>
									<div style="background-color: #00b2d4;"></div>
								</a>
							</li>
							<li>
								<a href="" title="Test Palette">
									<div style="background-color: #00ab00;"></div>
									<div style="background-color: #00b2d4;"></div>
									<div style="background-color: #7f00ff;"></div>
									<div style="background-color: #ffcf00;"></div>
									<div style="background-color: #00b2d4;"></div>
								</a>
							</li>
							<li>
								<a href="" title="Test Palette">
									<div style="background-color: #00ab00;"></div>
									<div style="background-color: #00b2d4;"></div>
									<div style="background-color: #7f00ff;"></div>
									<div style="background-color: #ffcf00;"></div>
									<div style="background-color: #00b2d4;"></div>
								</a>
							</li>
							<li>
								<a href="" title="Test Palette">
									<div style="background-color: #00ab00;"></div>
									<div style="background-color: #00b2d4;"></div>
									<div style="background-color: #7f00ff;"></div>
									<div style="background-color: #ffcf00;"></div>
									<div style="background-color: #00b2d4;"></div>
								</a>
							</li>
							<li>
								<a href="" title="Test Palette">
									<div style="background-color: #00ab00;"></div>
									<div style="background-color: #00b2d4;"></div>
									<div style="background-color: #7f00ff;"></div>
									<div style="background-color: #ffcf00;"></div>
									<div style="background-color: #00b2d4;"></div>
								</a>
							</li>
						</ul>
					</div>
				<div class="row row-0-gutter">
					<!-- about module -->
					<div class="col-md-3 col-0-gutter mz-about-default text-center">
						<div class="mz-module-about">
							<i class="fa fa-briefcase ot-circle"></i>
							<h3>Web Development</h3>
						</div>
					</div>
					<!-- end about module -->
					<!-- about module -->
					<div class="col-md-3 col-0-gutter mz-about-dark text-center">
						<div class="mz-module-about">
							<i class="fa fa-photo ot-circle"></i>
							<h3>Visualisation</h3>
						</div>
					</div>
					<!-- end about module -->
					<!-- about module -->
					<div class="col-md-3 col-0-gutter mz-about-default text-center">
						<div class="mz-module-about">
							<i class="fa fa-camera-retro ot-circle"></i>
							<h3>Photography</h3>
						</div>
					</div>
					<!-- end about module -->
					<!-- about module -->
					<div class="col-md-3 col-0-gutter mz-about-dark text-center">
						<div class="mz-module-about">
							<i class="fa fa-cube ot-circle"></i>
							<h3>UI/UX Design</h3>
						</div>
					</div> -->
					<!-- end about module -->
				</div>
			</div>
			<!-- /.container -->
		</section>

		<!-- <section id="team">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title">
							<h2>Our Team</h2>
						</div>
					</div>
				</div>
				<div class="row"> -->
					<!-- team member item -->
					<!-- <div class="col-md-4">
						<div class="team-item">
							<div class="team-image">
								<img src="${cpath}/resources/images/demo/author-2.jpg" class="img-responsive" alt="author">
							</div>
							<div class="team-text">
								<h3>TOM BEKERS</h3>
								<div class="team-position">CEO & Web Design</div>
								<p>Mida sit una namet, cons uectetur adipiscing adon elit. Aliquam vitae barasa droma.</p>
							</div>
						</div> -->
					<!-- </div> -->
					<!-- end team member item -->
					<!-- team member item -->
					<!-- <div class="col-md-4">
						<div class="team-item">
							<div class="team-image">
								<img src="${cpath}/resources/images/demo/author-6.jpg" class="img-responsive" alt="author">
							</div>
							<div class="team-text">
								<h3>LINA GOSATA</h3>
								<div class="team-position">Photography</div>
								<p>Worsa dona namet, cons uectetur dipiscing adon elit. Aliquam vitae fringilla unda mir.</p>
							</div>
						</div>
					</div> -->
					<!-- end team member item -->
					<!-- team member item -->
					<!-- <div class="col-md-4">
						<div class="team-item">
							<div class="team-image">
								<img src="${cpath}/resources/images/demo/author-4.jpg" class="img-responsive" alt="author">
							</div>
							<div class="team-text">
								<h3>John BEKERS</h3>
								<div class="team-position">Marketing</div>
								<p>Dolor sit don namet, cons uectetur beriscing adon elit. Aliquam vitae fringilla unda.</p>
							</div>
						</div>
					</div> -->
					<!-- end team member item -->
				<!-- </div>
			</div>
		</section> -->

		<!-- <section id="contact">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title">
							<h2>Contact Us</h2>
							<p>If you have some Questions or need Help! Please Contact Us!<br>We make Cool and Clean Design for your Business</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12 text-center">
						<form name="sentMessage" id="contactForm" novalidate>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<input type="text" class="form-control" placeholder="Your Name *" id="name" required="" data-validation-required-message="Please enter your name.">
										<p class="help-block text-danger"></p>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<input type="email" class="form-control" placeholder="Your Email *" id="email" required="" data-validation-required-message="Please enter your email address.">
										<p class="help-block text-danger"></p>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<textarea class="form-control" placeholder="Your Message *" id="message" required data-validation-required-message="Please enter a message."></textarea>
										<p class="help-block text-danger"></p>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="row">
								<div class="col-lg-12 text-center">
									<div id="success"></div>
									<button type="submit" class="btn">Send Message</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section> -->
		<!-- <p id="back-top">
			<a href="#top"><i class="fa fa-angle-up"></i></a>
		</p>
		<footer>
			<div class="container text-center">
				Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">BootstrapThemes</a>
			</div>
		</footer> -->

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
		<script src="${cpath}/resources/js/bootstrap.min.js"></script>
		<script src="${cpath}/resources/js/SmoothScroll.js"></script>
		<script src="${cpath}/resources/js/theme-scripts.js"></script>
	</body>
</html>