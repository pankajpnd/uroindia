	
	  <div class="az-content-body">
        <div class="row row-sm">
          <div class="col-sm-6 col-xl-12">
            <div class="card card-dashboard-twentytwo ht-auto">
              <div class="card-header">
                <h2 class="card-title">Add Permissions</h2>
              </div><!-- card-header -->
              <div class="card-body">
                <div class="row row-sm">
                <div class="col-sm-6 col-xl-4">
				<ul>
                   <?php foreach ($head_permissions as $head_perm) : ?>
                      <li>
                         <?= $head_perm->icon ?> <?= $head_perm->perm_name ?>
                         <span class="pull-right">
                            <a href="" data-level="<?= $head_perm->level ?>" data-id="<?= $head_perm->perm_id ?>" class=" update">
                               <i class="fa fa-pencil-square" aria-hidden="true"></i>
                            </a>
                            <a href="<?= bs() ?>users/Permissions/delete_perm/<?= $head_perm->perm_id ?>"  style="padding-left:5px;color:red">
                               <i class="fa fa-trash" aria-hidden="true"></i>
                            </a>
                         </span>
                         <ul>
                            <?php foreach ($sub_permissions as $sub_perm) : ?>
                               <?php
                                     if ($head_perm->perm_id == $sub_perm->parent_id) :
                                        ?>
                                  <li>
                                     <?= $sub_perm->icon ?> <?= $sub_perm->perm_name ?>
                                     <span class="pull-right">
                                        <a href="" data-level="<?= $sub_perm->level ?>" data-id="<?= $sub_perm->perm_id ?>" class=" update">
                                           <i class="fa fa-pencil-square" aria-hidden="true"></i>
                                        </a>
                                        <a href="<?= bs() ?>users/Permissions/delete_perm/<?= $sub_perm->perm_id ?>" style="padding-left:5px;color:red">
                                           <i class="fa fa-trash" aria-hidden="true"></i>
                                        </a>
                                     </span>
                                  </li>
                               <?php endif; ?>
                            <?php endforeach; ?>
                         </ul>
                      </li>
                   <?php endforeach; ?>
                </ul>
				</div>
				<div class="col-sm-6 col-xl-8">
				<div class="card bd-0">
					
					<div class="card-body bd bd-t-0">
						 <button id="loading-btn" class="btn btn-lg btn-primary btn-label" data-toggle="modal" data-target="#headModel"> <i class="fa fa-plus-circle" aria-hidden="true"></i>
                             Add Head Permission
                          </button>
                          <button class="btn btn-lg btn-success" data-toggle="modal" href="#myModal">
                             <i class="fa fa-plus-circle" aria-hidden="true"></i> Add Sub Permission
                          </button>
					</div><!-- card-body -->
                </div>
				</div>
				</div>
              </div><!-- card-top-content -->
            </div><!-- card -->
          </div><!-- col -->
        </div><!-- row -->
      </div><!-- az-content-body -->
     