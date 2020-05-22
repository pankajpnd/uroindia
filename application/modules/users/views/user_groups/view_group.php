	
	  <div class="az-content-body">
        <div class="row row-sm">
          <div class="col-sm-6 col-xl-12">
            <div class="card card-dashboard-twentytwo ht-auto">
              <div class="card-header">
                <h2 class="card-title">User Roles/Groups</h2>
              </div><!-- card-header -->
              <div class="card-body">
                <div>
				<?php 
                //If user is admin
                if ($this->ion_auth->get_user_group() == 1) 
                {
                ?>
					<table id="example2" class="table">
					  <thead>
						<tr>
                           <th>Role/Group</th>
                           <th>Description</th>
                           <th>Edit</th>
                           <th>Delete</th>
                        </tr>
					  </thead>
					 <tbody>
                              <?php foreach ($groups as $group):?>
                              <tr>
                                 <td>
                                    <?php echo htmlspecialchars($group->name,ENT_QUOTES,'UTF-8');?>
                                 </td>
                                 <td>
                                    <?php echo htmlspecialchars($group->description,ENT_QUOTES,'UTF-8');?>
                                 </td>
                                 <td>
                                    <a href="<?= base_url('users/User_groups/edit_group')?>/<?= $group->id ?>">
                                    <button class="btn btn-dark"><i class="fa fa-edit"></i> Edit</button>
                                    </a>
                                 </td>
                                 <td>
                                    <a href="<?= base_url('users/User_groups/delete_group')?>/<?= $group->id ?>"> 
                                    <button class="btn btn-danger" disable>
                                    <i class="fa fa-trash"></i> Delete
                                    </button>
                                    </a> 
                                 </td>
                              </tr>
                              <?php endforeach;?>
                           </tbody>
                        </table>
					<?php
                           }
                           
                           if ($this->ion_auth->get_user_group() == 2) {
                           ?>
                        <table id="example2" class="table">
                           <thead>
                              <tr>
                                 <th>Role/Group</th>
                                 <th>Description</th>
                              </tr>
                           </thead>
                           <tbody>
                              <?php foreach ($groups as $group):?>
                              <tr>
                                 <td>
                                    <?php echo htmlspecialchars($group->name,ENT_QUOTES,'UTF-8');?>
                                 </td>
                                 <td>
                                    <?php echo htmlspecialchars($group->description,ENT_QUOTES,'UTF-8');?>
                                 </td>
                              </tr>
                              <?php endforeach;?>
                           </tbody>
                        </table>
                        <?php
                           }
                           ?>
				</div>
              </div><!-- card-top-content -->
            </div><!-- card -->
          </div><!-- col -->
        </div><!-- row -->
      </div><!-- az-content-body -->
     