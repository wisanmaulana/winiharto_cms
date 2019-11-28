<?php echo form_open_multipart('Category_cms/updateCategory');?>
<?php foreach($category->result() as $data): ?>


<!-- HEADER -->
<div class="modal-header" style="background-color: #f5aa42  ;padding: 0.2rem;">
  <p style="color: white;margin-top: 0.5em; margin-left: 0.5em; font-size: 20px; font-weight: bold;">Edit Category</p>
  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>

  <!-- Edit TEST -->
  <div class="modal-body" style="font-size: 14px;">
  <div class="form-group row">
     <input type="hidden" name="id" style="width: 100%" value="<?php echo $data->REC_ID;?>">
    <label class="col-sm-4 col-form-label" style="font-weight: bold;">ID BRAND</label>
    <div class="col-sm-8">
      <input type="text" name="id_category" class="form-control" value="<?php echo $data->ID;?>">
    </div>
  </div>

  <div class="form-group row">
    <label class="col-sm-4 col-form-label" style="font-weight: bold;">BRAND NAME</label>
    <div class="col-sm-8">
      <input type="text" name="name_brand" class="form-control" value="<?php echo $data->NAME;?>">
    </div>
  </div>

  <div class="form-group row">
    <label class="col-sm-4 col-form-label" style="font-weight: bold; margin-right: 1em;">BRAND ID</label>
    <select name="id_brand" class="custom-select" style="width: 200px;">
      <!-- <option selected>Select Brand</option> -->
      <?php
      //------------ disini buat nampilin data yang di bawa tadi ...
      //------------ 
        foreach($select_brand->result() as $r_brand){
          if($r_brand->ID==$data->BRAND_ID){
          ?>
           <option value="<?php echo $r_brand->ID?>" selected="selected"><?php echo $r_brand->ID?></option>
          <?php
        }else{
          ?>
          <option value="<?php echo $r_brand->ID?>"><?php echo $r_brand->ID?></option>
        <?php
          }
        }
      ?>
    </select>
      <!-- <input type="text" name="id_brand" class="form-control"> -->
  </div>

  <!-- <div class="form-group row">
    <label class="col-sm-4 col-form-label" style="font-weight: bold;">BRAND ID</label>
    <div class="col-sm-8">
      <input type="text" name="id_brand" class="form-control" value="<?php echo $data->BRAND_ID;?>">
    </div>
  </div> -->
</div>



<div class="modal-footer">
  <button type="submit" class="btn btn-default btn-info">Save</button>
  <button type="button" class="btn btn-outline-danger" data-dismiss="modal">Close</button>
</div>

<?php endforeach; ?>
<?php echo form_close();?>



<script src="<?php echo base_url('assets/cms/vendor/jquery/jquery.min.js');?>"></script>
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