	
	  <div class="az-content-body">
		<div class="card card-body bg-gray-800 tx-white bd-0 mg-b-15">
			<h2>Panel Options</h2>
			<p class="card-text">All the basic panel options and colors are shown below. More Advanced Panels options will be coming soon!</p>
		</div><!-- card -->
        <div class="row row-sm">
          <div class="col-sm-6 col-xl-12">
            <div class="card card-dashboard-twentytwo ht-auto">
              <div class="card-header tx-medium bd-0 tx-white bg-indigo">
                <i class="fa fa-cogs"></i> Configuration
              </div><!-- card-header -->
              <div class="card-body">
                <div class="row row-sm">
				
                <div class="col-sm-12 col-xl-8">
				<form action="<?= base_url('site_config/Set_up') ?>" method="post" class="form-horizontal row-border">
					<div class="row row-xs align-items-center mg-b-20">
					<div class="col-md-3">
						<label class="form-label mg-b-0">Site Name</label>
					</div><!-- col -->
					<div class="col-md-9 mg-t-5 mg-md-t-0">
						<input type="text" name="site_name" class="form-control" placeholder="Facebook,twitter etc...">
                        <div class="tx-12 tx-info">
                           The title of your site, used for email.
                        </div>
					</div><!-- col -->
					</div>
					
					<div class="row row-xs align-items-center mg-b-20">
					<div class="col-md-3">
						<label class="form-label mg-b-0">Admin Email</label>
					</div><!-- col -->
					<div class="col-md-9 mg-t-5 mg-md-t-0">
						<input type="text" class="form-control" name="login_id" placeholder="uesrname,email etc..">
                        <div class="tx-12 tx-info">
                           Column to use for uniquely identifying user/logging in/etc. Usual choices are 'email' OR 'user name'. You should add an index in the users table for whatever you set this option to. DEFAULT is 'email'.
                        </div>
					</div><!-- col -->
					</div>
					
					<div class="row row-xs align-items-center mg-b-20">
					<div class="col-md-3">
						<label class="form-label mg-b-0">Login Identity</label>
					</div><!-- col -->
					<div class="col-md-9 mg-t-5 mg-md-t-0">
						<input type="text" name="site_name" class="form-control" placeholder="Facebook,twitter etc...">
                        <div class="">
                           The title of your site, used for email.
                        </div>
					</div><!-- col -->
					</div>
					
					<div class="row row-xs align-items-center mg-b-20">
					<div class="col-md-3">
						<label class="form-label mg-b-0">Min Password Length</label>
					</div><!-- col -->
					<div class="col-md-9 mg-t-5 mg-md-t-0">
						<input type="text" class="form-control" name="min_pass" placeholder="3 etc..">
                        <div class="tx-12 tx-info">
                           Minimum length of passwords. DEFAULT is '8'.
                        </div>
					</div><!-- col -->
					</div>
					
					<div class="row row-xs align-items-center mg-b-20">
					<div class="col-md-3">
						<label class="form-label mg-b-0">Max Password Length</label>
					</div><!-- col -->
					<div class="col-md-9 mg-t-5 mg-md-t-0">
						 <input type="text" class="form-control" name="max_pass" placeholder="10 etc...">
						 <div class="tx-12 tx-info">
                           Maximum length of passwords. DEFAULT is '20'.
                         </div>
					</div><!-- col -->
					</div>
					
					<div class="row row-xs align-items-center mg-b-20">
					<div class="col-md-3">
						<label class="form-label mg-b-0">Max Login Attempts</label>
					</div><!-- col -->
					<div class="col-md-9 mg-t-5 mg-md-t-0">
						 <input type="text" class="form-control" name="login_atmpt" placeholder="6 etc">
                         <div class="tx-12 tx-info">
                           The maximum number of failed login,Default is 3. 
                         </div>
					</div><!-- col -->
					</div>
					
					<div class="row row-xs align-items-center mg-b-20">
					<div class="col-md-3">
						<label class="form-label mg-b-0">User Expire</label>
					</div><!-- col -->
					<div class="col-md-9 mg-t-5 mg-md-t-0">
						  <input type="text" class="form-control" name="user_expire" placeholder="86500 etc">
                        <div class="tx-12 tx-info">
                           How long to remember the user (seconds). Set to zero for no expiration, Default is 86500. 
                        </div>
					</div><!-- col -->
					</div>
					
					<div class="row row-xs align-items-center mg-b-20">
					<div class="col-md-3">
						<label class="form-label mg-b-0">Lock time</label>
					</div><!-- col -->
					<div class="col-md-9 mg-t-5 mg-md-t-0">
						  <input type="text" class="form-control" name="lock_time" placeholder="600 etc">
                          <div class="tx-12 tx-info">
                           The number of seconds to lockout an account due to exceeded attempts, Default is 600. 
                          </div>
					</div><!-- col -->
					</div>
					
					<div class="row row-xs align-items-center mg-b-20">
					<div class="col-md-3">
						<label class="form-label mg-b-0">Email Activation</label>
					</div><!-- col -->
					<div class="col-md-9 mg-t-5 mg-md-t-0">
						  <input type="text" class="form-control" name="email_activation" placeholder="TRUE etc">
                          <div class="tx-12 tx-info">
                           Email Activation for user registration Default is FALSE, If you want to register new user with email activation then write down TRUE in the above text field and submit the form.
                          </div>
					</div><!-- col -->
					</div>
					
					<div class="row row-xs align-items-center mg-b-20">
					<div class="col-md-3">
						<label class="form-label mg-b-0">&nbsp;</label>
					</div><!-- col -->
					<div class="col-md-4 mg-t-5 mg-md-t-0">
						  <button type="submit" class="btn btn-primary btn-rounded btn-block">Set Up</button>
					</div><!-- col -->
					</div>
					</form>
				</div>
				
				<div class="col-sm-12 col-xl-4">
					<div class="alert alert-info" role="alert">
						<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">×</span>
						</button>
						<strong><i class="fa fa-bullhorn"></i> Notification!</strong></br> If You Leave any field in the form the default setting will be apply.
					</div>
				</div>
				</div>
              </div><!-- card-top-content -->
            </div><!-- card -->
          </div><!-- col -->
        </div><!-- row -->
      </div><!-- az-content-body -->