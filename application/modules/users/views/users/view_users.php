
    <div class="az-content pd-y-20 pd-lg-y-30 pd-xl-y-40">
      <div class="container">
        <div class="az-content-body pd-lg-l-40 d-flex flex-column">
         
          <h2 class="az-content-title">USERS RECORDS</h2>

          <div>
            <table id="example2" class="table">
              <thead>
                <tr>
                  <th class="wd-20p">User Name</th>
                  <th class="wd-25p">First Name</th>
                  <th class="wd-20p">Last Name</th>
                  <th class="wd-15p">Email</th>
                  <th class="wd-20p">Role/Groups</th>
				  <?php if ($this->session->userdata("group_id") == 1): ?>
                  <th class="wd-20p">Status</th>
                  <th class="wd-20p">Edit</th>
                  <th class="wd-20p">Delete</th>
                  <th class="wd-20p">Send Email</th>
                  <?php endif ?>
                </tr>
              </thead>
              <tbody>
                <?php foreach ($users as $user):?>
                              <tr>
                                 <td>
                                    <?php echo htmlspecialchars($user->username,ENT_QUOTES,'UTF-8');?>
                                 </td>
                                 <td>
                                    <?php echo htmlspecialchars($user->first_name,ENT_QUOTES,'UTF-8');?>
                                 </td>
                                 <td>
                                    <?php echo htmlspecialchars($user->last_name,ENT_QUOTES,'UTF-8');?>
                                 </td>
                                 <td>
                                    <?php echo htmlspecialchars($user->email,ENT_QUOTES,'UTF-8');?>
                                 </td>
                                 <td>
                                    <?php foreach ($user->groups as $group):?>
                                    <?php echo anchor("users/User_groups/edit_group/".$group->id,htmlspecialchars($group->name,ENT_QUOTES,'UTF-8'),'class="btn btn-midnightblue btn-sm"') ;?><br />
                                    <?php endforeach?>
                                 </td>
                                 <?php if ($this->session->userdata("group_id") == 1): ?>
                                 <td>
                                    <?php echo ($user->active) ? anchor("users/auth/deactivate/".$user->id, lang('index_active_link'),array('class' => 'btn btn-primary-alt btn-sm')) : anchor("users/activate/". $user->id, lang('index_inactive_link'),array('class' => 'btn btn-danger-alt btn-sm'));?>
                                    </a>
                                 </td>
                                 <td>
                                    <a class="btn btn-success-alt btn-sm" href="<?= base_url('users/edit_user')?>/<?= $user->id ?>"><i class="ti ti-pencil"></i></a>
                                    </a>
                                 </td>
                                 <td>
                                    <a href="<?= base_url('users/delete_user')?>/<?= $user->id ?>" class="btn btn-danger-alt btn-sm"><i class="ti ti-close"></i></a>
                                 </td>
                                 <td>
                                    <a href="#" id="send_email" data-user-id="<?= $user->id ?>" class="btn btn-primary-alt btn-sm" data-toggle="modal" data-target="#myModal"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></a>
                                 </td>
                                 <?php endif ?>	
                              </tr>
                              <?php endforeach;?>
              </tbody>
            </table>
			
          </div>
