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
<title>resume</title>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
<link href="http://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet" type="text/css">
<link href="resume/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css"/>
<link href="resume/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

<!-- PAGE LEVEL PLUGIN STYLES -->
<link href="resume/css/animate.css" rel="stylesheet">

<!-- THEME STYLES -->
<link href="resume/css/layout.min.css" rel="stylesheet" type="text/css"/>

<!-- Favicon -->
<!-- <link rel="shortcut icon" href="favicon.ico"/> -->
<link rel="shortcut icon" href="images/favicon.ico"/>
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
                      <a class="logo-wrap" href="<%=basePath%>home.jsp">
                          	<h3>返回</h3>
                      </a>
                  </div>
                  <!-- End Logo -->
              </div>

              <!-- Collect the nav links, forms, and other content for toggling -->
              <div class="collapse navbar-collapse nav-collapse">
                  <div class="menu-container">
                      <ul class="nav navbar-nav navbar-nav-right">
                          <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#body">主页</a></li>
                          <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#about">自我介绍</a></li>
                          <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#experience">IT技能</a></li>
                          <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#work">项目经验</a></li>
                          <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#contact">联系方式</a></li>
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
  <div class="promo-block parallax-window" data-parallax="scroll" data-image-src="img/1920x1080/03.jpg">
      <div class="container">
          <div class="row">
              <div class="col-sm-6">
                  <div class="promo-block-divider">
                      <h1 class="promo-block-title">朱勇超 </h1>
                      <p class="promo-block-text">JAVA开发工程师</p>
                  </div>
                  <!-- <ul class="list-inline">
                      <li><a href="#" class="social-icons"><i class="icon-social-facebook"></i></a></li>
                      <li><a href="#" class="social-icons"><i class="icon-social-twitter"></i></a></li>
                      <li><a href="#" class="social-icons"><i class="icon-social-dribbble"></i></a></li>
                      <li><a href="#" class="social-icons"><i class="icon-social-behance"></i></a></li>
                      <li><a href="#" class="social-icons"><i class="icon-social-linkedin"></i></a></li>
                  </ul> -->
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
                      <h2 class="margin-b-0">自我介绍</h2>
                      <p>我是谁？</p>
                  </div>
              </div>
              <div class="col-sm-8 col-sm-offset-1">
                  <div class="margin-b-60">
                      <p>我是朱勇超，于2017.6月毕业于重庆邮电大学，软件工程专业。主要从事JAVAWEB后台的开发工作。</p>
                      <p>熟练掌握的JAVA基础，拥有良好的代码规范和创新精神以及对新技术的探索精神。能够在团队内进行快速敏捷的开发。</p>
                  </div>

                  <!-- Progress Box -->
                  <div class="progress-box">
                      <h5>Java <span class="color-heading pull-right">熟练使用</span></h5>
                      <div class="progress">
                          <div class="progress-bar bg-color-base" role="progressbar" data-width="85"></div>
                      </div>
                  </div>
                  <div class="progress-box">
                      <h5>jQuery <span class="color-heading pull-right">熟练掌握</span></h5>
                      <div class="progress">
                          <div class="progress-bar bg-color-base" role="progressbar" data-width="70"></div>
                      </div>
                  </div>
                  <div class="progress-box">
                      <h5>Bootstrap <span class="color-heading pull-right">熟练使用</span></h5>
                      <div class="progress">
                          <div class="progress-bar bg-color-base" role="progressbar" data-width="76"></div>
                      </div>
                  </div>
                  <div class="progress-box">
                      <h5>SSM框架 <span class="color-heading pull-right">熟练使用</span></h5>
                      <div class="progress">
                          <div class="progress-bar bg-color-base" role="progressbar" data-width="80"></div>
                      </div>
                  </div>
                  <div class="progress-box">
                      <h5>Mysql <span class="color-heading pull-right">熟练掌握</span></h5>
                      <div class="progress">
                          <div class="progress-bar bg-color-base" role="progressbar" data-width="72"></div>
                      </div>
                  </div>
                  <div class="progress-box">
                      <h5>Linux <span class="color-heading pull-right">能够使用</span></h5>
                      <div class="progress">
                          <div class="progress-bar bg-color-base" role="progressbar" data-width="50"></div>
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
                          <h2 class="margin-b-0">IT技能</h2>
                          <p>我会什么?</p>
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
                                      <h3>前端</h3>
                                      <p class="margin-b-5">熟练掌握jQuery，css，bootstrap框架。能够灵活运用ajax进行前后台数据交互</p>
                                  </div>
                                  <!-- <a href="#" class="content-wrapper-link"></a>  -->   
                              </div>
                          </div>
                          <div class="col-md-4 md-margin-b-4">
                              <div class="service bg-color-base wow zoomIn" data-height="height" data-wow-duration=".3" data-wow-delay=".1s">
                                  <div class="service-element">
                                      <i class="service-icon color-white icon-screen-tablet"></i>
                                  </div>
                                  <div class="service-info">
                                      <h3 class="color-white">后台</h3>
                                      <p class="color-white margin-b-5">能够运用SSM框架进行快速的开发，掌握mysql,oracle数据库，tomcat服务器。熟悉Linux，能够在Linux系统下进行软件的安装及web项目的部署</p>
                                  </div>
                                  <!-- <a href="" class="content-wrapper-link"></a> -->    
                              </div>
                          </div>
                          <div class="col-md-4">
                              <div class="service" data-height="height">
                                  <div class="service-element">
                                      <i class="service-icon icon-badge"></i>
                                  </div>
                                  <div class="service-info">
                                      <h3>工具</h3>
                                      <p class="margin-b-5">能够熟练运用Eclipse,Notepad++等开发工具，SVN,GIT等版本控制工具</p>
                                  </div>
                                  <!-- <a href="" class="content-wrapper-link"></a>  -->   
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
<div class="copyrights">Collect from</div>
      <!-- Work -->
  <div id="work">
      <div class="container content-lg">
          <div class="row">
              <div class="col-sm-3 sm-margin-b-30">
                  <div class="text-right sm-text-left">
                      <h2 class="margin-b-0">项目经验</h2>
                      <p>做过的项目</p>
                  </div>
              </div>
              <div class="col-sm-8 col-sm-offset-1">
                  <!-- Masonry Grid -->
                  <div class="masonry-grid row row-space-2">
                      <div class="masonry-grid-sizer col-xs-6 col-sm-6 col-md-1"></div>
                      <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-7 margin-b-4">
                      
                          <!-- Work -->
                          <div class="work work-popup-trigger">
                              <div class="work-overlay">
                                 <!--  <img class="full-width img-responsive" src="img/800x400/01.jpg" alt="Portfolio Image"> -->
                                 <h3>2017.2 &nbsp;&nbsp;&nbsp;&nbsp;门户网站开发</h3>
                              </div>
                              <div class="work-popup-overlay">
                                  <div class="work-popup-content">
                                      <a href="javascript:void(0);" class="work-popup-close">关闭</a>
                                      <div class="margin-b-30">
                                          <h3 class="margin-b-5">门户网站开发</h3>
                                          
                                      </div>
                                      <div class="row">
                                          <div class="col-sm-12 work-popup-content-divider sm-margin-b-20">
                                              <div class="margin-t-10 sm-margin-t-0">
                                                  <p>该门户网站主要用于公司处理客户所提出的需求，让项目经理分配需求。主要提出需求，查看需求，分配需求等功能。采用SSM框架编写后台，前台主要使用CSS，JS，jQuery，bootstrap框架等。</p>
                                                  <p>本人在该项目中主要任务 :1.客户提出需求，需求附件的上传以及需求的提交。2.客户问题的提交。3.客户需求的显示，以及项目经理将需求的驳回和分配给开发人员的功能开发。</p>
                                                  <!-- <ul class="list-inline work-popup-tag">
                                                      <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Design,</a></li>
                                                      <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Coding,</a></li>
                                                      <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Portfolio</a></li>
                                                  </ul> -->
                                              </div>
                                          </div>
                                          <!-- <div class="col-sm-4">
                                              <div class="margin-t-10 sm-margin-t-0">
                                                  <p class="margin-b-5"><strong>Project Leader:</strong> John Doe</p>
                                                  <p class="margin-b-5"><strong>Designer:</strong> Alisa Keys</p>
                                                  <p class="margin-b-5"><strong>Developer:</strong> Mark Doe</p>
                                                  <p class="margin-b-5"><strong>Customer:</strong> Keenthemes</p>
                                              </div>
                                          </div> -->
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <!-- End Work -->
                      </div>
                      <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-7 margin-b-4">
                          <!-- Work -->
                          <div class="work work-popup-trigger">
                              <div class="work-overlay">
                                  <h3>2017.6 &nbsp;&nbsp;&nbsp;&nbsp;IVAS平台</h3>
                              </div>
                              <div class="work-popup-overlay">
                                  <div class="work-popup-content">
                                      <a href="javascript:void(0);" class="work-popup-close">关闭</a>
                                      <div class="margin-b-30">
                                          <h3 class="margin-b-5">IVAS平台</h3>
                                          
                                      </div>
                                      <div class="row">
                                          <div class="col-sm-12 work-popup-content-divider sm-margin-b-20">
                                              <div class="margin-t-10 sm-margin-t-0">
                                                  <p>该项目主要是利用4G定位系统来定位商场内部的顾客的位置，以此来统计和分析商场店铺的客流量数据。该项目分为Android端和Web端。本人主要负责Web端网站开发，主要使用SSM框架，Mysql数据库，jQuery，Bootstrap框架。</p>
                                                  <p>本人在该项目中主要任务：1、商铺配置页面的开发，包括新建配置，显示配置，修改配置以及删除配置。2、店铺的进店率、深访率、溢出率的统计 。 3、系统天气功能 。 4、获取服务器信息（CPU、磁盘、内存的使用情况）</p>
                                                  <!-- <ul class="list-inline work-popup-tag">
                                                      <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Design,</a></li>
                                                      <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Coding,</a></li>
                                                      <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Portfolio</a></li>
                                                  </ul> -->
                                              </div>
                                          </div>
                                          <!-- <div class="col-sm-4">
                                              <div class="margin-t-10 sm-margin-t-0">
                                                  <p class="margin-b-5"><strong>Project Leader:</strong> John Doe</p>
                                                  <p class="margin-b-5"><strong>Designer:</strong> Alisa Keys</p>
                                                  <p class="margin-b-5"><strong>Developer:</strong> Mark Doe</p>
                                                  <p class="margin-b-5"><strong>Customer:</strong> Keenthemes</p>
                                              </div>
                                          </div> -->
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <!-- End Work -->
                      </div>
                      <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-7 md-margin-b-4">
                          <!-- Work -->
                          <div class="work work-popup-trigger">
                              <div class="work-overlay">
                              		<h3>2017.9 &nbsp;&nbsp;&nbsp;&nbsp;存量房数据管理系统</h3>
                              </div>
                              <div class="work-popup-overlay">
                                  <div class="work-popup-content">
                                      <a href="javascript:void(0);" class="work-popup-close">关闭</a>
                                      <div class="margin-b-30">
                                          <h3 class="margin-b-5">存量房数据管理系统</h3>
             
                                      </div>
                                      <div class="row">
                                          <div class="col-sm-12 work-popup-content-divider sm-margin-b-20">
                                              <div class="margin-t-10 sm-margin-t-0">
                                                  <p>该系统是用于加强税务人员对核价系统数据的监管，以及方便软件公司人员对数据的处理。使得评估公司和地方税务局的人员能方便的提交审核，软件公司人员能快捷的接受数据。 1、侍弄用spring，springmvc，hibernate进行项目开发 。2、用EXTJS,jquery进行前台开发 。3、后台使用oracle关系数据库 4、用MD5来保持密码一致性 </p>
                                                  <p>本人在该项目中主要任务：1、数据上传:主要用于评估公司和地税局上传数据以及附件，包括数据的上传提交，以及上传之后还未提交数据的删除。2、数据审核:由软件公司审核已经提交的数据包括，根据地区，标题，时间查询数据，查看数据具体信息，下载附件，审核 。3、数据复审:由软件公司进行对已经审核的数据进行数据的复审 。 4、据查询:查询录入的都有数据包括已经提交，审核的，和已经通过的。5.证明管理:对已经审核的数据开具证明，包括新建证明，查询证明，下载证明。</p>
                                                  <!-- <ul class="list-inline work-popup-tag">
                                                      <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Design,</a></li>
                                                      <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Coding,</a></li>
                                                      <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Portfolio</a></li>
                                                  </ul> -->
                                              </div>
                                          </div>
                                          <!-- <div class="col-sm-4">
                                              <div class="margin-t-10 sm-margin-t-0">
                                                  <p class="margin-b-5"><strong>Project Leader:</strong> John Doe</p>
                                                  <p class="margin-b-5"><strong>Designer:</strong> Alisa Keys</p>
                                                  <p class="margin-b-5"><strong>Developer:</strong> Mark Doe</p>
                                                  <p class="margin-b-5"><strong>Customer:</strong> Keenthemes</p>
                                              </div>
                                          </div> -->
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <!-- End Work -->
                      </div>
                      <!-- <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4 md-margin-b-4">
                          Work
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
                          End Work
                      </div>
                      <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4">
                          Work
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
                          End Work
                      </div> -->
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
                          <h2 class="margin-b-0">联系方式</h2>
                          <p>发邮件给我</p>
                      </div>
                  </div>
                  <div class="col-sm-8 col-sm-offset-1">
                      <div class="row">
                          <div class="col-md-3 col-xs-6 md-margin-b-30">
                              <h5>居住地</h5>
                              <a href="#">成都, 郫县</a>
                          </div>
                          <div class="col-md-3 col-xs-6 md-margin-b-30">
                              <h5>电话</h5>
                              <a href="#">+86 185 2385 1346</a>
                          </div>
                          <div class="col-md-3 col-xs-6">
                              <h5>邮箱</h5>
                              <a href="mailto:#">965702794@qq.com</a>
                          </div>
                          <div class="col-md-3 col-xs-6">
                              <h5>网站</h5>
                              <a href="http://119.23.205.160:8080/PersonalWebsite/home.jsp">http://119.23.205.160:8080/PersonalWebsite/home.jsp</a>
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
                  <!-- <img class="footer-logo" src="img/logo-dark.png" alt="Aircv Logo"> -->
                  <a href="../resu/downFile.do"><h4>下载简历</h4></a>
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
  <a href="javascript:void(0);" class="js-back-to-top back-to-top">TOP</a>

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