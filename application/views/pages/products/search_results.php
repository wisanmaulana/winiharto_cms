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

    @media (min-width: 992px) {
        .outer{
            min-height: 500px;
        }
    }

    .product_title {
        color: #FB8300;
    }

    .product_subtitle {
        margin-top: -10px;
    }

    .product_body {
        font-size: 12px;
				height: 100%;
    }

    div.row ol {
        padding: 0px 25px;
    }

</style>

<div class="outer">
	<div class="container main_content">
		<div class="row mgtop15px">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="font-weight: bold;font-size: 18px;text-align: center; padding-top: 25px;">
				<span style="font-weight: bold;font-size: 20px;text-align: center; padding-top: 25px;" class="product_title">Search Result</span>
			</div>
		</div>
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 " style="margin-top: 40px;">
			<div class="row">
			<?php if($query_product->num_rows() == 0): ?>
							<div class="col-lg-12" style="padding-left: 0px; padding-top: 15px;">
								<p style="padding-left: 50px; font-size: 20px;">No Result for <?php echo $keyword; ?></p>	
							</div>
			<?php else: ?> 
			<?php
			foreach($query_product->result() as $row): ?>
									<div class="row" style="margin: 20px 0; width: 100%;">
											<div class="col-lg-4">
												<img width="211" height="167" src="<?php echo $row->IMAGES; ?>" style="margin: 5em;"/>
											</div>
											<div class="col-lg-8" style="padding-top: 4em;">
												<div class="row">
													<h4><?php echo $row->NAME; ?></h4>
												</div>
												<div class="row" style="margin-top: -0.6em;">
													<h5><span class="product_title">Brand :</span> <?php echo $row->BRAND_CATEGORY; ?></h5>
												</div>
												<div class="row">
													<?php echo $row->SUMMARY; ?>
												</div>
											</div>
									</div>
			<?php endforeach;
				endif; 
			?>
			</div>
			<div class="row">
					<div class="col">
							<!--Tampilkan pagination-->
							<?php echo $pageLinks; ?>
							<center><?php echo $jml_list;?> out of <?php echo $total;?></center>
					</div>
			</div>
	</div>

	</div>
</div>
