
	  <div class="az-content-body">
        <div class="row row-sm">
          <div class="col-sm-6 col-xl-3">
            <div class="card card-dashboard-twentytwo">
              <div class="media">
                <div class="media-icon bg-purple"><i class="typcn typcn-chart-line-outline"></i></div>
                <div class="media-body">
                  <h6><?php echo $total_users; ?> <small class="down">+<?php echo $total = $total_users*$total_users/100;?></small></h6>
                  <span>Users</span>
                </div>
              </div>
              <div class="chart-wrapper">
                <div id="flotChart1" class="flot-chart"></div>
              </div><!-- chart-wrapper -->
            </div><!-- card -->
          </div><!-- col -->
          <div class="col-sm-6 col-xl-3 mg-t-20 mg-sm-t-0">
            <div class="card card-dashboard-twentytwo">
              <div class="media">
                <div class="media-icon bg-primary"><i class="typcn typcn-chart-line-outline"></i></div>
                <div class="media-body">
                  <h6><?= $today_users ?><small class="up">+<?= $today = $today_users*$today_users/100 ?></small></h6>
                  <span>Today Users </span>
                </div>
              </div>
              <div class="chart-wrapper">
                <div id="flotChart2" class="flot-chart"></div>
              </div><!-- chart-wrapper -->
            </div><!-- card -->
          </div><!-- col-3 -->
		  <!-- This is script is for count page visitor  -->
			<?php
				
			$counter_name = "";
			
			// Open the file for reading 
				$fp = fopen("counter.txt", "r"); 
		
				// Get the existing count 
				$count = fread($fp, 1024); 
		
				// Close the file 
				fclose($fp); 
		
				// Add 1 to the existing count 
				$count = $count + 1; 
		
				// Display the number of hits 
				// If you don't want to display it, comment out this line 
				$counterVal =  $count; 
		
				// Reopen the file and erase the contents 
				$fp = fopen("counter.txt", "w"); 
		
				fwrite($fp, $count); 
		
				// Close the file 
				fclose($fp); 
			?>	
          <div class="col-sm-6 col-xl-3 mg-t-20 mg-xl-t-0">
            <div class="card card-dashboard-twentytwo">
              <div class="media">
                <div class="media-icon bg-pink"><i class="typcn typcn-chart-line-outline"></i></div>
                <div class="media-body">
                  <h6><?= $counterVal ?> <small class="down">
					<?php 
					$counter = $counterVal*$counterVal/100;
					echo $counter.' %';
					?>
				  </small></h6>
                  <span>Visitors</span>
                </div>
              </div>
              <div class="chart-wrapper">
                <div id="flotChart3" class="flot-chart"></div>
              </div><!-- chart-wrapper -->
            </div><!-- card -->
          </div><!-- col -->
          <div class="col-sm-6 col-xl-3 mg-t-20 mg-xl-t-0">
            <div class="card card-dashboard-twentytwo">
              <div class="media">
                <div class="media-icon bg-teal"><i class="typcn typcn-chart-line-outline"></i></div>
                <div class="media-body">
                  <h6><?= $weekly ?> <small class="up">
					<?php 
					   $counter = $weekly*$weekly/100;
					   echo $counter.' %';
					?>
				  </small></h6>
                  <span>This Week Users</span>
                </div>
              </div>
              <div class="chart-wrapper">
                <div id="flotChart4" class="flot-chart"></div>
              </div><!-- chart-wrapper -->
            </div><!-- card -->
          </div><!-- col -->
          <div class="col-xl-9 mg-t-20">
            <div class="card card-dashboard-twentyone">
              <div class="row no-gutters">
                <div class="col-md-4">
                  <div class="card-body">
                    <h6 class="az-content-label">Doctors By Region</h6>
                    <p>The top locations where Doctors of your region are located</p>

                    <div class="list-group">
                      <div class="list-group-item">
                        <span>United States</span>
                        <span>5,508</span>
                        <div class="progress">
                          <div class="progress-bar wd-85p bg-purple" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                      </div><!-- list-group-item -->
                      <div class="list-group-item">
                        <span>United Kingdom</span>
                        <span>5,122</span>
                        <div class="progress">
                          <div class="progress-bar wd-75p bg-indigo" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                      </div><!-- list-group-item -->
                      <div class="list-group-item">
                        <span>Russia</span>
                        <span>4,750</span>
                        <div class="progress">
                          <div class="progress-bar wd-65p" role="progressbar" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                      </div><!-- list-group-item -->
                      <div class="list-group-item">
                        <span>China</span>
                        <span>4,300</span>
                        <div class="progress">
                          <div class="progress-bar wd-55p bg-info" role="progressbar" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                      </div><!-- list-group-item -->
                      <div class="list-group-item">
                        <span>Australia</span>
                        <span>4,018</span>
                        <div class="progress">
                          <div class="progress-bar wd-45p bg-teal" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                      </div><!-- list-group-item -->
                    </div><!-- list-group -->
                  </div>
                </div>
                <div class="col-md-8">
                  <div id="vmap" class="vmap-wrapper"></div>
                </div><!-- col -->
              </div><!-- row -->
            </div><!-- card -->
          </div><!-- col -->
          <div class="col-md-4 col-xl-3 mg-t-20">
            <div class="card card-body card-dashboard-twentythree ht-xl-100p">
              <h6 class="card-title tx-14 mg-b-10">Mobile Sessions</h6>
              <p class="mg-b-15">The percentage of users who uses mobile devices compare to other devices.</p>

              <div class="d-flex flex-column align-items-center mg-b-25">
                <div>
                  <div class="az-donut-chart chart1">
                    <div class="slice one"></div>
                    <div class="slice two"></div>
                    <div class="chart-center">
                      <span></span>
                    </div>
                  </div>
                </div>
              </div><!-- d-flex -->

              <div class="row row-sm">
                <div class="col-6">
                  <label><span class="bg-indigo"></span> Mobile</label>
                  <h5>6,098</h5>
                </div>
                <div class="col-6">
                  <label><span class="bg-gray-500"></span> Desktop</label>
                  <h5>3,902</h5>
                </div>
              </div><!-- row -->
            </div>
          </div>
          <div class="col-md-8 col-xl-6 mg-t-20">
            <div class="card card-dashboard-audience-metrics ht-md-100p">
              <div class="card-header">
                <h6 class="card-title">Audience Metrics</h6>
                <p class="mg-b-15">Measures your user's sessions and page views metrics to your website for this month.</p>
              </div><!-- card-header -->
              <div class="card-body">
                <div>
                  <h4>120,500</h4>
                  <label><span class="bg-primary"></span>Users</label>
                </div>
                <div>
                  <h4>360,108</h4>
                  <label><span class="bg-teal"></span>Page Views</label>
                </div>
                <div>
                  <h4>150,712</h4>
                  <label><span class="bg-pink"></span>Sessions</label>
                </div>
              </div><!-- card-top-content -->
              <div class="chart-wrapper">
                <div id="flotChart5" class="flot-chart"></div>
              </div><!-- chart-wrapper -->
            </div><!-- card -->
          </div><!-- col -->
          <div class="col-xl-6 mg-t-20">
            <div class="card card-dashboard-audience-metrics">
              <div class="card-header">
                <h6 class="card-title">Traffic Sources</h6>
                <p class="mg-b-15">Measures your user's sources that generate traffic metrics to your website for this month.</p>
              </div><!-- card-header -->
              <div class="card-body">
                <div>
                  <h4>86,376</h4>
                  <label><span class="bg-purple"></span>Organic</label>
                </div>
                <div>
                  <h4>25,001</h4>
                  <label><span class="bg-primary"></span>Direct</label>
                </div>
                <div>
                  <h4>12,909</h4>
                  <label><span class="bg-teal"></span>Referral</label>
                </div>
              </div><!-- card-top-content -->
              <div class="chart-wrapper">
                <div id="flotChart6" class="flot-chart"></div>
              </div><!-- chart-wrapper -->
            </div><!-- card -->
          </div><!-- col -->
        </div><!-- row -->
      </div><!-- az-content-body -->
     