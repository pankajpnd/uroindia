<!-- Sign Up -->
        <div class="signup-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 ptb-10">
                        <div class="signup-item" style="max-width:99%;">
                            <div class="signup-head">
                                <?php foreach ($check as $value){} ?>
                            </div>
                            <div class="signup-form">
                                <div class="row">
                                    <div class="col-lg-3 pt-50">
                                       <div class="blog-details-item">
											<div class="blog-details-category">
												<ul>
													<li>
														<a href="#" id="nav_profile" onclick="switchSection(this.id)">Profile</a>
													</li>
													<li>
														<a href="#" id="nav_medical_history" onclick="switchSection(this.id)">Medical History & Reports</a>
													</li>
													<li>
														<a href="#" id="nav_doctor_reply" onclick="switchSection(this.id)">Doctor's Reply</a>
													</li>
													<li>
														<a href="#" id="nav_payment_status" onclick="switchSection(this.id)">Payment Status</a>
													</li>
													<li>
														<a href="#" id="nav_change_password" onclick="switchSection(this.id)">Change Password</a>
													</li>
												</ul>
											</div>
										</div>
                                    </div>
									<div class="col-lg-9">
										<div class=" row blog-item hide animation-delay: 0.3s; animation-name: fadeInUp;" id="profile">
										<div class="drop-item ">
											 <!-- Page Title -->
											<div class="page-title-area" style="height:150px">
												<div class="d-table">
													<div class="d-table-cell">
														<div class="page-title-item-two">
														<?php $user = $this->ion_auth->user()->row();?>
															<h4 style="color:#fff"><?php echo ucwords($user->first_name . ' ' . $user->last_name); ?></h4>
															<h6 style="color:#fff"><?php echo "Age ".$user->age; ?>, <?php echo ($user->gender==1)?'Male':'Female'; ?></h6>
														</div>
													</div>
												</div>
											</div>
											<!-- End Page Title -->

											<!-- Doctor Details -->
											<div class="doctor-details-area pb-70">
												<div class="container">
													<div class="row">
														<div class="col-lg-5">
															<div class="doctor-details-item ">
																
																<div class="doctor-details-contact mt-50" style="border:1px solid #ccc;height:170px;width:45%;padding-left:0px;margin-left:50px;margin-top:-50px;box-shadow: 0px 0px 10px 0px #ddd;border-radius: 10px;">
																<?php if($user->user_img!=''){?>
																	<img src="<?php echo bs().'assets/img/patient/'.$user->user_img;?>" height="100%" width="100%" alt="Profile Pic">
																<?php }else{ ?>
																	<img src="<?php echo bs().'assets/img/blank_Profile.png';?>" height="100%" width="100%" alt="Profile Pic">
																<?php } ?>
																</div>
																
																<div class="doctor-details-contact mt-50">
																	
																	<ul>
																		<li style="font-size:14px !important">
																			<i class="icofont-ui-call"></i>
																			Call : <?php echo ucwords($user->phone); ?>
																		</li>
																		<li style="font-size:14px !important">
																			<i class="icofont-ui-message"></i>
																			<?php echo ucwords($user->email); ?>
																		</li>
																		<li style="font-size:14px !important">
																			<i class="icofont-location-pin"></i>
																			<?php echo ucwords($this->Common_model->findfield('mst_city','city_id',$user->city,'city_name')).', '.ucwords($this->Common_model->findfield('mst_state','state_id',$user->state,'state_name')); ?>
																		</li>
																	</ul>
																</div>
															</div>
														</div>
														<div class="col-lg-7">
															<div class="doctor-details-item">
																<div class="doctor-details-right">
																	
																	<div class="doctor-details-biography">
																		<h3>Biography</h3>
																		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra</p>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- End Doctor Details -->
										</div>
										</div>
									
										<div class=" row blog-item animation-delay: 0.3s; animation-name: fadeInUp;" id="medical_history">
										<div class="drop-item drop-img">
											<div class="col-md-10 col-lg-10">
											<?php if(empty($check[0]->qry_symptoms) and empty($check[0]->qry_treatment_taken)){?>
												<div class="" style="padding:30px">
												<h2>Tell us more about your problem.</h2>
												<form action="<?= base_url('front/register/update_patient_history') ?>" method="post">
												<input type="hidden" name="qry_id" value="<?php echo (!empty($check[0]->qry_id))?$check[0]->qry_id:"0"; ?>">
													<div class="row">
														<div class="col-lg-12">
															<div class="form-group">
																<i class="icofont-ui-building"></i>
																<label>Complaints / Symptoms</label>
																<textarea rows="2" name="mhis_sympt" class="form-control" placeholder="Enter Complaints / Symptoms" required></textarea>
															</div>
														</div>
														<div class="col-lg-12">
															<div class="form-group">
																<i class="icofont-ui-building"></i>
																<label>Treatment Taken</label>
																<textarea rows="2" name="mhis_treat" class="form-control" placeholder="Enter Which Treatment You have Taken" required></textarea>
															</div>
														</div>
														<div class="col-lg-12">
															<div class="form-group">
																<i class="icofont-ui-building"></i>
																<label>Ask Your Query</label>
																<textarea rows="3" name="mhis_query" class="form-control" placeholder="Enter Ask Your Query" required><?php echo (!empty($check[0]->qry_desc))?$check[0]->qry_desc:""; ?></textarea>
															</div>
														</div>
														<div class="col-lg-2">
															<div class="text-center">
																<button type="submit" class="btn signup-btn">Save</button>
															</div>
														</div>
													</div>
												</form>
												</div>
											<?php }else{ ?>	
												<div class="" style="padding:30px">
												
												<form action="<?= base_url('front/register/pay_for_query') ?>" method="post">
												
													<div class="row">
													<div class="welcome-item welcome-right">
														<div class="section-title-two">
															<h3>Your Medical History.</h3>
														</div>
														<ul>
															<li class="wow fadeInUp" data-wow-delay=".3s" style="visibility: visible; animation-delay: 0.3s; animation-name: fadeInUp;">
																<i class="icofont-doctor-alt"></i>
																<div class="welcome-inner">
																	<h3>Complaints / Symptoms</h3>
																	<p><?php echo (!empty($check[0]->qry_symptoms))?$check[0]->qry_symptoms:""; ?></p>
																</div>
															</li>
															<li class="wow fadeInUp" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInUp;">
																<i class="icofont-stretcher"></i>
																<div class="welcome-inner">
																	<h3>Treatment Taken</h3>
																	<p><?php echo (!empty($check[0]->qry_treatment_taken))?$check[0]->qry_symptoms:""; ?></p>
																</div>
															</li>
															<li class="wow fadeInUp" data-wow-delay=".7s" style="visibility: visible; animation-delay: 0.7s; animation-name: fadeInUp;">
																<i class="icofont-network"></i>
																<div class="welcome-inner">
																	<h3>Your Query</h3>
																	<p><?php echo (!empty($check[0]->qry_desc))?$check[0]->qry_symptoms:""; ?></p>
																</div>
															</li>
															
														</ul>
													</div>
														
														
													</div>
													</form>
												</div>
											<?php } ?>	
											</div>
											<div class="col-lg-10 col-lg-10">
												<div class="" style="padding:30px">
												<form action="<?= base_url('front/register/update_patient_history') ?>" method="post">
													<div class="row">
														<div class="col-lg-12">
															<h4>Upload Reports</h4><hr>
														</div>
														<div class="col-lg-12">
															<div class="blog-details-item">
															<div class="blog-details-tags">
																<ul>
																	<li>
																		<a href="#">Pathological Reports</a>
																		<span style="color:red">( Blood & Urine test report )</span>
																	</li>
																	<li>
																		<a href="#">Radiological Reports</a>
																		<span style="color:red">(X-ray ,USG, CT, MRI Reports)</span>
																	</li>
																	<li>
																		<a href="#">Other Reports</a>
																		<span style="color:red">(Optional)</span>
																	</li>
																	
																</ul>
															</div>
															</div>
															
														</div>
														
															<div class="welcome-inner">
																	<div class="col-lg-12">
																		<div class="text-center">
																			<button type="submit" class="btn signup-btn">Pay for Doctor's Reply</button>
																		</div>
																	</div>
																</div>
														
													</div><hr>
												</form>                                       
												</div>
											</div>
										</div>
										</div>
									
										<div class=" row blog-item hide" id="doctor_reply">
										<div class="drop-item drop-img">
											<h3>Doctor's Reply.</h3>
										</div>
										</div>
									
										<div class=" row blog-item hide" id="payment_status">
										<div class="drop-item drop-img">
											<h3>Payment Status</h3>
										</div>
										</div>
									
										<div class=" row blog-item hide" id="change_password">
										<div class="drop-item drop-img">
											<h3>Change Password</h3>
										</div>
										</div>
									</div>
									
                                </div>
								
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Sign Up -->
		<script>
			function switchSection(section){
				// var section = $()
				if(section == 'nav_profile'){
					$(".blog-item").addClass('hide');
					$("#profile").removeClass('hide');
				}
				if(section == 'nav_medical_history'){
					$(".blog-item").addClass('hide');
					$("#medical_history").removeClass('hide');
				}
				if(section == 'nav_doctor_reply'){
					$(".blog-item").addClass('hide');
					$("#doctor_reply").removeClass('hide');
				}
				if(section == 'nav_payment_status'){
					$(".blog-item").addClass('hide');
					$("#payment_status").removeClass('hide');
				}
				if(section == 'nav_change_password'){
					$(".blog-item").addClass('hide');
					$("#change_password").removeClass('hide');
				}
			}
		</script>