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
        margin-bottom: 10em;
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
    input[type=radio] {
    opacity:1;
        
    }
     input[type=checkbox] {
    opacity:1;
        
    }
    .text-orange{
        color:#FB8300;
        font-weight:bold;
    }

</style>

<div class="outer">
	<div class="container main_content">
		<div class="row ">
		</div>
		<div class="row mgtop15px">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="font-weight: bold;font-size: 18px;text-align: center; padding-top: 25px;">
				<span style="font-weight: bold;font-size: 30px;text-align: left; padding-top: 25px; color: black;" class="text-uppercase">
				    Form <span class="product_title">Vacancy</span></span>
			</div>
		</div>
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 " style="margin-top: 40px;background-color:#fff;padding:30px;">
            <div class="row" style="padding-top:2em;">
            	<div class="col-lg-5 col-md-5 col-sm-12 col-xs-12" >
            	    
            	    <div class="row">
            	         <div class="col-md-12 col-sm-12 col-xs-12">
            	            <div class="col-md-5 col-sm-12 col-xs-12"><label>Position</label></div>
            	            <div class="col-md-7 col-sm-12 col-xs-12" style="font-weight:bold;"><?php echo strtoupper('Account Payable')?></div>
            	        </div>
            	        <div class="col-md-12 col-sm-12 col-xs-12">
            	            <div class="col-md-5 col-sm-12 col-xs-12"><label>Gender</label></div>
            	            <div class="col-md-7 col-sm-12 col-xs-12">Male</div>
            	        </div>
            	        <div class="col-md-12 col-sm-12 col-xs-12">
            	            <div class="col-md-5 col-sm-12 col-xs-12"><label>Min Education</label></div>
            	            <div class="col-md-7 col-sm-12 col-xs-12">S1</div>
            	        </div>
            	        <div class="col-md-12 col-sm-12 col-xs-12">
            	            <div class="col-md-5 col-sm-12 col-xs-12"><label>Age Range</label></div>
            	            <div class="col-md-7 col-sm-12 col-xs-12 text-orange">20 - 40</div>
            	        </div>
            	        <div class="col-md-12 col-sm-12 col-xs-12">
            	            <div class="col-md-5 col-sm-12 col-xs-12"><label>Working Experience</label></div>
            	            <div class="col-md-7 col-sm-12 col-xs-12">Fresh Graduate</div>
            	        </div>
            	        <hr>
            	        <div class="col-md-12 col-sm-12 col-xs-12">
            	            <div class="col-md-5 col-sm-12 col-xs-12"><label>Notes</label></div>
            	            <div class="col-md-7 col-sm-12 col-xs-12">
            	                <p><em><strong>menyertakan :</strong></em></p><ul><li><strong><em>fotocopy KTP</em></strong></li><li><strong><em>foto 3 x 4</em></strong></li><li><strong><em>fotocopy ijaza</em></strong></li><li><strong><em>lamaran kerja</em></strong></li><li><strong><em>CV</em></strong></li></ul>
            	            </div>
            	        </div>
            	        
            	    </div>
            	</div>
            	<div class="col-lg-7 col-md-7 col-sm-12 col-xs-12" style="border-left:1px solid #ddd;padding:10px;">
                	<form >
                	  <!-- Full Name-->
                      <div class="form-group" style="padding-left:1em;">
                       <label> Full Name</label>
                        <input type="text"  class="form-control" id="email" placeholder="Full Name" required>
                      </div>
                      <!-- Birth Day -->
                      <div class="form-group" >
                        <label style="margin-left:1em;">BOD / BOP  </label><br>
                          <div class="col-xs-4">
                            <input type="date" class="form-control" id="email" placeholder="YYYY-MM-DD" required>
                          </div>
                          <div class="col-xs-8">
                            <input type="text" class="form-control" id="email" placeholder="Place" required>
                          </div>
                      </div>
                      <!-- Gender-->
                      </br>
                      <div class="form-group" style="padding-left:1em;">
                       <label> Gender</label><br>
                          <div class="col-xs-4">
                            <input type="radio" name="gender"  value="male" required> Male
                          </div>
                          <div class="col-xs-4">
                             <input type="radio"name="gender" value="female"> Female
                          </div>
                      </div>
                      <!-- Last Education-->
                      <div class="form-group" style="padding-left:1em;">
                       <label> Last Education</label>
                        <select  class="form-control" required>
                            <option value="" >- Select -</option>
                            <option value="D1">D1</option>
                            <option value="D2">D2</option>
                            <option value="D3">D3</option>
                            <option value="S1">S1</option>
                            <option value="S2">S2</option>
                            <option value="S3">S3</option>
                        </select>
                      </div>
                       <!-- Work experiences-->
                       <div class="form-group">
                       <label style="margin-left:1em;"> Work Experiences</label><br>
                         <div class="col-xs-4">
                            <input type="text" class="form-control" name="gender"  placeholder="Year" required> 
                          </div>
                      </div>
                      <br/>
                    <!-- Time-->
                     <div class="form-group" style="padding-left:1em;">
                       <label> Interview Schedule</label><br/>
                       <label class="text-orange" style="font-size:11pt ;margin-left:1em;"> 2019-10-12</label>
                       <label  style="font-size:8pt;font-weight:normal;">( Please Select Time )</label><br/>
                       <div class="col-xs-4">
                          <select  class="form-control">
                            <option disabled style="color:red;">09:00 Not Available</option>
                            <option>10:00</option>
                            <option>11:00</option>
                            <option>13:00</option>
                            <option>14:00</option>
                            <option>15:00</option>
                        </select>
                          </div>

                      </div>
                      <br>
                       <div class="form-group" style="padding-left:1em;">
                       <label>Upload Document</label>
                        <input type="file"  name="file[]" multiple="multiple" class="form-control" id="email" placeholder="Full Name" required>
                      </div>
                      <div class="form-group" style="padding-left:1em;">
                        <input type="submit"  class="btn btn-primary site-button" style="width:30%;" value="Submit">
                      </div>
                    </form>
            	</div>
            </div>
		</div>
	</div>
</div>
