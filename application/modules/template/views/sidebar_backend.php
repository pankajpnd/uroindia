<body class="az-body az-body-sidebar az-body-dashboard-nine">
    <div class="az-sidebar az-sidebar-sticky az-sidebar-indigo-dark">
      <div class="az-sidebar-header">
        <a href="index-2.html" class="az-logo"><?php echo lang('company_name');?></a>
      </div><!-- az-sidebar-header -->
      <div class="az-sidebar-loggedin">
        <div class="az-img-user online">
		<?php
		$user = $this->ion_auth->user()->row();

		if (empty($user->user_img)) {

			?>
			<img src="<?php bs() ?>public/assets/img/default_user.png" class="img-responsive img-circle" width="200" alt="">
		<?php
		} else {
			?>
			<img src="<?php bs() ?>uploads/<?php echo $user->user_img ?>" class="img-responsive img-circle" width="200" alt="">
		<?php
		}


		?>
		</div>
        <div class="media-body">
          <h6><?php 
					echo $user->first_name . ' ' . $user->last_name;
			?></h6>
          <span><?php
				echo $user->email;
				?></span>
        </div><!-- media-body -->
      </div><!-- az-sidebar-loggedin -->
      <div class="az-sidebar-body">
        <ul class="nav">
          <li class="nav-label">Main Menu</li>
			<?php
			$priviliges = group_priviliges();
//			print_r($priviliges);
			foreach ($priviliges as $head_pre) :
				if (empty($head_pre->sub)) :
					?>
					<li class="nav-link">
						<a href="<?= base_url() ?><?= $head_pre->url ?>" class="nav-link">
							<?= $head_pre->icon ?>
							<span>
								<?= $head_pre->perm_name ?>
							</span>
						</a>
					</li>
				<?php
					endif;
					if (!empty($head_pre->sub)) :
				?>
					<li class="nav-item">
						<a href="javascript:;" class="nav-link with-sub">
							<?= $head_pre->icon ?><?= $head_pre->perm_name ?>
						</a>
						<ul class="nav-sub">
							<?php foreach ($head_pre->sub as $sub) : ?>
								<li class="nav-sub-item">
									<a href="<?= base_url() ?><?= $sub->url ?>" class="nav-sub-link">
										<i class="fas fa-angle-right mg-r-5" aria-hidden="true"></i> <?= $sub->perm_name ?>
									</a>
								</li>
							<?php endforeach; ?>
						</ul>
					</li>
			<?php
				endif;
			endforeach;
			?>
        </ul><!-- nav -->
      </div><!-- az-sidebar-body -->
    </div><!-- az-sidebar -->