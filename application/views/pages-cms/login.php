<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SB Admin - Login</title>

  <!-- Custom fonts for this template-->
  <link href="<?php echo base_url('assets/cms/') ?>vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template-->
  <link href="<?php echo base_url('assets/cms/') ?>css/sb-admin.css" rel="stylesheet">

</head>

<body style="background-image: linear-gradient(to top, #595959 0%, #f5aa42 100%);">

  <div class="container">
    <div class="card card-login mx-auto mt-5" style="background-color: white;">
      <div class="d-flex justify-content-center">
        <img src="<?php echo base_url('assets/template/images/logo.png'); ?>" alt="wh Logo" style="width: 60%;">
      </div>
      <!-- <div class="card-header">Login CMS</div> -->
      <div class="card-body">
        <?php echo form_open('cms/login_process'); ?> 
          <div class="form-group">
            <div class="form-label-group">
              <input type="text" id="inputEmail" name="txt-username" class="form-control" placeholder="Email address" required="required" autofocus="autofocus">
              <label for="inputEmail">Username</label>
            </div>
          </div>
          <div class="form-group">
            <div class="form-label-group">
              <input type="password" id="inputPassword" name="txt-password" class="form-control" placeholder="Password" required="required">
              <label for="inputPassword">Password</label>
            </div>
            <?php if($this->input->get('error') == 1): ?>
              <div class="alert alert-danger alert-dismissible fade show mt-2">
                <button type="button" class="close" data-dismiss="alert">&times;</button>
                <strong>Login Failed!</strong>Wrong Username/Password.
              </div>
            <?php elseif($this->input->get('error') == 2): ?>
              <div class="alert alert-danger alert-dismissible fade show mt-2">
                <button type="button" class="close" data-dismiss="alert">&times;</button>
                <strong>Login Failed!</strong>Username Not Found.
              </div>
            <?php endif; ?>
          </div>
          <!-- <div class="form-group">
            <div class="checkbox">
              <label>
                <input type="checkbox" value="remember-me">
                Remember Password
              </label>
            </div>
          </div> -->
          <center>
            <?php 
              $dataSubmit = array(
                'type' => 'submit',
                'style' => 'border : 1px solid #d6d6d6',
                'class' => 'btn btn-warning',
                'content' => 'LOGIN'
              );
              echo form_button($dataSubmit);
            ?>
             <?php echo form_close(); ?> 
          </center>
        </form>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="<?php echo base_url('assets/cms/') ?>vendor/jquery/jquery.min.js"></script>
  <script src="<?php echo base_url('assets/cms/') ?>vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="<?php echo base_url('assets/cms/') ?>vendor/jquery-easing/jquery.easing.min.js"></script>

</body>

</html>
