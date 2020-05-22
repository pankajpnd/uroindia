	
	  <div class="az-content-body">
        <div class="row row-sm">
          <div class="col-sm-6 col-xl-12">
            <div class="card card-dashboard-twentytwo ht-auto">
              <div class="card-header">
                <h2 class="card-title">Employee List</h2>
              </div><!-- card-header -->
              <div class="card-body">
                <div>
					<table id="example2" class="table">
					  <thead>
						<tr>
						  <th class="wd-20p">Sno.</th>
						  <th class="wd-20p">Name</th>
						  <th class="wd-25p">Gender</th>
						  <th class="wd-20p">Contact</th>
						  <th class="wd-15p">Email</th>
						  <th class="wd-20p">Blood Group</th>
						</tr>
					  </thead>
					  <tbody>
					  <?php if(!empty($employee)): ?>
					  <?php $sno=0;foreach($employee as $emp): $sno++?>
						<tr>
						  <td><?php echo $sno ?></td>
						  <td><?php echo $emp->emp_first_name ?></td>
						  <td></td>
						  <td></td>
						  <td></td>
						  <td></td>
						</tr>
						<?php endforeach ?>   

						 <?php else: ?>

							<tr>
							   <td>
								  <p><font color="red" size="4"><b>No Employee Added Yet</b></font></p> 
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
     