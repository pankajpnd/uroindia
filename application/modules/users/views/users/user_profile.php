 <div class="az-content-header d-block d-md-flex">
      <div class="container mn-ht-100p">
        <div class="az-content-left az-content-left-profile">

          <div class="az-profile-overview">
            <!-- az-img-user -->
            <div class="az-img-user">
              <?php 
			  $user = $this->ion_auth->user()->row();
            		if (empty($user->user_img)) 
            		{
            			
            	?>
            		<img src="<?php bs() ?>public/assets/img/default_user.png" class="img-responsive img-circle" width="200" alt="">
            	<?php	
            		} 
            		else {
            	?>
                	<img src="<?php bs() ?>uploads/<?php echo $user->user_img ?>" class="img-responsive img-circle" width="200" alt="">
            	<?php		
            		}
            		

            	 ?> 
            </div><!-- az-img-user -->
            <div class="d-flex justify-content-between mg-b-20">
              <div>
                <h5 class="az-profile-name"><?php $user = $this->ion_auth->user()->row();
					echo $user->first_name . ' ' . $user->last_name;
			?></h5>
                <p class="az-profile-name-text"><?php
				echo $user->email;
				?></p>
              </div>
              <div class="btn-icon-list">
                <button class="btn btn-indigo btn-icon"><i class="typcn typcn-plus-outline"></i></button>
                <button class="btn btn-primary btn-icon"><i class="typcn typcn-message"></i></button>
              </div>
            </div>

            <div class="az-profile-bio">
              Genius, Compiler, Powerful Multitasker, Fantasy Fruit Loop, Replacement President of a Major Soft Drink Manufacturer. <a href="#">More</a>
            </div><!-- az-profile-bio -->

            <hr class="mg-y-30">

            <div class="az-profile-social-list">
              <div class="col-md-12 col-xl-12 mg-t-40 mg-md-t-0">
                <div class="az-content-label tx-13 mg-b-25">Contact Information</div>
                <div class="az-profile-contact-list">
                  <div class="media">
                    <div class="media-icon"><i class="icon ion-md-phone-portrait"></i></div>
                    <div class="media-body">
                      <span>Mobile</span>
                      <div>(+63) 123 4567 890</div>
                    </div><!-- media-body -->
                  </div><!-- media -->
                  <div class="media">
                    <div class="media-icon"><i class="icon ion-logo-slack"></i></div>
                    <div class="media-body">
                      <span>Slack</span>
                      <div>@sophia.w</div>
                    </div><!-- media-body -->
                  </div><!-- media -->
                  <div class="media">
                    <div class="media-icon"><i class="icon ion-md-locate"></i></div>
                    <div class="media-body">
                      <span>Current Address</span>
                      <div>San Francisco, CA</div>
                    </div><!-- media-body -->
                  </div><!-- media -->
                </div><!-- az-profile-contact-list -->
              </div><!-- col -->
            </div><!-- az-profile-social-list -->

          </div><!-- az-profile-overview -->

        </div><!-- az-content-left -->
        <div class="az-content-body az-content-body-profile">
          <nav class="nav az-nav-line">
            <a href="#" class="nav-link active" data-toggle="tab">Personal Information</a>
            <a href="#" class="nav-link" data-toggle="tab">Reviews</a>
            <a href="#" class="nav-link" data-toggle="tab">Followers</a>
            <a href="#" class="nav-link" data-toggle="tab">Following</a>
            <a href="#" class="nav-link" data-toggle="tab">Account Settings</a>
          </nav>

          <div class="az-profile-body">

            <div class="row mg-b-20">
              <div class="col-md-7 col-xl-8">
                <div class="table-responsive">
            <table class="table mg-b-0">
              <tbody>
                <tr>
                  <td>Username</td>
                  <td><?php echo $user_profile->first_name." ".$user_profile->last_name ?></td>
                </tr>
                <tr>
                  <td>Email</td>
                  <td><?php echo $user_profile->email ?></td>
                </tr>
                <tr>
                  <td>Country</td>
                  <td><?php 
                       //ipinfo grabs the ip of the person requesting
                       
                        $getloc = json_decode(file_get_contents("http://ipinfo.io/"));
                       
                        $country_code = $getloc->country; //to get city
                       
                        echo $country_name = get_country_name($country_code);
                       ?></td>
                </tr>
                <tr>
                  <td>Contact</td>
                  <td><?php echo $user_profile->phone ?></td>
                </tr>
                <tr>
                  <td>Created on</td>
                  <td><?php echo date('d-m-y', strtotime($user_profile->date)) ?></td>
                </tr>
              </tbody>
            </table>
          </div>
              </div><!-- col -->
              <div class="col-md-5 col-xl-4 mg-t-40 mg-md-t-0">
                <div class="az-content-label tx-13 mg-b-20">Traffic Details</div>
                <div class="az-traffic-detail-item">
                  <div>
                    <span>People with title Founder &amp; CEO</span>
                    <span>24 <span>(20%)</span></span>
                  </div>
                  <div class="progress">
                    <div class="progress-bar wd-20p" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                  </div><!-- progress -->
                </div>
                <div class="az-traffic-detail-item">
                  <div>
                    <span>People with title UX Designer</span>
                    <span>16 <span>(15%)</span></span>
                  </div>
                  <div class="progress">
                    <div class="progress-bar bg-success wd-15p" role="progressbar" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
                  </div><!-- progress -->
                </div>
                <div class="az-traffic-detail-item">
                  <div>
                    <span>People with title Recruitment</span>
                    <span>87 <span>(45%)</span></span>
                  </div>
                  <div class="progress">
                    <div class="progress-bar bg-pink wd-45p" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100"></div>
                  </div><!-- progress -->
                </div>
                <div class="az-traffic-detail-item">
                  <div>
                    <span>People with title Software Engineer</span>
                    <span>32 <span>(25%)</span></span>
                  </div>
                  <div class="progress">
                    <div class="progress-bar bg-teal wd-25p" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                  </div><!-- progress -->
                </div>
              </div><!-- col -->
            </div><!-- row -->

            <hr class="mg-y-40">


            <div class="mg-b-20"></div>

          </div><!-- az-profile-body -->
        </div><!-- az-content-body -->
      </div><!-- container -->
    </div><!-- az-content -->
	