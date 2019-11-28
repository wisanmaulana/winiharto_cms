<!DOCTYPE html>
<!--[if IE 7 ]>  <html lang="en-gb" class="isie ie7 oldie no-js"> <![endif]-->
<!--[if IE 8 ]>  <html lang="en-gb" class="isie ie8 oldie no-js"> <![endif]-->
<!--[if IE 9 ]>  <html lang="en-gb" class="isie ie9 no-js"> <![endif]-->
<!-- Meta -->
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords" content="Winiharto, PT Winiharto, Services, Vendor" />
<meta name="author" content="PT Winiharto" />
<meta name="robots" content="" />
<meta name="description" content="PT. Winiharto was established in 1971 as a distribution company for industrial weighing equipment. Our vision is to become
a leading distribution company which delivers solution and services to fullfill to fullfill our customers' needs and satisfaction." />
<meta name="format-detection" content="telephone=no">
<!-- Favicons Icon -->
<link rel="icon" href="images/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" type="image/x-icon" href="assets/template/images/favicon.png" />
<!-- Page Title Here -->
<title>PT Winiharto</title>
<!-- Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--[if lt IE 9]>
        <script src="js/html5shiv.min.js"></script>
        <script src="js/respond.min.js"></script>
	<![endif]-->
<!-- Stylesheets -->
<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/template/css/bootstrap.min.css');?>">
<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/template/css/fontawesome/css/font-awesome.min.css');?>" />
<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/template/css/owl.carousel.css');?>">
<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/template/css/bootstrap-select.min.css');?>">
<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/template/css/magnific-popup.css');?>">
<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/template/css/style.css');?>">
<link class="skin"  rel="stylesheet" type="text/css" href="<?php echo base_url('assets/template/css/skin/skin-1.css');?>">
<link  rel="stylesheet" type="text/css" href="<?php echo base_url('assets/template/css/templete.css');?>">
<!-- Revolution Slider Css -->
<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/template/plugins/revolution/revolution/css/settings.css');?>">
<!-- Revolution Navigation Style -->
<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/template/plugins/revolution/revolution/css/navigation.css');?>">
<!-- Google fonts -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900|Open+Sans:300,400,600,700,800|Roboto:100,300,400,500,700,900" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
</head>
<style type="text/css">
	.styleswitcher{
		display: none;
	}

	@font-face {
        font-family: revicons;
        src: url(<?php echo base_url();?>assets/fonts/revicons.ttf);
	}

	@media (max-width: 575.98px) {
	 .navigation-bar {
	 	background-color: white;
	 }

	 .navbar-toggle {
	 	background-color: #f8931d;
	 }


	}

	body{
		background-color: #292929;
	}
</style>
<body>
<div id="loading-area"></div>
<div class="page-wraper">
    <!-- header -->
    <header class="site-header header-style-4 style-1">
	<!-- top bar -->
    <!-- top bar END-->
	<div class="bg-white">
		<div class="container header-contant-block">
			<div class="row">
				<div class="col-md-6">
					<div class="logo-header "><a href="<?php echo site_url('');?>"><img src="<?php echo base_url('assets/template/images/logo.png');?>" width="193" height="89" alt=""></a></div>
				</div>
				<div class="col-md-6">
				<ul class="contact-info clearfix" style="margin-right: -200px;">
					<li>
						<h6 class="text-primary"><i class="fa fa-phone text-primary"></i> Call Us</h6>
						<span><a href="tel:021-536-51-222" style="text-decoration: none; color: #a7a7a7;">(021) 536 51 222</a></span> </li>
					<li>
					<h6 class="text-primary"><i class="fa fa-envelope-o text-primary"></i> Send us an eMail</h6>
						<span>info@winiharto.com</span>
					</li>
					<li>
						<img src="<?php echo base_url('assets/template/images/Minebea-Intec-Partnership-Logo.png');?>" width="193" height="89" alt="" style="margin-top: 10px;" />
					</li>
				</ul>
				</div>
			</div>
		</div>
		
		<!-- main header -->
        <div class="sticky-header main-bar-wraper">
            <div class="main-bar clearfix ">
                <div class="navigation-bar">
                    <div class="container clearfix">
                        <!-- website logo -->
                        <div class="logo-header mostion"><a href="<?php echo base_url(); ?>">
													<img src="<?php echo base_url('assets/template/images/logo.png');?>" width="193" height="89" alt=""></a>
												</div>
                        <!-- nav toggle button -->
                        <button data-target=".header-nav" data-toggle="collapse" type="button" class="navbar-toggle collapsed">
													<span class="sr-only">Toggle navigation</span>
													<span class="icon-bar"></span>
													<span class="icon-bar"></span>
													<span class="icon-bar"></span>
												</button>
                        <!-- extra nav -->
                        <div class="extra-nav">
                            <div class="extra-cell">
                                <button id="quik-search-btn" type="button" class="site-button"><i class="fa fa-search"></i></button>
                            </div>
                        </div>
                        <!-- Quik search -->
                        <div class="rdx-quik-search bg-primary">
						<?php
						$attributes = array(
							'method' => 'get',
							'id' => 'form_search',
							'name' => 'search'
						);
						echo form_open(base_url('products?query='), $attributes);
						//Username form input
						$searchingBox = array(
							'placeholder' => 'Type to search',
							'name' => 'search',
							'type' => 'text',
							'class' => 'form-control'
						);
						echo form_input($searchingBox);
						?>
					<span id="quik-search-remove"><i class="fa fa-remove"></i></span>
					<?php echo form_close(); ?>
                        </div>
                        <!-- main nav -->
							<!-- main nav -->
							<div class="header-nav navbar-collapse collapse nav-dark">
                	<ul class=" nav navbar-nav" style="font-size: 12px;">
					<?php foreach($navParent->result() as $parent) { ?>
						<li><a href="<?php echo site_url("$parent->LINK"); ?>"><?php echo $parent->NAME; ?><i class="fa fa-chevron-down"></i></a>
						<?php 
						//CHECK IF THERE'S AN CHILD CATEGORY FOR NAVIGATION
						$child = $this->nav->getNavigationChild($parent->REC_ID);
						if($child->num_rows() > 0) { ?>
						<ul class="sub-menu">
						<?php foreach($child->result() as $child) { ?>
							<li><a href="<?php echo site_url("$child->LINK");?>"><?php echo $child->NAME; ?></a>

							<!-- BRAND QUERY ONLY -->
							<?php $brand = $this->nav->getBrandParent($child->NAV_ID); 
									if($brand->num_rows() > 0) { 
							?> 
							<ul class="sub-menu">
							<?php foreach($brand->result() as $brandParent) { ?>
							<li>
								<!-- BRAND CATEGORY CHILD -->
								<?php 
									$brandChild = $this->nav->getBrandChild($brandParent->CATEGORY_ID);
									if($brandChild->num_rows() > 0) {
								?>
								<a href="#"><?php echo $brandParent->NAME; ?></a>
									<ul class="sub-menu">
									<?php foreach($brandChild->result() as $brandChild) { ?>
										<li><a href="<?php echo base_url('brand?name='.$brandChild->CATEGORY_ID); ?>"><?php echo $brandChild->NAME; ?></a>
									<?php } ?>
									</ul>
								<?php } else { ?>
								<a href="<?php echo base_url('brand?name='.$brandParent->CATEGORY_ID); ?>"><?php echo $brandParent->NAME; ?></a>
								<?php } ?>
							</li>
							<?php } ?>
							</ul>
							<?php } else { 
								$products = $this->nav->getCategoryParent($child->NAV_ID);
									if($products->num_rows() > 0) {
							?>
								<ul class="sub-menu">
								<?php foreach($products->result() as $productParent) { ?>
									<li><a href="<?php echo base_url('product?name='.$productParent->ID); ?>"><?php echo $productParent->NAME; ?></a></li>
								<?php } ?>
								</ul>
								<?php } ?>
							<?php } ?>
								</li>
							<?php } ?>
						</ul>
						<?php } ?> 
						</li>
						<?php } ?>
                    </ul>
					</div>
                    </div>
                </div>
            </div>
        </div>
        <!-- main header END -->
    </header>
