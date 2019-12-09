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
														// $attributes = array(
														// 	'method' => 'post',
														// 	'id' => 'form_search',
														// 	'name' => 'search'
														// );
														// echo form_open(site_url('product/search'), $attributes);
														// //Username form input
														// $searchingBox = array(
														// 	'placeholder' => 'Type to search',
														// 	'name' => 'search',
														// 	'type' => 'text',
														// 	'class' => 'form-control'
														// );
														// echo form_input($searchingBox);
													?>
														<span id="quik-search-remove"><i class="fa fa-remove"></i></span>
													<?php //echo form_close(); ?>
                        </div>
                        <!-- main nav -->
                        <div class="header-nav navbar-collapse collapse nav-dark">
                            <ul class=" nav navbar-nav" style="font-size: 12px;">

															<!-- CHECK IF THE ROUTES IF ACTIVE OR NOT -->
															<?php if($this->uri->segment(1) == 'home'): ?>
															<li class="active">
																<?php else: ?>
																<li>
															<?php endif; ?>
                                    <a href="<?php echo site_url('home'); ?>">Home<i class="fa fa-chevron-down"></i></a>
                                </li>
																<!-- CHECK IF THE ROUTES IF ACTIVE OR NOT -->
																<?php if($this->uri->segment(1) == 'about'): ?>
																<li class="active">
																	<?php else: ?>
																	<li>
																<?php endif; ?>
																<a href="#">About Us<i class="fa fa-chevron-down"></i></a>

                                    <ul class="sub-menu">
                                        <li>
																					<a href="<?php echo site_url('about/about_us');?>">About The Company</a>
                                        </li>
                                        <li>
																					<a href="<?php echo site_url('about/vision');?>">Vision & Mission</a>
                                        </li>
																				<li>
																					<a href="<?php echo site_url('about/customers'); ?>">Our Customers</a>
                                        </li>
                                    </ul>
                                </li>
																<!-- CHECK IF THE ROUTES IF ACTIVE OR NOT -->
																<?php if($this->uri->segment(1) == 'brand'): ?>
																<li class="active">
																	<?php else: ?>
																	<li>
																<?php endif; ?>
																	<a href="#">Our Brands<i class="fa fa-chevron-down"></i></a>
																	<ul class="sub-menu">
																		<li><a href="#">Minebea Intec</a>
																			<ul class="sub-menu">
																				<?php
																				$query = $this->db->query("SELECT w_brand_category.`ID`, w_brand_category.`NAME`
																																	 FROM w_brand_category
																																	 WHERE w_brand_category.`BRAND_ID` = 'MINEBEA INTEC'");
																				foreach($query->result() as $row) {
																					$stringUrl = site_url('brand/').$row->ID;
																							if($row->ID == 'MNB-08') {
																								echo '<li><a href="'.$stringUrl.'">'.$row->NAME.'</a></li>';
																							}	else {
																								echo '<li><a href="#">'.$row->NAME.'</a>';
																								echo '<ul class="sub-menu">';
																								$query = $this->db->query("SELECT w_brand_subcategory.`ID`, w_brand_subcategory.`NAME`, w_brand_subcategory.`PARENT_CATEGORY`
																																					 FROM w_brand_subcategory
																																					 WHERE w_brand_subcategory.`PARENT_CATEGORY` = '$row->ID'");
																								foreach ($query->result() as $row) {
																									$stringUrl = site_url('brand/').$row->PARENT_CATEGORY.'/'.$row->ID;
																											echo '<li><a href="'.$stringUrl.'">'.$row->NAME.'</a></li>';
																								}
																								echo '</li></ul>';
																							}
																				}
																				?>
																			</ul>
																		</li>
																		<li><a href="#">Banzai</a>
																			<ul class="sub-menu">
																				<?php
																				$query = $this->db->query("SELECT w_brand_category.`ID`, w_brand_category.`NAME`
																																	 FROM w_brand_category
																																	 WHERE w_brand_category.`BRAND_ID` = 'BANZAI'");
																				foreach($query->result() as $row) {
																					$stringUrl = site_url('brand/').$row->ID;
																						echo '<li><a href="'.$stringUrl.'">'.$row->NAME.'</a></li>';
																				}
																				?>
																			</ul>
																		</li>
																		<li>
																			<a href="#">Sartorius</a>
																			<ul class="sub-menu">
																				<?php
																				$query = $this->db->query("SELECT w_brand_category.`ID`, w_brand_category.`NAME`
																																	 FROM w_brand_category
																																	 WHERE w_brand_category.`BRAND_ID` = 'SARTORIUS'");
																				foreach($query->result() as $row) {
																					$stringUrl = site_url('brand/').$row->ID;
																					$query = $this->db->query("SELECT w_brand_subcategory.`ID`, w_brand_subcategory.`NAME`, w_brand_subcategory.`PARENT_CATEGORY`
																																		 FROM w_brand_subcategory
																																		 WHERE w_brand_subcategory.`PARENT_CATEGORY` = '$row->ID'");
																					if($query->num_rows() > 0) {
																									echo '<li><a href="#">'.$row->NAME.'</a>';
																									echo '<ul class="sub-menu">';
																									foreach ($query->result() as $row) {
																										$stringUrl = site_url('brand/').$row->PARENT_CATEGORY.'/'.$row->ID;
																												echo '<li><a href="'.$stringUrl.'">'.$row->NAME.'</a></li>';
																									}
																									echo '</li></ul>';
																					} else {
																						echo '<li><a href="'.$stringUrl.'">'.$row->NAME.'</a></li>';
																					}
																				}
																				?>
																			</ul>
																		</li>
																		<li><a href="#">Flintec</a>
																			<ul class="sub-menu">
																				<?php
																				$query = $this->db->query("SELECT w_brand_category.`ID`, w_brand_category.`NAME`
																																	 FROM w_brand_category
																																	 WHERE w_brand_category.`BRAND_ID` = 'FLINTEC'");
																				foreach($query->result() as $row) {
																					$stringUrl = site_url('brand/').$row->ID;
																							if($row->ID == 'FTC-01') {
																								echo '<li><a href="#">'.$row->NAME.'</a>';
																								echo '<ul class="sub-menu">';
																								$query = $this->db->query("SELECT w_brand_subcategory.`ID`, w_brand_subcategory.`NAME`, w_brand_subcategory.`PARENT_CATEGORY`
																																					 FROM w_brand_subcategory
																																					 WHERE w_brand_subcategory.`PARENT_CATEGORY` = 'FTC-01'");
																								foreach ($query->result() as $row) {
																									$stringUrl = site_url('brand/').$row->PARENT_CATEGORY.'/'.$row->ID;
																											echo '<li><a href="'.$stringUrl.'">'.$row->NAME.'</a></li>';
																								}
																								echo '</li></ul>';
																							} else {
																								echo '<li><a href="'.$stringUrl.'">'.$row->NAME.'</a></li>';
																							}
																				}
																				?>
																			</ul>
																		</li>
																		<li><a href="#">GCC Scales</a>
																			<ul class="sub-menu">
																				<?php
																				$query = $this->db->query("SELECT w_brand_category.`ID`, w_brand_category.`NAME`
																																	 FROM w_brand_category
																																	 WHERE w_brand_category.`BRAND_ID` = 'GCC'");
																				foreach($query->result() as $row) {
																					$stringUrl = site_url('brand/').$row->ID;
																							echo '<li><a href="'.$stringUrl.'">'.$row->NAME.'</a></li>';
																							// echo '<li><a href="'.$stringUrl.'">'.$row->NAME.'</a></li>';
																				}
																				?>
																			</ul>
																		</li>
																	</ul>
                                </li>
																<!-- CHECK IF THE ROUTES IF ACTIVE OR NOT -->
																<?php if($this->uri->segment(1) == 'product'): ?>
																<li class="active">
																	<?php else: ?>
																	<li>
																<?php endif; ?>
                                <a href="javascript:;">Our Products<i class="fa fa-chevron-down"></i></a>
                                    <ul class="sub-menu">
                                        <li> <a href="#">Industrial Weighing</a>
                                            <ul class="sub-menu">
																							<?php

																							$query = $this->db->query("SELECT * FROM p_category
																							  												 WHERE DESCRIPTION = 'IND'");
																							foreach($query->result() as $row) {
																								$stringUrl = site_url('products/').$row->ID;
																								echo '<li><a href="'.$stringUrl.'">'.$row->NAME.'</a></li>';
																							}
																 							?>
                                            </ul>
                                        </li>
                                        <li> <a href="#">Laboratory Weighing</a>
                                            <ul class="sub-menu">
																							<?php

																							$query = $this->db->query("SELECT * FROM p_category
																																				 WHERE DESCRIPTION = 'BAL'");
																							foreach($query->result() as $row) {
																								$stringUrl = site_url('products/').$row->ID;
																										echo '<li><a href="'.$stringUrl.'">'.$row->NAME.'</a></li>';
																							}
																							?>
                                            </ul>
                                        </li>
																				<li> <a href="#">Garage Equipment</a>
                                            <ul class="sub-menu" style="overflow: auto; height: 20em;">
																							<?php

																							$query = $this->db->query("SELECT * FROM p_category
																																				 WHERE DESCRIPTION = 'GRG'");
																							foreach($query->result() as $row) {
																								$stringUrl = site_url('products/').$row->ID;
																										echo '<li><a href="'.$stringUrl.'">'.$row->NAME.'</a></li>';
																							}
																							?>
                                            </ul>
                                        </li>
                                        <li> <a href="#">Lab Equipment</a>
                                            <ul class="sub-menu" style="overflow: auto; height: 20em;">
																							<?php

																							$query = $this->db->query("SELECT * FROM p_category
																																				 WHERE DESCRIPTION = 'LAB'");
																							foreach($query->result() as $row) {
																								$stringUrl = site_url('products/').$row->ID;
																								//$stringUrl = "#";
																										echo '<li><a href="'.$stringUrl.'">'.$row->NAME.'</a></li>';
																										// echo '<li><a href="'.$stringUrl.'">'.$row->NAME.'</a></li>';
																							}
																							?>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>

																<!-- CHECK IF THE ROUTES IF ACTIVE OR NOT -->
																<?php if($this->uri->segment(1) == 'distribution'): ?>
																<li class="active">
																	<?php else: ?>
																	<li>
																<?php endif; ?>
																	<a href="<?php echo site_url('distribution'); ?>">Distribution History<i class="fa fa-chevron-down"></i></a>
                                </li>

																<!-- CHECK IF THE ROUTES IF ACTIVE OR NOT -->
																<?php if($this->uri->segment(1) == 'workshop'): ?>
																<li class="active">
																	<?php else: ?>
																	<li>
																<?php endif; ?>
																	<a href="<?php echo site_url('workshop'); ?>">Workshop<i class="fa fa-chevron-down"></i></a>
                                </li>

																<!-- CHECK IF THE ROUTES IF ACTIVE OR NOT -->
																<?php if($this->uri->segment(1) == 'contacts'): ?>
																<li class="active">
																	<?php else: ?>
																	<li>
																<?php endif; ?>
																	<a href="<?php echo site_url('contacts'); ?>">Contact us <i class="fa fa-chevron-down"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- main header END -->
    </header>
