<div class="az-content-body az-content-body-profile">
	<div class="row">
      <div class="col-md-10 col-lg-8 col-xl-12">
	<form id="add_cat_validate" action="<?= base_url('employee/Employee/add') ?>" method="post" class="form-horizontal row-border">
        <div class="card card-body pd-20">
				  <h2 class="card-title mg-b-20">Employee Registration</h2>
				  <div id="wizard3">
					<h3>Personal Information</h3>
					<section>
						<div class="form-group">
							<div class="row row-sm">
								<div class="col-sm-4">
									<label class="az-content-label tx-11 tx-medium tx-gray-600">First Name</label>
									<input type="text" name="first_name" id="first_name" class="form-control" required>
								</div><!-- col -->
								<div class="col-sm-4 mg-t-10 mg-sm-t-0">
									<label class="az-content-label tx-11 tx-medium tx-gray-600">Middle Name</label>
									<input type="text" name="middle_name" id="middle_name" class="form-control" >
								</div><!-- col -->
								<div class="col-sm-4 mg-t-10 mg-sm-t-0">
									<label class="az-content-label tx-11 tx-medium tx-gray-600">last Name</label>
									<input type="text" name="last_name" id="last_name" name="first_name" class="form-control" required>
								</div><!-- col -->
							</div><!-- row -->
						</div><!-- form-group -->
						<div class="form-group">
							<div class="row row-sm">
								<div class="col-sm-2">
									<label class="az-content-label tx-11 tx-medium tx-gray-600">Gender</label>
									<select class="form-control select2-no-search" name="gender" id="gender" data-parsley-required="true" data-parsley-error-message="Choose any Gender">
										<option label="Choose one" ></option>
										<option value="1">Male</option>
										<option value="2">Female</option>
									</select>
								</div><!-- col -->
								<div class="col-sm-2 mg-t-20 mg-sm-t-0">
									<label class="az-content-label tx-11 tx-medium tx-gray-600">Date of Birth</label>
									<input type="text" class="form-control" name="dob" id="dob" >
								</div><!-- col -->
								<div class="col-sm-2 mg-t-10 mg-sm-t-0">
									<label class="az-content-label tx-11 tx-medium tx-gray-600">Blood Group</label>
									<select class="form-control select2-no-search" name="bloodgrp" id="bloodgrp">
										<option value="A+">A+</option>
										<option value="A-">A-</option>
										<option value="B+">B+</option>
										<option value="B-">B-</option>
										<option value="AB">AB</option>
										<option value="AB+">AB+</option>
										<option value="O+">O+</option>
										<option value="O-">O-</option>
									</select>
								</div><!-- col -->
								<div class="col-sm-3 mg-t-10 mg-sm-t-0">
									<label class="az-content-label tx-11 tx-medium tx-gray-600">Contact</label>
									<input type="text" class="form-control" name="contact_1" id="contact_1">
								</div><!-- col -->
								<div class="col-sm-3 mg-t-10 mg-sm-t-0">
									<label class="az-content-label tx-11 tx-medium tx-gray-600">Email</label>
									<input type="text" class="form-control" name="email" id="email">
								</div><!-- col -->
							</div><!-- row -->
						</div><!-- form-group -->
						<div class="form-group">
							<div class="row row-sm">
								<div class="col-sm-2 mg-t-20 mg-sm-t-0">
									<label class="az-content-label tx-11 tx-medium tx-gray-600">Address</label>
									<input type="text" class="form-control" placeholder="Plot / House">
								</div><!-- col -->
								<div class="col-sm-3 mg-t-20 mg-sm-t-0">
									<label class="az-content-label tx-11 tx-medium tx-gray-600">&nbsp;</label>
									<input type="text" class="form-control" placeholder="Street">
								</div><!-- col -->
								<div class="col-sm-4 mg-t-20 mg-sm-t-0">
									<label class="az-content-label tx-11 tx-medium tx-gray-600">&nbsp;</label>
									<input type="text" class="form-control" placeholder="Locality">
								</div><!-- col -->
								<div class="col-sm-3 mg-t-20 mg-sm-t-0">
									<label class="az-content-label tx-11 tx-medium tx-gray-600">&nbsp;</label>
									<input type="text" class="form-control" placeholder="City">
								</div><!-- col -->
							</div><!-- row -->
						</div><!-- form-group -->
						<div class="form-group">
							<div class="row row-sm">
								<div class="col-sm-4 mg-t-20 mg-sm-t-0">
									<label class="az-content-label tx-11 tx-medium tx-gray-600">Aadhar</label>
									<input type="text" class="form-control" placeholder="">
								</div><!-- col -->
								<div class="col-sm-3 mg-t-20 mg-sm-t-0">
									<label class="az-content-label tx-11 tx-medium tx-gray-600">PAN</label>
									<input type="text" class="form-control" placeholder="">
								</div><!-- col -->
								<div class="col-sm-4 mg-t-20 mg-sm-t-0">
									<label class="az-content-label tx-11 tx-medium tx-gray-600">Samagra Id</label>
									<input type="text" class="form-control" placeholder="">
								</div><!-- col -->
							</div><!-- row -->
						</div><!-- form-group -->
					</section>
					<h3>Educational Qualifications</h3>
					<section>
					  <p>Wonderful transition effects.</p>
					</section>
					<h3>Other Details</h3>
					<section>
					  <p>The next and previous buttons help you to navigate through your content.</p>
					  <div class="form-group mg-b-20">
						<label class="ckbox">
						  <input type="checkbox" checked><span class="tx-13">Save my card for future purchases</span>
						</label>
					</div><!-- form-group -->
					</section>
				  </div>
        </div><!-- card -->
	  </form>
      </div><!-- col -->
    </div><!-- row -->
</div><!-- az-content-body -->
    	