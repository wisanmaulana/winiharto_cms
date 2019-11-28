<div id="wrapper">

    <!-- Sidebar -->
    <?php $this->load->view('templates-cms/frame_side'); ?>

    <div id="content-wrapper" style="background-color: #f7f7f7;">

      <div class="container-fluid">

        <!-- ABOUT PART -->
        <!-- <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#exampleModal"
        data-terms='<?php echo $aboutt; ?>' style="font-size: 11px;margin-bottom: 1em;"><i class="fas fa-edit"></i> Edit About Company</button> -->
        <button type="button" class="btn btn-info btn-sm" style="margin-bottom: 1em;" data-toggle="modal" data-target="#addNewSubcategory" ><i class="fas fa-plus-circle"></i> Add Subcategory</button>
        <div class="card mb-3">
          <div class="card-header">
            <i class="fas fa-building"></i>
            <b>Subcategory</b></div>
          <div class="card-body" >
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="font-size:12px"> 
                <thead>
                <tr>
                  <th style="width: 1em;">NO</th>
                  <th>ID</th>
                  <th>NAME</th>
                  <th>PARENT CATEGORY</th>
                  <th>ACTION</th>
                </tr>
                </thead>   
                <tbody>
                  <?php
                  $no = 1;
                  foreach($subcategory->result() as $dt){
                      $id = $dt->REC_ID;
                      $idSubcategory = $dt->ID;
                      $name = $dt->NAME;
                      $parentCategory = $dt->PARENT_CATEGORY;
                    echo "<tr>"; ?>
                  <td>
                    <?php echo $no++;?>
                  </td>
                  <td>
                    <?php echo $idSubcategory; ?>
                  </td>
                  <td>
                    <?php echo $name; ?>
                  </td>
                  <td>
                    <?php echo $parentCategory; ?>
                  </td>
                  <td>
                    <?php echo form_open('Subcategory_cms/deleteSubcategory'); ?>
                    <!-- edit brand -->
                   <button title="Edit Subcategory" type="button" style="width: 5em;margin-bottom: 5px" class="btn btn-info btn-sm" data-toggle="modal" data-target="#editSubcategory" data-id="<?php echo $id; ?>"><i class="fas fa-pencil-alt"></i></button>
                   <!-- delete brand -->
                    <button  title="Delete Subcategory" type="submit" onclick="return confirm('Are you sure to delete this item?')" style="width: 5em;margin-bottom: 5px" class="btn btn-danger btn-sm delete-subcategory" data-toggle="modal" data-target="#" data-id="<?php echo $id; ?>"><i class="fas fa-trash-alt"></i></button><br>
                    <input type="hidden" name="deleteSubcategory" value="<?php echo $id; ?>">
                    <?php echo form_close(); ?>
                  </td>
                  <?php
                    echo "</tr>";
                  }
                  ?>
                </tbody>
              </table>
            </div>
          </div>
        </div>                 
      </div>
<!-- end content -->

        <!-- Modal add Brand -->
        <div id="addNewSubcategory" class="modal fade bd-example-modal-md" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-md">
            <div class="modal-content">
              <div class="modal-body" style="padding: 0!important;">
                <!-- LOAD THE CONTENT -->
              </div>
            </div>

          </div>
        </div>
        <!-- END add Brand -->

        <!-- Modal EDIT Brand -->
       <div id="editSubcategory" class="modal fade bd-example-modal-md" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-md">
            <div class="modal-content">
              <div class="modal-body" style="padding: 0!important;">
                <!-- LOAD THE CONTENT -->
              </div>
            </div>

          </div>
        </div>
        <!-- END EDIT Brand -->

      </div>
      <!-- /.container-fluid -->

      <!-- Sticky Footer -->
      <footer class="sticky-footer">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright © Incube Solutions 2019</span>
          </div>
        </div>
      </footer>

    </div>
    <!-- /.content-wrapper -->

  </div>
  <!-- /#wrapper -->

  

  <!-- Bootstrap core JavaScript-->
  <script src="<?php echo base_url('assets/cms/vendor/jquery/jquery.min.js');?>"></script>
  <script src="<?php echo base_url('assets/cms/vendor/bootstrap/js/bootstrap.bundle.min.js'); ?>"></script>

  <!-- Core plugin JavaScript-->
  <script src="<?php echo base_url('assets/cms/vendor/jquery-easing/jquery.easing.min.js'); ?>"></script>

  <!-- Page level plugin JavaScript-->
  <script src="<?php echo base_url('assets/cms/vendor/chart.js/Chart.min.js'); ?>"></script>
  <script src="<?php echo base_url('assets/cms/vendor/datatables/jquery.dataTables.js'); ?>"></script>
  <script src="<?php echo base_url('assets/cms/vendor/datatables/dataTables.bootstrap4.js'); ?>"></script>

  <!-- Custom scripts for all pages-->
  <script src="<?php echo base_url('assets/cms/js/sb-admin.min.js'); ?>"></script>

  <!-- Demo scripts for this page-->
  <script src="<?php echo base_url('assets/cms/js/demo/datatables-demo.js'); ?>"></script>
  <script src="<?php echo base_url('assets/cms/js/demo/chart-area-demo.js'); ?>"></script>


  <script type="text/javascript">
   //--------------------- start New Test -------------------------
   $('#addNewSubcategory').on('show.bs.modal', function (event) {
          var button = $(event.relatedTarget);
         // var id = button.data('id');

          // console.log('Button Position ' + orderno);
          var getAddSubcategory = '<?php echo base_url('Subcategory_cms/getAddSubcategory?id='); ?>';

          $('.modal-body').load(getAddSubcategory,function(){
            $('#addNewSubcategory').modal({show:true});
          });

          $(document).on('focusin', function(e) {
              if ($(e.target).closest(".mce-window").length) {
                e.stopImmediatePropagation();
              }
           });
      });
   //--------------------- End New Test -------------------------
   //---------------------- start No function ---------------------
   $('#editSubcategory').on('show.bs.modal', function (event) {
          var button = $(event.relatedTarget);
         var id = button.data('id');

          // console.log('Button Position ' + orderno);
          var getEditSubcategory = '<?php echo base_url('Subcategory_cms/getEditSubcategory?id='); ?>';

          $('.modal-body').load(getEditSubcategory + id,function(){
            $('#editSubcategory').modal({show:true});
          });
    });
   //---------------------- end No function -----------------------
  </script>

  <script src="<?php echo base_url('assets/tiny_mce/tiny_mce.js'); ?>"></script>
  <script src="<?php echo base_url('assets/tiny_mce/plugins/tinybrowser/tb_tinymce.js.php'); ?>"></script>
  <script src="<?php echo base_url('assets/tiny_mce/tiny_mce_setting.js'); ?>"></script>
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

</body>