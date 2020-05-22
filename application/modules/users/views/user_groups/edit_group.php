	
	  <div class="az-content-body">
        <div class="row row-sm">
          <div class="col-sm-6 col-xl-12">
            <div class="card card-dashboard-twentytwo ht-auto">
              <div class="card-header">
                <h2 class="card-title"><?php echo lang('edit_group_heading');?></h2>
				<p><?php echo lang('edit_group_subheading');?></p>
              </div><!-- card-header -->
              <div class="card-body">
                <div class="row row-sm">
                <div class="col-sm-6 col-xl-4">
				<?php 
					echo form_open(current_url());
                ?>
				  <div class="pd-10 pd-sm-20 bg-gray-200">
					<div class="row row-xs align-items-center mg-b-20">
					  <div class="col-md-4">
						<label class="form-label mg-b-0"><?php echo lang('edit_group_name_label', 'group_name');?></label>
					  </div><!-- col -->
					  <div class="col-md-8 mg-t-5 mg-md-t-0">
						<?php echo form_input($group_name);?>
					  </div><!-- col -->
					</div><!-- row -->

					<div class="row row-xs align-items-center mg-b-20">
					  <div class="col-md-4">
						<label class="form-label mg-b-0"><?php echo lang('edit_group_desc_label', 'description');?></label>
					  </div><!-- col -->
					  <div class="col-md-8 mg-t-5 mg-md-t-0">
						<?php echo form_input($group_description);?>
					  </div><!-- col -->
					</div><!-- row -->
					<?php echo form_submit('submit', lang('edit_group_submit_btn'),'class="btn btn-az-primary pd-x-30 mg-r-5"');?>
					<button class="btn btn-dark pd-x-30">Reset</button>
				  </div>
				  
				</div>
				<div class="col-sm-6 col-xl-8">
				<div class="card bd-0">
					<div class="card-header tx-medium bd-0 tx-white bg-gray-800">
						Privileges
					</div><!-- card-header -->
					<div class="card-body bd bd-t-0">
						 <div class="row">
						 <?php if ($this->ion_auth->is_admin()): ?>
                        <?php foreach ($privileges as $privilege):?>
							<div class="col-lg-4">
							  <label class="ckbox pd-xl-b-10">
							  <?php
                              $pID = $privilege->perm_id;
                              $checked = null;
                              $item = null;
                              foreach($crtPrivilege as $pri) 
                              {
                                  if ($pID == $pri->perm_id) 
                                  {
                                      $checked= ' checked="checked"';
                                      break;
                                  }
                              }
                              ?><input type="checkbox" name="privlg[]" value="<?php echo $privilege->perm_id;?>"<?php echo $checked;?>>
							  <span><?php echo htmlspecialchars($privilege->perm_name,ENT_QUOTES,'UTF-8');?></span>
							  </label>
							</div><!-- col-3 -->
						 <?php endforeach?>
                        <?php endif ?>
						  </div><!-- row -->
					</div><!-- card-body -->
                </div>
				</div>
				<?php echo form_close();?>
				</div>
              </div><!-- card-top-content -->
            </div><!-- card -->
          </div><!-- col -->
        </div><!-- row -->
      </div><!-- az-content-body -->
<script>
   $(document).ready(function() {
   
      //This script is to check email validity
      $("body").on('change', '#group_name', function()
      {
         var group_name = $("#group_name").val();
   
         if (group_name.length === 0) 
         {
           $('#err_msg').text('Group Name is required');
           return false;
         }
   
         $.ajax({
           url: '<?= base_url("users/User_groups/check_group_name") ?>',
           method: 'POST',
           dataType: 'TEXT',
           data: {group_name: group_name},
           success: function(result) 
           {
             var msg = result.split("::");
   
             if (msg[0] == "ok")
             {
               $("#err_msg").fadeIn();
               $("#err_msg").text("Group name already taken.");
             }  
             else
             {
               console.log('Success');
               $("#err_msg").fadeIn();
               $("#err_msg").html("<span class='fa fa-check-circle text-success'> Success</span>");
               $("#err_msg").delay(3000).fadeOut();
             }
           },
           error:function(result) 
           {
             // body...
             console.log(result);
           }
         })
      });
   });
     
</script>    