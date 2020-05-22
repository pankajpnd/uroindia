	
	  <div class="az-content-body">
        <div class="row row-sm">
          <div class="col-sm-6 col-xl-12">
            <div class="card card-dashboard-twentytwo ht-auto">
              <div class="card-header">
                <h2 class="card-title"><i class="fa fa-cogs"></i> Login Settings</h2>
              </div><!-- card-header -->
              <div class="card-body pd-0">
					<div class="pd-20 bg-gray-200">
						<nav class="nav az-nav-line flex-column flex-md-row">
						<a class="nav-link active show" data-toggle="tab" href="#tabCont1">User Registration</a>
						<a class="nav-link" data-toggle="tab" href="#tabCont2">Forgot Password</a>
						<a class="nav-link" data-toggle="tab" href="#tabCont3">Social Logins</a>
						<a class="nav-link" data-toggle="tab" href="#tabCont4">Two Factor Authentication</a>
						</nav>
					</div>
              </div><!-- card-top-content -->
			  <div class="card-body bd bd-t-0 tab-content">
				  <div id="tabCont1" class="tab-pane active show">
					<h4> Enable / Disable User Registration</h4>
					<p class="tx-info tx-14">Click to change the Status of User Registration.</p>
					<label class="rdiobox">
					<?php if ($reg_status[0]->registration_status == 1): ?>	
						<input name="status" value="1" class="status_enable" type="radio" checked>
						<span>Enable</span>
					<?php else: ?>
						<input name="status" value="1" class="status_enable" type="radio" >
						<span>Enable</span>
					<?php endif; ?>
					</label>
					
					<label class="rdiobox">
					<?php if ($reg_status[0]->registration_status == 0): ?>	
						<input name="status" value="0" class="status_disable" type="radio" checked>
						<span>Disable</span>
					<?php else: ?>
						<input name="status" value="0" class="status_disable" type="radio" >
						<span>Disable</span>
					<?php endif; ?>
					</label>
				  </div><!-- tab-pane -->
				  <div id="tabCont2" class="tab-pane">
					<h4> Enable / Disable Forgot Password</h4>
					<p class="tx-info tx-14">Click to change the Status of Forgot Password.</p>
					<label class="rdiobox">
					<?php if ($reg_status[0]->forgot_pass_status == 1): ?>	
						<input name="forgot_pass" id="forgot_pass" class="forgot_pass" value="1" type="radio" checked>
						<span>Enable</span>
					<?php else: ?>
						<input name="forgot_pass" id="forgot_pass" class="forgot_pass" value="1" type="radio" >
						<span>Enable</span>
					<?php endif; ?>
					</label>
					
					<label class="rdiobox">
					<?php if ($reg_status[0]->forgot_pass_status == 0): ?>	
						<input name="forgot_pass" id="forgot_pass" class="forgot_pass" value="0" type="radio" checked>
						<span>Disable</span>
					<?php else: ?>
						<input name="forgot_pass" id="forgot_pass" class="forgot_pass" value="0" type="radio" >
						<span>Disable</span>
					<?php endif; ?>
					</label>
				  </div>
				  <div id="tabCont3" class="tab-pane">
					<h4> Enable / Disable Social Logins</h4>
					<p class="tx-info tx-14">Click to change the Status of Social Logins.</p>
					<label class="rdiobox">
					<?php if ($reg_status[0]->socail_login_status == 1): ?>	
						<input name="social_login" id="social_login" class="social_login" value="1" type="radio" checked>
						<span>Enable</span>
					<?php else: ?>
						<input name="social_login" id="social_login" class="social_login" value="1" type="radio" >
						<span>Enable</span>
					<?php endif; ?>
					</label>
					
					<label class="rdiobox">
					<?php if ($reg_status[0]->socail_login_status == 0): ?>	
						<input name="social_login" id="social_login" class="social_login" value="0" type="radio" checked>
						<span>Disable</span>
					<?php else: ?>
						<input name="social_login" id="social_login" class="social_login" value="0" type="radio" >
						<span>Disable</span>
					<?php endif; ?>
					</label>
				  </div>
				  <div id="tabCont4" class="tab-pane">
					<h4> Enable / Disable Two Factor Authentication</h4>
					<p class="tx-info tx-14">Click to change the Status of Two Fator Authentication.</p>
					<label class="rdiobox">
					<?php if ($reg_status[0]->two_factor_auth == 1): ?>	
						<input name="two_factor_auth" id="two_factor_auth" class="two_factor_auth" value="1" type="radio" checked>
						<span>Enable</span>
					<?php else: ?>
						<input name="two_factor_auth" id="two_factor_auth" class="two_factor_auth" value="1" type="radio" >
						<span>Enable</span>
					<?php endif; ?>
					</label>
					
					<label class="rdiobox">
					<?php if ($reg_status[0]->two_factor_auth == 0): ?>	
						<input name="two_factor_auth" id="two_factor_auth" class="two_factor_auth" value="0" type="radio" checked>
						<span>Disable</span>
					<?php else: ?>
						<input name="two_factor_auth" id="two_factor_auth" class="two_factor_auth" value="0" type="radio" >
						<span>Disable</span>
					<?php endif; ?>
					</label>
				  </div>
			  </div><!-- card-body -->
            </div><!-- card -->
          </div><!-- col -->
        </div><!-- row -->
      </div><!-- az-content-body -->
     