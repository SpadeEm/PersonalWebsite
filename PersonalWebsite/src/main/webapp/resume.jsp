<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>rre</title>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
<link href="http://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet" type="text/css">
<link href="resume/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css"/>
<link href="resume/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

<!-- PAGE LEVEL PLUGIN STYLES -->
<link href="resume/css/animate.css" rel="stylesheet">

<!-- THEME STYLES -->
<link href="resume/css/layout.min.css" rel="stylesheet" type="text/css"/>

<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico"/>
<script type="text/javascript" src="js/jquery-2.0.3.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body id="body" data-spy="scroll" data-target=".header">

  <!--========== HEADER ==========-->
  <header class="header navbar-fixed-top">
      <!-- Navbar -->
      <nav class="navbar" role="navigation">
          <div class="container">
              <!-- Brand and toggle get grouped for better mobile display -->
              <div class="menu-container js_nav-item">
                  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
                      <span class="sr-only">Toggle navigation</span>
                      <span class="toggle-icon"></span>
                  </button>

                  <!-- Logo -->
                  <div class="logo">
                      <a class="logo-wrap" href="#body">
                          <img class="logo-img logo-img-main" src="img/logo.png" alt="Asentus Logo">
                          <img class="logo-img logo-img-active" src="img/logo-dark.png" alt="Asentus Logo">
                      </a>
                  </div>
                  <!-- End Logo -->
              </div>

              <!-- Collect the nav links, forms, and other content for toggling -->
              <div class="collapse navbar-collapse nav-collapse">
                  <div class="menu-container">
                      <ul class="nav navbar-nav navbar-nav-right">
                          <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#body">Home</a></li>
                          <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#about">About</a></li>
                          <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#experience">Experience</a></li>
                          <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#work">Work</a></li>
                          <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#contact">Contact</a></li>
                      </ul>
                  </div>
              </div>
              <!-- End Navbar Collapse -->
          </div>
      </nav>
      <!-- Navbar -->
  </header>
  <!--========== END HEADER ==========-->

  <!--========== SLIDER ==========-->
  <div class="promo-block parallax-window" data-parallax="scroll" data-image-src="img/1920x1080/01.jpg">
      <div class="container">
          <div class="row">
              <div class="col-sm-6">
                  <div class="promo-block-divider">
                      <h1 class="promo-block-title">Alex <br/> Teseira</h1>
                      <p class="promo-block-text">Web Designer &amp; Front-end Developer</p>
                  </div>
                  <ul class="list-inline">
                      <li><a href="#" class="social-icons"><i class="icon-social-facebook"></i></a></li>
                      <li><a href="#" class="social-icons"><i class="icon-social-twitter"></i></a></li>
                      <li><a href="#" class="social-icons"><i class="icon-social-dribbble"></i></a></li>
                      <li><a href="#" class="social-icons"><i class="icon-social-behance"></i></a></li>
                      <li><a href="#" class="social-icons"><i class="icon-social-linkedin"></i></a></li>
                  </ul>
              </div>
          </div>
          <!--// end row -->
      </div>
  </div>
  <!--========== SLIDER ==========-->

  <!--========== PAGE LAYOUT ==========-->
  <!-- About -->
  <div id="about">
      <div class="container content-lg">
          <div class="row">
              <div class="col-sm-3 sm-margin-b-30">
                  <div class="text-right sm-text-left">
                      <h2 class="margin-b-0">Intro</h2>
                      <p>What I am all about.</p>
                  </div>
              </div>
              <div class="col-sm-8 col-sm-offset-1">
                  <div class="margin-b-60">
                      <p>I'm Alex Teseira, orem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                      <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                  </div>

                  <!-- Progress Box -->
                  <div class="progress-box">
                      <h5>Java <span class="color-heading pull-right">87%</span></h5>
                      <div class="progress">
                          <div class="progress-bar bg-color-base" role="progressbar" data-width="87"></div>
                      </div>
                  </div>
                  <div class="progress-box">
                      <h5>HTML5 <span class="color-heading pull-right">96%</span></h5>
                      <div class="progress">
                          <div class="progress-bar bg-color-base" role="progressbar" data-width="96"></div>
                      </div>
                  </div>
                  <div class="progress-box">
                      <h5>JavaSript <span class="color-heading pull-right">52%</span></h5>
                      <div class="progress">
                          <div class="progress-bar bg-color-base" role="progressbar" data-width="52"></div>
                      </div>
                  </div>
                  <div class="progress-box">
                      <h5>Photoshop <span class="color-heading pull-right">77%</span></h5>
                      <div class="progress">
                          <div class="progress-bar bg-color-base" role="progressbar" data-width="77"></div>
                      </div>
                  </div>
                  <!-- End Progress Box -->
              </div>
          </div>
          <!--// end row -->
      </div>
  </div>
  <!-- End About -->

  <!-- Experience -->
  <div id="experience">
      <div class="bg-color-sky-light" data-auto-height="true">
          <div class="container content-lg">
              <div class="row">
                  <div class="col-sm-3 sm-margin-b-30">
                      <div class="text-right sm-text-left">
                          <h2 class="margin-b-0">Experience</h2>
                          <p>Batman would be jealous.</p>
                      </div>
                  </div>
                  <div class="col-sm-8 col-sm-offset-1">
                      <div class="row row-space-2 margin-b-4">
                          <div class="col-md-4 md-margin-b-4">
                              <div class="service" data-height="height">
                                  <div class="service-element">
                                      <i class="service-icon icon-chemistry"></i>
                                  </div>
                                  <div class="service-info">
                                      <h3>HTML5/CSS3</h3>
                                      <p class="margin-b-5">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>
                                  </div>
                                  <a href="#" class="content-wrapper-link"></a>    
                              </div>
                          </div>
                          <div class="col-md-4 md-margin-b-4">
                              <div class="service bg-color-base wow zoomIn" data-height="height" data-wow-duration=".3" data-wow-delay=".1s">
                                  <div class="service-element">
                                      <i class="service-icon color-white icon-screen-tablet"></i>
                                  </div>
                                  <div class="service-info">
                                      <h3 class="color-white">Photoshop</h3>
                                      <p class="color-white margin-b-5">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>
                                  </div>
                                  <a href="#" class="content-wrapper-link"></a>    
                              </div>
                          </div>
                          <div class="col-md-4">
                              <div class="service" data-height="height">
                                  <div class="service-element">
                                      <i class="service-icon icon-badge"></i>
                                  </div>
                                  <div class="service-info">
                                      <h3>Front-end</h3>
                                      <p class="margin-b-5">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>
                                  </div>
                                  <a href="#" class="content-wrapper-link"></a>    
                              </div>
                          </div>
                      </div>
                      <!--// end row -->
                  </div>
              </div>
              <!--// end row -->
          </div>
      </div>
  </div>
  <!-- End Experience -->
<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >手机网站模板</a></div>
      <!-- Work -->
  <div id="work">
      <div class="container content-lg">
          <div class="row">
              <div class="col-sm-3 sm-margin-b-30">
                  <div class="text-right sm-text-left">
                      <h2 class="margin-b-0">Works</h2>
                      <p>I build the real value.</p>
                  </div>
              </div>
              <div class="col-sm-8 col-sm-offset-1">
                  <!-- Masonry Grid -->
                  <div class="masonry-grid row row-space-2">
                      <div class="masonry-grid-sizer col-xs-6 col-sm-6 col-md-1"></div>
                      <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-8 margin-b-4">
                          <!-- Work -->
                          <div class="work work-popup-trigger">
                              <div class="work-overlay">
                                  <img class="full-width img-responsive" src="img/800x400/01.jpg" alt="Portfolio Image">
                              </div>
                              <div class="work-popup-overlay">
                                  <div class="work-popup-content">
                                      <a href="javascript:void(0);" class="work-popup-close">Hide</a>
                                      <div class="margin-b-30">
                                          <h3 class="margin-b-5">Art Of Coding</h3>
                                          <span>Clean &amp; Minimalistic Design</span>
                                      </div>
                                      <div class="row">
                                          <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                              <div class="margin-t-10 sm-margin-t-0">
                                                  <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
                                                  <ul class="list-inline work-popup-tag">
                                                      <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Design,</a></li>
                                                      <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Coding,</a></li>
                                                      <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Portfolio</a></li>
                                                  </ul>
                                              </div>
                                          </div>
                                          <div class="col-sm-4">
                                              <div class="margin-t-10 sm-margin-t-0">
                                                  <p class="margin-b-5"><strong>Project Leader:</strong> John Doe</p>
                                                  <p class="margin-b-5"><strong>Designer:</strong> Alisa Keys</p>
                                                  <p class="margin-b-5"><strong>Developer:</strong> Mark Doe</p>
                                                  <p class="margin-b-5"><strong>Customer:</strong> Keenthemes</p>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <!-- End Work -->
                      </div>
                      <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4 margin-b-4">
                          <!-- Work -->
                          <div class="work work-popup-trigger">
                              <div class="work-overlay">
                                  <img class="full-width img-responsive" src="img/397x400/01.jpg" alt="Portfolio Image">
                              </div>
                              <div class="work-popup-overlay">
                                  <div class="work-popup-content">
                                      <a href="javascript:void(0);" class="work-popup-close">Hide</a>
                                      <div class="margin-b-30">
                                          <h3 class="margin-b-5">Art Of Coding</h3>
                                          <span>Clean &amp; Minimalistic Design</span>
                                      </div>
                                      <div class="row">
                                          <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                              <div class="margin-t-10 sm-margin-t-0">
                                                  <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
                                                  <ul class="list-inline work-popup-tag">
                                                      <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Design,</a></li>
                                                      <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Coding,</a></li>
                                                      <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Portfolio</a></li>
                                                  </ul>
                                              </div>
                                          </div>
                                          <div class="col-sm-4">
                                              <div class="margin-t-10 sm-margin-t-0">
                                                  <p class="margin-b-5"><strong>Project Leader:</strong> John Doe</p>
                                                  <p class="margin-b-5"><strong>Designer:</strong> Alisa Keys</p>
                                                  <p class="margin-b-5"><strong>Developer:</strong> Mark Doe</p>
                                                  <p class="margin-b-5"><strong>Customer:</strong> Keenthemes</p>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <!-- End Work -->
                      </div>
                      <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4 md-margin-b-4">
                          <!-- Work -->
                          <div class="work work-popup-trigger">
                              <div class="work-overlay">
                                  <img class="full-width img-responsive" src="img/397x300/01.jpg" alt="Portfolio Image">
                              </div>
                              <div class="work-popup-overlay">
                                  <div class="work-popup-content">
                                      <a href="javascript:void(0);" class="work-popup-close">Hide</a>
                                      <div class="margin-b-30">
                                          <h3 class="margin-b-5">Art Of Coding</h3>
                                          <span>Clean &amp; Minimalistic Design</span>
                                      </div>
                                      <div class="row">
                                          <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                              <div class="margin-t-10 sm-margin-t-0">
                                                  <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
                                                  <ul class="list-inline work-popup-tag">
                                                      <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Design,</a></li>
                                                      <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Coding,</a></li>
                                                      <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Portfolio</a></li>
                                                  </ul>
                                              </div>
                                          </div>
                                          <div class="col-sm-4">
                                              <div class="margin-t-10 sm-margin-t-0">
                                                  <p class="margin-b-5"><strong>Project Leader:</strong> John Doe</p>
                                                  <p class="margin-b-5"><strong>Designer:</strong> Alisa Keys</p>
                                                  <p class="margin-b-5"><strong>Developer:</strong> Mark Doe</p>
                                                  <p class="margin-b-5"><strong>Customer:</strong> Keenthemes</p>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <!-- End Work -->
                      </div>
                      <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4 md-margin-b-4">
                          <!-- Work -->
                          <div class="work work-popup-trigger">
                              <div class="work-overlay">
                                  <img class="full-width img-responsive" src="img/397x300/02.jpg" alt="Portfolio Image">
                              </div>
                              <div class="work-popup-overlay">
                                  <div class="work-popup-content">
                                      <a href="javascript:void(0);" class="work-popup-close">Hide</a>
                                      <div class="margin-b-30">
                                          <h3 class="margin-b-5">Art Of Coding</h3>
                                          <span>Clean &amp; Minimalistic Design</span>
                                      </div>
                                      <div class="row">
                                          <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                              <div class="margin-t-10 sm-margin-t-0">
                                                  <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
                                                  <ul class="list-inline work-popup-tag">
                                                      <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Design,</a></li>
                                                      <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Coding,</a></li>
                                                      <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Portfolio</a></li>
                                                  </ul>
                                              </div>
                                          </div>
                                          <div class="col-sm-4">
                                              <div class="margin-t-10 sm-margin-t-0">
                                                  <p class="margin-b-5"><strong>Project Leader:</strong> John Doe</p>
                                                  <p class="margin-b-5"><strong>Designer:</strong> Alisa Keys</p>
                                                  <p class="margin-b-5"><strong>Developer:</strong> Mark Doe</p>
                                                  <p class="margin-b-5"><strong>Customer:</strong> Keenthemes</p>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <!-- End Work -->
                      </div>
                      <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4">
                          <!-- Work -->
                          <div class="work work-popup-trigger">
                              <div class="work-overlay">
                                  <img class="full-width img-responsive" src="img/397x300/03.jpg" alt="Portfolio Image">
                              </div>
                              <div class="work-popup-overlay">
                                  <div class="work-popup-content">
                                      <a href="javascript:void(0);" class="work-popup-close">Hide</a>
                                      <div class="margin-b-30">
                                          <h3 class="margin-b-5">Art Of Coding</h3>
                                          <span>Clean &amp; Minimalistic Design</span>
                                      </div>
                                      <div class="row">
                                          <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                              <div class="margin-t-10 sm-margin-t-0">
                                                  <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
                                                  <ul class="list-inline work-popup-tag">
                                                      <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Design,</a></li>
                                                      <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Coding,</a></li>
                                                      <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Portfolio</a></li>
                                                  </ul>
                                              </div>
                                          </div>
                                          <div class="col-sm-4">
                                              <div class="margin-t-10 sm-margin-t-0">
                                                  <p class="margin-b-5"><strong>Project Leader:</strong> John Doe</p>
                                                  <p class="margin-b-5"><strong>Designer:</strong> Alisa Keys</p>
                                                  <p class="margin-b-5"><strong>Developer:</strong> Mark Doe</p>
                                                  <p class="margin-b-5"><strong>Customer:</strong> Keenthemes</p>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <!-- End Work -->
                      </div>
                  </div>
                  <!-- End Masonry Grid -->
              </div>
          </div>
          <!--// end row -->
      </div>
  </div>
  <!-- End Work -->
      
  <!-- Contact -->
  <div id="contact">
      <div class="bg-color-sky-light">
          <div class="container content-lg">
              <div class="row">
                  <div class="col-sm-3 sm-margin-b-30">
                      <div class="text-right sm-text-left">
                          <h2 class="margin-b-0">Contacts</h2>
                          <p>Hire me.</p>
                      </div>
                  </div>
                  <div class="col-sm-8 col-sm-offset-1">
                      <div class="row">
                          <div class="col-md-3 col-xs-6 md-margin-b-30">
                              <h5>Location</h5>
                              <a href="#">成都, 郫县</a>
                          </div>
                          <div class="col-md-3 col-xs-6 md-margin-b-30">
                              <h5>Phone</h5>
                              <a href="#">+86 185 2385 1346</a>
                          </div>
                          <div class="col-md-3 col-xs-6">
                              <h5>Email</h5>
                              <a href="mailto:#">965702794@qq.com</a>
                          </div>
                          <div class="col-md-3 col-xs-6">
                              <h5>Web</h5>
                              <a href="#">alex.teseira.com</a>
                          </div>
                      </div>
                  </div>
              </div>
              <!--// end row -->
          </div>
      </div>
  </div>
  <!-- End Contact -->
  <!--========== END PAGE LAYOUT ==========-->

  <!--========== FOOTER ==========-->
  <footer class="footer">
      <div class="content container">
          <div class="row">
              <div class="col-xs-6">
                  <img class="footer-logo" src="img/logo-dark.png" alt="Aircv Logo">
              </div>
              <div class="col-xs-6 text-right sm-text-left">
                  <!-- <p class="margin-b-0">More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p> -->
              </div>
          </div>
          <!--// end row -->
      </div>
  </footer>
  <!--========== END FOOTER ==========-->

  <!-- Back To Top -->
  <a href="javascript:void(0);" class="js-back-to-top back-to-top">Top</a>

  <!-- JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
  <!-- CORE PLUGINS -->
  <script src="resume/vendor/jquery.min.js" type="text/javascript"></script>
  <script src="resume/vendor/jquery-migrate.min.js" type="text/javascript"></script>
  <script src="resume/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

  <!-- PAGE LEVEL PLUGINS -->
  <script src="resume/vendor/jquery.easing.js" type="text/javascript"></script>
  <script src="resume/vendor/jquery.back-to-top.js" type="text/javascript"></script>
  <script src="resume/vendor/jquery.smooth-scroll.js" type="text/javascript"></script>
  <script src="resume/vendor/jquery.wow.min.js" type="text/javascript"></script>
  <script src="resume/vendor/jquery.parallax.min.js" type="text/javascript"></script>
  <script src="resume/vendor/jquery.appear.js" type="text/javascript"></script>
  <script src="resume/vendor/masonry/jquery.masonry.pkgd.min.js" type="text/javascript"></script>
  <script src="resume/vendor/masonry/imagesloaded.pkgd.min.js" type="text/javascript"></script>

  <!-- PAGE LEVEL SCRIPTS -->
  <script src="resume/js/layout.min.js" type="text/javascript"></script>
  <script src="resume/js/components/progress-bar.min.js" type="text/javascript"></script>
  <script src="resume/js/components/masonry.min.js" type="text/javascript"></script>
  <script src="resume/js/components/wow.min.js" type="text/javascript"></script>


</body>
</html>