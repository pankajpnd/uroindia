	<style>

.flip-card {
  background-color: transparent;
  width: 300px;
  height: 300px;
  perspective: 1000px;
}

.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.6s;
  transform-style: preserve-3d;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
}

.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}

.flip-card-img {
 display: flex;
    flex-direction: column;
    align-items: center;
}

.flip-card-img h6{
	padding-top:10px;
	font-weight:bold;
    font-size:20px;
}

.flip-card-img span{
    font-size:13px;
}

.flip-card-front {
  background-color: #bbb;
  color: black;
}

.flip-card-back {
  background-color: #fff;
  color: #000;
  transform: rotateY(180deg);
}
</style>
	  <div class="az-content-body">
        <div class="row row-sm">
          <div class="col-sm-6 col-md-6 col-xl-12">
            <div class="card card-dashboard-twentytwo ht-auto">
              <div class="card-header">
                <h2 class="card-title">Id Card</h2>
              </div><!-- card-header -->
              <div class="card-body">
                <div>
					<div class="az-signin-wrapper ht-auto wd-200 mg-l-100">
						<div class="flip-card">
						  <div class="flip-card-inner">
							<div class="flip-card-front">
							  <div class="demo-static-toast wd-auto ">
							  <div class="toast shadow-base tx-center" role="alert" aria-live="assertive" aria-atomic="true">
								<div class="toast-header bg-indigo">
								<h6 class="tx-16 m-auto tx-white"><?php echo lang('company_name');?></h6>
								</div>
								<div class="toast-body ht-250">
									<div class="az-dropdown-header d-sm-none">
										<a href="#" class="az-header-arrow"><i class="icon ion-md-arrow-back"></i></a>
									</div>
									<div class="flip-card-img">
										<div class="az-img-user avatar-xxl">
											<img src="http://localhost/login_guffy_new/uploads/img1.jpg" class="rounded-circle" width="200" alt="">
										</div><!-- az-img-user -->
										<h6>admin panel</h6>
										<span>admin@admin.com</span>
									</div><!-- az-header-profile -->
								</div>
								<div class="toast-footer bg-indigo">
								<h6 class="tx-12 m-0 tx-white"><?php echo lang('company_website');?></h6>
								</div>
							</div>
								</div><!-- demo-static-toast -->
							</div>
							<div class="flip-card-back">
							  <h1>admin panel</h1> 
							  <p>admin@admin.com</p> 
							  <p>We love that guy</p>
							</div>
						  </div>
						</div>
					</div>
					<div class="col-sm-6 col-md-3 mg-l-auto"><button class="btn btn-dark btn-block"><i class="fa fa-print"></i> Print</button>
					<a href="<?php bs() ?>employee" class="btn btn-light btn-block">Skip</a></div>
				</div>
              </div><!-- card-top-content -->
            </div><!-- card -->
          </div><!-- col -->
        </div><!-- row -->
      </div><!-- az-content-body -->
     