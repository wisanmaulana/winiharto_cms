  <div id="wrapper">

    <!-- Sidebar -->
    <?php $this->load->view('templates-cms/frame_side'); ?>

    <div id="content-wrapper" style="background-color: #f7f7f7;">

      <div class="container-fluid">

        <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#" style="color: #2db4d6">Dashboard</a>
        </li>
        <!-- <li class="breadcrumb-item active">Overview</li> -->
      </ol>

      <div>
        <h1>Hello Admin</h1>
      </div>
       

        <!-- <div class="card mb-4">
          <div class="card-header" >
            <i class="fas fa-history"></i>
            <b>All Time Order Status</b>
          </div>
        </div> -->

        <!-- Icon Cards-->
       <!--  <div class="row">
          <div class="col-xl-4 col-sm-6 mb-3">
            <div class="card text-white o-hidden h-100" style="background-color: #2dd6a7;">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-cart-plus"></i>
                </div>
                <div class="mr-5" style="font-weight: bold;">
               
                </div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="<?php echo base_url('cms/orders/status?query=created'); ?>">
                <span class="float-left">New Order</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>

          <div class="col-xl-4 col-sm-6 mb-3">
            <div class="card text-white o-hidden h-100" style="background-color: #2db4d6;">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-handshake"></i>
                </div>
                <div class="mr-5" style="font-weight: bold;">
                  
                </div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="<?php echo base_url('cms/orders/status?query=confirmed'); ?>">
                <span class="float-left">Confirmed Payment</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>

          <div class="col-xl-4 col-sm-6 mb-3">
            <div class="card text-white bg-primary o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-donate"></i>
                </div>
                <div class="mr-5" style="font-weight: bold;">
                  
                </div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="<?php echo base_url('cms/orders/status?query=paid'); ?>">
                <span class="float-left">Paid Order</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>
        </div>

        <div class="card mb-4">
          <div class="card-header" >
            <i class="fas fa-calendar-alt"></i>
            <b>Monthly Order Status</b>
          </div>
        </div>

        <div class="row">
          <div class="col-xl-4 col-sm-6 mb-3">
            <div class="card text-white o-hidden h-100" style="background-color: #2dd6a7;">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-cart-plus"></i>
                </div>
                <div class="mr-5" style="font-weight: bold;">
                  
                </div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="<?php echo base_url('cms/orders/status?query=created'); ?>">
                <span class="float-left">New Order</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>

          <div class="col-xl-4 col-sm-6 mb-3">
            <div class="card text-white bg-warning o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-edit"></i>
                </div>
                <div class="mr-5" style="font-weight: bold;">
                  
                </div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="<?php echo base_url('cms/orders/status?query=updated'); ?>">
                <span class="float-left">Updated Order</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>

          <div class="col-xl-4 col-sm-6 mb-3">
            <div class="card text-white o-hidden h-100" style="background-color: #2db4d6;">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-handshake"></i>
                </div>
                <div class="mr-5" style="font-weight: bold;">
                  
                </div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="<?php echo base_url('cms/orders/status?query=confirmed'); ?>">
                <span class="float-left">Confirmed Payment</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>
        </div>

        <div class="row">
        <div class="col-xl-4 col-sm-6 mb-3">
          <div class="card text-white bg-primary o-hidden h-100">
            <div class="card-body">
              <div class="card-body-icon">
                <i class="fas fa-donate"></i>
              </div>
              <div class="mr-5" style="font-weight: bold;">
               
              </div>
            </div>
            <a class="card-footer text-white clearfix small z-1" href="<?php echo base_url('cms/orders/status?query=paid'); ?>">
              <span class="float-left">Paid Order</span>
              <span class="float-right">
                <i class="fas fa-angle-right"></i>
              </span>
            </a>
          </div>
        </div>

        <div class="col-xl-4 col-sm-6 mb-3">
          <div class="card text-white bg-danger o-hidden h-100">
            <div class="card-body">
              <div class="card-body-icon">
                <i class="fas fa-window-close"></i>
              </div>
              <div class="mr-5" style="font-weight: bold;">
                
              </div>
            </div>
            <a class="card-footer text-white clearfix small z-1" href="<?php echo base_url('cms/orders/status?query=canceled'); ?>">
              <span class="float-left">Canceled Order</span>
              <span class="float-right">
                <i class="fas fa-angle-right"></i>
              </span>
            </a>
          </div>
        </div>

          <div class="col-xl-4 col-sm-6 mb-3">
            <div class="card text-white bg-success o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-clipboard-check"></i>
                </div>
                <div class="mr-5" style="font-weight: bold;">
                  
                </div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="<?php echo base_url('cms/orders/status?query=done'); ?>">
                <span class="float-left">Done Order</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>          
        </div> -->


        <!-- Area Chart Example-->
        <!-- <div class="card mb-3">
          <div class="card-header">
            <i class="fas fa-chart-area"></i>
            <b>Monthly Sales Order</b></div>
          <div class="card-body">
            <canvas id="myAreaChart" width="100%" height="30"></canvas>
          </div>
          <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
        </div>

      </div> -->
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

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

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
