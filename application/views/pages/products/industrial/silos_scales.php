<style type="text/css">
	.glyphicon.glyphicon-remove-circle {
		top:3px;
	}

	#remove {
        color:#fff;
    }

	#titletag {
        font-weight: normal;
    }

	.outer {
        height: auto;
        padding-bottom: 50px;
    }

    @media (min-width: 992px) {
        .outer{
            min-height: 500px;
        }
    }

		.row {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display:         flex;
	flex-wrap: wrap;
}
.row > [class*='col-'] {
	display: flex;
	flex-direction: column;
}

    .product_title {
        color: #FB8300;
    }

    .product_subtitle {
        margin-top: -10px;
    }

    .product_body {
        font-size: 12px;
    }

    div.row ol {
        padding: 0px 25px;
    }

</style>

<div class="outer">
	<div class="container main_content">
		<div class="row mgtop15px">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="font-weight: bold;font-size: 18px;text-align: center; padding-top: 25px;">
				<span style="font-weight: bold;font-size: 20px;text-align: center; padding-top: 25px;" class="product_title">
				    Platform Load Cells</span>
			</div>
		</div>
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 " style="margin-top: 40px;">
			<div class="row row-eq-height">
            <?php foreach($query_controller as $row) { ?>
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12" style="padding-left: 0px;padding-top: 15px;padding-bottom: 15px;">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="background-color:#f3f1f1;">
                        <div class="product_section" style="margin-bottom: 10px;">
                            <div class="product_header">
                                <h4><?php echo $row->name; ?>
                                </h4>
                                <h5><span class="product_title">Brand :</span> <?php echo $row->brand_id; ?></h5>
                            </div>
                            <div class="product_body">
                                <img src="<?php echo base_url('product/').$row->image; ?>"/>
                                <?php echo $row->summary; ?>
                            </div>
						</div>
					</div>
				</div>
            <?php }?>
			</div>
		</div>
	</div>

	<div class="container main_content">
		<div class="row mgtop15px">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="font-weight: bold;font-size: 18px; text-align: center;">
				<span style="font-weight: bold;font-size: 20px;text-align: center; padding-top: 25px;" class="product_title">
				    Weighing Platform</span>
			</div>
		</div>
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 " style="margin-top: 40px;">
			<div class="row">
            <?php foreach($query_transmitter as $row) { ?>
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12" style="padding-left: 0px; padding-top: 15px;padding-bottom: 15px;">
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="background-color:#f3f1f1;">
                        <div class="product_section" style="margin-bottom: 10px;">
                            <div class="product_header">
                                <h4><?php echo $row->name; ?></h4>
                                <h5><span class="product_title">Brand :</span> <?php echo $row->brand_id; ?></h5>
                            </div>
                            <div class="product_body">
                                <img src="<?php
                                                echo base_url('product/').$row->image;
                                          ?>"/>
                                <?php echo $row->summary; ?>
                            </div>
													</div>
											</div>
									</div>
            <?php }?>
			</div>
		</div>
	</div>
	<div class="container main_content">
		<div class="row mgtop15px">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="font-weight: bold;font-size: 18px;text-align: center; padding-top: 25px;">
				<span style="font-weight: bold;font-size: 20px;text-align: center; padding-top: 25px;" class="product_title">
				    Terminals/Indicators</span>
			</div>
		</div>
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 " style="margin-top: 40px;">
			<div class="row">
            <?php foreach($query_indicator as $row) { ?>
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12" style="padding-left: 0px;padding-top: 15px;padding-bottom: 15px;">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="background-color:#f3f1f1;">
                        <div class="product_section" style="margin-bottom: 10px;">
                            <div class="product_header">
                                <h4><?php echo $row->name; ?>
                                </h4>
                                <h5><span class="product_title">Brand :</span> <?php echo $row->brand_id; ?></h5>
                            </div>
                            <div class="product_body">
                                <img src="<?php
                                                echo base_url('product/').$row->image;
                                          ?>"/>
                                <?php echo $row->summary; ?>
                            </div>
						</div>
					</div>
				</div>
            <?php }?>
			</div>
		</div>
	</div>
	<div class="container main_content">
		<div class="row mgtop15px">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="font-weight: bold;font-size: 18px;text-align: center; padding-top: 25px;">
				<span style="font-weight: bold;font-size: 20px;text-align: center; padding-top: 25px;" class="product_title">
				    Terminals/Indicators</span>
			</div>
		</div>
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 " style="margin-top: 40px;">
			<div class="row">
            <?php foreach($query_cells as $row) { ?>
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12" style="padding-left: 0px;padding-top: 15px;padding-bottom: 15px;">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="background-color:#f3f1f1;">
                        <div class="product_section" style="margin-bottom: 10px;">
                            <div class="product_header">
                                <h4><?php echo $row->name; ?>
                                </h4>
                                <h5><span class="product_title">Brand :</span> <?php echo $row->brand_id; ?></h5>
                            </div>
                            <div class="product_body">
                                <img src="<?php
                                                echo base_url('product/').$row->image;
                                          ?>"/>
                                <?php echo $row->summary; ?>
                            </div>
						</div>
					</div>
				</div>
            <?php }?>
			</div>
		</div>
	</div>
</div>
