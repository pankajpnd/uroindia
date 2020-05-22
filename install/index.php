<?php 
error_reporting(0);

$db_config = "../application/config/database.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Install</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-touch-fullscreen" content="yes">
    <meta name="description" content="Avenxo Admin Theme">
    <meta name="author" content="KaijuThemes">

    <link type='text/css' href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400italic,600' rel='stylesheet'>

    <link type="text/css" href="../public/assets/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet">        <!-- Font Awesome -->
    <link type="text/css" href="../public/assets/fonts/themify-icons/themify-icons.css" rel="stylesheet">              <!-- Themify Icons -->
    <link type="text/css" href="../public/assets/css/styles.css" rel="stylesheet">                                     <!-- Core CSS with all styles -->

    <link type="text/css" href="../public/assets/plugins/codeprettifier/prettify.css" rel="stylesheet">                <!-- Code Prettifier -->
    <link type="text/css" href="../public/assets/plugins/iCheck/skins/minimal/blue.css" rel="stylesheet">              <!-- iCheck -->

    <!--[if lt IE 10]>
        <script type="text/javascript" src="assets/js/media.match.min.js"></script>
        <script type="text/javascript" src="assets/js/respond.min.js"></script>
        <script type="text/javascript" src="assets/js/placeholder.min.js"></script>
    <![endif]-->
    <!-- The following CSS are included as plugins and can be removed if unused-->
    <style>
      .alert-danger-alt
      {
        background-color: #f34a50;
        color: white;
      }
    </style>

    </head>

    <body class="animated-content">

        <div class="row" >
      <div class="col-md-8 col-md-offset-2">
                <div class="static-content-wrapper">
                    <div class="static-content">
                        <div class="page-content">
                            <ol class="breadcrumb">
                                

                            </ol>

    <?php 
      if (is_writable($db_config))
       {
           
     ?>
                            <div class="container-fluid">
                                
<div data-widget-group="group1">
  
        
      <div class="panel panel-danger" data-widget='{"draggable": "false"}' style="background-color: #f34a50">
        <div class="panel-heading" style="background-color: #f34a50">
          <h2> <i class="ti ti-settings"></i>Install</h2>
          <div class="panel-ctrls" data-actions-container="" data-action-collapse='{"target": ".panel-body"}'></div>
        </div>
        <div class="panel-body">
          
          <form action="setup.php" id="wizard" method="post" class="form-horizontal">
              <legend>Database Setup</legend>
              <div class="form-group">
                <label for="fieldname" class="col-md-3 control-label">Hostname</label>
                <div class="col-md-6">
                  <input id="fieldname" class="form-control" name="hostname" type="text" required>
                </div>
              </div>
              <div class="form-group">
                <label for="fieldemail" class="col-md-3 control-label">Database Name</label>
                <div class="col-md-6"><input id="fieldemail" class="form-control" type="text" name="db_name" required></div>
              </div>
              <div class="form-group">
                <label for="fieldurl" class="col-md-3 control-label">Username</label>
                <div class="col-md-6">
                  <input id="fieldurl" class="form-control"  type="text" name="username" required>
                </div>
              </div>
              <div class="form-group">
                <label for="fieldurl" class="col-md-3 control-label">Password</label>
                <div class="col-md-6">
                  <input id="fieldurl" class="form-control"  type="password" name="db_pass">
                </div>
              </div>
              <div class="form-group">
                <label for="fieldurl" class="col-md-3 control-label">Base Url</label>
                <div class="col-md-6">
                  <input class="form-control" id="siteUrl"  type="text" name="site_url">
                </div>
              </div>
            <input type="submit" name="submit" class="btn-success btn" value="Install" style="margin-right: 29em">
          </form>
        </div>
      </div>


      </div>
      </div>
  </div>
</div>

                            </div> <!-- .container-fluid -->
                        </div> <!-- #page-content -->
                    </div>
                    <footer role="contentinfo">
    <div class="clearfix">
        <ul class="list-unstyled list-inline pull-left">
            <li><h6 style="margin: 0;"></li>
        </ul>
        <button class="pull-right btn btn-link btn-xs hidden-print" id="back-to-top"><i class="ti ti-arrow-up"></i></button>
    </div>
</footer>

                </div>
            </div>
        </div>

     <?php 
          }
           else 
          {
      ?>      
        <p class="error">Please make the application/config/production/database.php file writable. <strong>Example</strong>:<br /><br /><code>chmod 777 application/config/database.php</code></p>
       <?php  
          }
      ?>
    
    <!-- Load site level scripts -->

<!-- <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script> -->

<script type="text/javascript" src="../public/assets/js/jquery-1.10.2.min.js"></script>               <!-- Load jQuery -->
<script type="text/javascript" src="../public/assets/js/jqueryui-1.10.3.min.js"></script>               <!-- Load jQueryUI -->
<script type="text/javascript" src="../public/assets/js/bootstrap.min.js"></script>                 <!-- Load Bootstrap -->
<script type="text/javascript" src="../public/assets/js/enquire.min.js"></script>                   <!-- Load Enquire -->

<script type="text/javascript" src="../public/assets/plugins/velocityjs/velocity.min.js"></script>          <!-- Load Velocity for Animated Content -->
<script type="text/javascript" src="../public/assets/plugins/velocityjs/velocity.ui.min.js"></script>

<script type="text/javascript" src="../public/assets/plugins/wijets/wijets.js"></script>                <!-- Wijet -->

<script type="text/javascript" src="../public/assets/plugins/codeprettifier/prettify.js"></script>        <!-- Code Prettifier  -->
<script type="text/javascript" src="../public/assets/plugins/bootstrap-switch/bootstrap-switch.js"></script>    <!-- Swith/Toggle Button -->

<script type="text/javascript" src="../public/assets/plugins/bootstrap-tabdrop/js/bootstrap-tabdrop.js"></script>  <!-- Bootstrap Tabdrop -->

<script type="text/javascript" src="../public/assets/plugins/iCheck/icheck.min.js"></script>              <!-- iCheck -->

<script type="text/javascript" src="../public/assets/plugins/nanoScroller/js/jquery.nanoscroller.min.js"></script> <!-- nano scroller -->

<script type="text/javascript" src="../public/assets/js/application.js"></script>
<script type="text/javascript" src="../public/assets/demo/demo.js"></script>
<script type="text/javascript" src="../public/assets/demo/demo-switcher.js"></script>
<script src="../public/assets/js/bootstrap-notify.js"></script>


<!-- End loading site level scripts -->
    
    <!-- Load page level scripts-->
    
<script type="text/javascript" src="../public/assets/plugins/form-validation/jquery.validate.min.js"></script>            <!-- Validate Plugin -->
<script type="text/javascript" src="../public/assets/plugins/form-stepy/jquery.stepy.js"></script>                  <!-- Stepy Plugin -->

<script type="text/javascript" src="../public/assets/demo/demo-formwizard.js"></script>

    <!-- End loading page level scripts-->

<script>
  $(document).ready(function() {
  
  // to show it in an alert window
  var url  = window.location+'';

  var site = url.split("install"); 

  $('#siteUrl').val(site[0]);
});
</script>

<script>
   <?php  
      if (!empty($_GET['err_msg']))  
   {
   ?> 
      $.notify({
      title: '<strong><i class="fa fa-exclamation-circle" aria-hidden="true"></i> Error!</strong>',
      message: '<?php echo $_GET['err_msg'] ?>'
      },{
        type: 'danger alert-danger-alt col-md-3'
      });
     <?php 
     } 
      elseif (!empty($_GET['success_msg']))  
    {
      ?>

      $.notify({
      title: '<strong> <span class= "glyphicon glyphicon-ok"></span> Success!</strong>',
      message: '<?php echo $_GET['success_msg'] ?>'
      },{
        type: 'danger alert-success-alt col-md-3'
      });

    <?php    
    }    
    ?>  

</script>
    </body>
</html>
