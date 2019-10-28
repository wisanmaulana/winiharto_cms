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

		.custom-customers {
			list-style-type: none;
			margin-left: 4em;
		}

		.custom-customers p {
			margin-top: -2.1em;
		}

		.custom-customers li {
			margin-bottom: 1em;
		}

		.custom-customers li::before {
			content: "\2022";
			color:#FB8300;
			font-size: 2.5rem;
			width: 1em;
			margin-left: -1em;
			display: inline-block;
		}

</style>

<div class="outer">
	<div class="container main_content">
		<div class="row ">
		</div>
		<div class="row mgtop15px">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="font-weight: bold;font-size: 18px;text-align: center; padding-top: 25px;">
				<span style="font-weight: bold;font-size: 30px;text-align: left; padding-top: 25px; color: black;" class="text-uppercase">
				    Our <span class="product_title"> Customers</span></span>
			</div>
		</div>
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 " style="margin-top: 40px;">
      <h3>Our customers are mainly</h3>
		</div>
		<row>
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="height: 500px; background-image: linear-gradient(to top left, rgba(25,25,25, 0) 30%, rgba(247, 248, 250, 1) 60%),url(<?php echo base_url(); ?>assets/img/sartorius-lab-2.jpg); background-repeat: no-repeat;">
				<div class="col-lg-3">
					<ul class="custom-customers center">
						<li><p>Pharmaceuticals</p></li>
						<li><p>Food and Beverages</p></li>
						<li><p>Chemicals</p></li>
						<li><p>Cements</p></li>
						<li><p>Daily Products</p></li>
					</ul>
				</div>
				<div class="col-lg-6">
					<ul class="custom-customers">
						<li><p style="margin-top: -2.5em;">Goverment (BPOM, Department of Health, <br /> Department of Agriculture, Department of Commerce, etc)</p></li>
						<li><p>Agriculture</p></li>
						<li><p>Cigarettes</p></li>
						<li><p>Oil and Gas</p></li>
					</ul>
				</div>
			</div>
		</row>
	</div>
</div>
