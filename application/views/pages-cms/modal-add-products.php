<?php echo form_open_multipart('Our_Products_cms/addProducts');?>


<!-- HEADER -->
<div class="modal-header" style="background-color: #f5aa42  ;padding: 0.2rem;">
  <p style="color: white;margin-top: 0.5em; margin-left: 0.5em; font-size: 20px; font-weight: bold;">Add Products</p>
  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>

  <!-- Edit Margin -->
<div class="modal-body" style="font-size: 14px;">
  
  <div class="form-group row">
    <label class="col-sm-4 col-form-label" style="font-weight: bold;">NAME</label>
    <div class="col-sm-8">
      <input type="text" name="name" class="form-control">
    </div>
  </div>
  <div class="form-group row">
    <label class="col-sm-4 col-form-label" style="font-weight: bold;">PRODUCT ID</label>
    <div class="col-sm-8">
      <input type="text" name="product_id" class="form-control">
    </div>
  </div>
  <div class="form-group row">
    <label class="col-sm-4 col-form-label" style="font-weight: bold; margin-right: 1em;">BRAND CATEGORY</label>
    <select name="product_brand" class="custom-select" style="width: 200px;">
      <option selected>Select Brand</option>
      <?php
      //------------ disini buat nampilin data yang di bawa tadi ...
        foreach($select_brand->result() as $r_brand){
          ?>
           <option value="<?php echo $r_brand->ID?>"><?php echo $r_brand->ID?></option>
          <?php
        }
      ?>
    </select>
  </div>
  <div class="form-group row">
    <label class="col-sm-4 col-form-label" style="font-weight: bold; margin-right: 1em;">BRAND CATEGORY</label>
    <select name="product_category" class="custom-select" style="width: 200px;">
      <option selected>Select Category</option>
      <?php
      //------------ disini buat nampilin data yang di bawa tadi ...
        foreach($select_category->result() as $r_category){
          ?>
           <option value="<?php echo $r_category->ID?>"><?php echo $r_category->ID?></option>
          <?php
        }
      ?>
    </select>
  </div>
  <div class="form-group row">
    <label class="col-sm-4 col-form-label" style="font-weight: bold; margin-right: 1em;">BRAND CATEGORY</label>
    <select name="product_subcategory" class="custom-select" style="width: 200px;">
      <option selected>Select Subcategory</option>
      <?php
      //------------ disini buat nampilin data yang di bawa tadi ...
        foreach($select_subcategory->result() as $r_subcategory){
          ?>
           <option value="<?php echo $r_subcategory->ID?>"><?php echo $r_subcategory->ID?></option>
          <?php
        }
      ?>
    </select>
  </div>
  <div class="form-group row">
    <label class="col-sm-4 col-form-label" style="font-weight: bold;">SUMMARY</label>
    <div class="col-sm-8">
      <textarea type="text" name="summary_product" class="form-control"></textarea>
    </div>
  </div>
  <div class="form-group row">
    <label class="col-sm-4 col-form-label" style="font-weight: bold;">IMAGE</label>
    <div class="col-sm-8">
      <input type="file" title="Audio Test" name="file_image" action="<?php echo base_url('Our_Products_cms/addProducts');?>" >
    </div>
  </div>
  
</div>

<div class="modal-footer">
  <button type="submit" class="btn btn-default btn-info">Save</button>
  <button type="button" class="btn btn-outline-danger" data-dismiss="modal">Close</button>
</div>


<?php echo form_close();?>

<script src="<?php echo base_url('assets/js/tiny_mce/tiny_mce.js'); ?>"></script>
<script src="<?php echo base_url('assets/js/tiny_mce/plugins/tinybrowser/tb_tinymce.js.php'); ?>"></script>
<script src="<?php echo base_url('assets/js/tiny_mce/tiny_mce_setting.js'); ?>"></script>

<script type="text/javascript">
tinymce.init({
    selector: "textarea",
    plugins: [
        "advlist autolink lists link image charmap print preview anchor",
        "searchreplace visualblocks code fullscreen",
        "insertdatetime media table paste"
    ],
    toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
});
</script>