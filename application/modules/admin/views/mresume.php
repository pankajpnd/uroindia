<div class="az-content-body az-content-body-profile">
	<div class="row">

	
       <div class="col-sm-6 col-xl-12">
            <div class="card card-dashboard-twentytwo ht-auto">
              <div class="card-header">
                <h4 class="card-title">Manage Resume</h4>
				
	
              </div><!-- card-header -->
              <div class="card-body">
                <div>
					<table id="example2" class="table">
					  <thead>
						<tr>
						  <th class="wd-9p">Sl No.</th>
						  <th class="wd-15p">Name</th>
						  <th class="wd-51p">Looking for</th>
						  <th class="wd-10p">Mobile</th>
						  <th class="wd-15p">Email</th>
						  <th class="wd-15p">Date</th>
						  <th class="wd-15p">Resume</th>
						</tr>
					  </thead>
					  <tbody>
					  <?php if(!empty($mresume)): ?>
					  <?php $sno=0;foreach($mresume as $resume): $sno++?>
						<tr>
						  <td><?php echo $sno ?></td>
						  <td><?php echo ucwords($resume->res_name) ;?></td>
						  <td><?php echo ucwords($resume->res_look); ?></td>
						  <td><?php echo ucwords($resume->res_mob); ?></td>
						  <td><?php echo ucwords($resume->res_email); ?></td>
						  <td><?php echo date('d-m-Y',strtotime($resume->res_entrydt)); ?></td>
						  <td><img src="<?php echo bs().$resume->res_image;?>" height="40px" width="50px" /></td>
						  
						</tr>
						<?php endforeach ?>   

						 <?php else: ?>

							<tr>
							   <td>
								  <p><font color="red" size="3">Reord Not Found</font></p> 
							   </td>
							</tr>

						 <?php endif ?>
					  </tbody>
					</table>
				</div>
              </div><!-- card-top-content -->
            </div><!-- card -->
          </div><!-- col -->
		  
    </div><!-- row -->
</div><!-- az-content-body -->

    	