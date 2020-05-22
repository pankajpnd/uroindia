<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Twitter -->
    <!-- <meta name="twitter:site" content="@bootstrapdash">
    <meta name="twitter:creator" content="@bootstrapdash">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Azia">
    <meta name="twitter:description" content="Responsive Bootstrap 4 Dashboard Template">
    <meta name="twitter:image" content="https://www.bootstrapdash.com/azia/img/azia-social.png"> -->

    <!-- Facebook -->
    <!-- <meta property="og:url" content="https://www.bootstrapdash.com/azia">
    <meta property="og:title" content="Azia">
    <meta property="og:description" content="Responsive Bootstrap 4 Dashboard Template">

    <meta property="og:image" content="https://www.bootstrapdash.com/azia/img/azia-social.png">
    <meta property="og:image:secure_url" content="https://www.bootstrapdash.com/azia/img/azia-social.png">
    <meta property="og:image:type" content="image/png">
    <meta property="og:image:width" content="1200">
    <meta property="og:image:height" content="600"> -->

    <!-- Meta -->
    <meta name="description" content="Responsive Bootstrap 4 Dashboard Template">
    <meta name="author" content="BootstrapDash">

    <title>Azia Responsive Bootstrap 4 Dashboard Template</title>

    <!-- vendor css -->
    <link href="<?= bs() ?>public/assets/lib/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link href="<?= bs() ?>public/assets/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
    <link href="<?= bs() ?>public/assets/lib/typicons.font/typicons.css" rel="stylesheet">

    <!-- azia CSS -->
    <link rel="stylesheet" href="<?= bs() ?>public/assets/css/azia.css">

  </head>
  <body class="az-body">

    <div class="az-signin-wrapper">
      <div class="az-card-signin">
        <h1 class="az-logo"><?php echo lang('company_name');?></h1>
        <div class="az-signin-header">
          <h2>Welcome back!</h2>
          <h4>Please sign in to continue</h4>

          <form action="<?= base_url('users/auth/login') ?>" method="post">
            <div class="form-group">
              <label>Email</label>
              <input type="email" class="form-control" placeholder="Enter your email" id="identity" name="identity" required>
            </div><!-- form-group -->
            <div class="form-group">
              <label>Password</label>
              <input type="password" class="form-control" placeholder="Enter your password" type="password" name="password" required>
            </div><!-- form-group -->
            <button class="btn btn-az-primary btn-block">Sign In</button>
          </form>
        </div><!-- az-signin-header -->
        <div class="az-signin-footer">
		<?php if ($reg_status[0]->forgot_pass_status == 1): ?>
           <p><a href="<?= base_url('users/register/forgot_pass') ?>">Forgot password?</a></p>
        <?php endif ?> 
          
		  
          <p>Don't have an account? <a href="<?= base_url('users/Register') ?>">Create an Account</a></p>
		  <?php if ($reg_status[0]->socail_login_status == 1): ?>
                            <div class="other-links">
                                <span>Or login with</span>
                                <a href="<?= $fbUrl ?>">Facebook</a>
                                <a href="<?= $authUrl ?>">Google</a>
                                <a href="https://api.instagram.com/oauth/authorize/?client_id=cc0c6e3ffad5457eb811cf3bd99f0524&redirect_uri=http://localhost/login/users/Social_login/instagram_login&response_type=code&scope=public_content">Instagram</a>
                                <a href="<?php echo "https://www.linkedin.com/oauth/v2/authorization?response_type=code&client_id={$client_id}&redirect_uri={$redirect_uri}&state={$csrf_token}&scope={$scopes}"; ?>">Linkedin</a>
                            </div>
                        <?php endif ?>
        </div><!-- az-signin-footer -->
      </div><!-- az-card-signin -->
    </div><!-- az-signin-wrapper -->

    <script src="<?= bs() ?>public/assets/lib/jquery/jquery.min.js"></script>
    <script src="<?= bs() ?>public/assets/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="<?= bs() ?>public/assets/lib/ionicons/ionicons.js"></script>

    <script src="<?= bs() ?>public/assets/js/azia.js"></script>
    <script>
      $(function(){
        'use strict'

      });
    </script>
  </body>

</html>
