	
	  <div class="az-content-body">
        <div class="row row-sm">
          <div class="col-sm-6 col-xl-12">
            <div class="card card-dashboard-twentytwo ht-auto">
              <div class="card-header">
                <h2 class="card-title"><?php echo lang('create_group_heading');?></h2>
              </div><!-- card-header -->
              <div class="card-body">
                <div class="row row-sm">
                <div class="col-sm-6 col-xl-4">
				<?php 
					echo form_open("users/User_groups/create_group",array('id'=>'wizard','class'=>'form-horizontal'));
                ?>
				  <div class="pd-10 pd-sm-20 bg-gray-200">
					<div class="row row-xs align-items-center mg-b-20">
					  <div class="col-md-4">
						<label class="form-label mg-b-0">Group Name</label>
					  </div><!-- col -->
					  <div class="col-md-8 mg-t-5 mg-md-t-0">
						<?php echo form_input($group_name);?>
					  </div><!-- col -->
					</div><!-- row -->

					<div class="row row-xs align-items-center mg-b-20">
					  <div class="col-md-4">
						<label class="form-label mg-b-0">Description</label>
					  </div><!-- col -->
					  <div class="col-md-8 mg-t-5 mg-md-t-0">
						<?php echo form_input($description);?>
					  </div><!-- col -->
					</div><!-- row -->

					<button class="btn btn-az-primary pd-x-30 mg-r-5">Create Group</button>
					<button class="btn btn-dark pd-x-30">Reset</button>
				  </div>
				  
				</div>
				<div class="col-sm-6 col-xl-8">
				<div class="card bd-0">
					<div class="card-header tx-medium bd-0 tx-white bg-gray-800">
					  Assign Privileges
					</div><!-- card-header -->
					<div class="card-body bd bd-t-0">
						 <div class="row">
						 <?php foreach ($perm as $key => $value): ?>
							<div class="col-lg-4">
							  <label class="ckbox pd-xl-b-10">
							    <input type="checkbox" name="privilege[]" value="<?php echo $value->perm_id ?>"><span><?php echo $value->perm_name ?></span>
							  </label>
							</div><!-- col-3 -->
						 <?php endforeach ?>
						  </div><!-- row -->
					</div><!-- card-body -->
                </div>
				</div>
				</div>
              </div><!-- card-top-content -->
            </div><!-- card -->
          </div><!-- col -->
        </div><!-- row -->
      </div><!-- az-content-body -->
     