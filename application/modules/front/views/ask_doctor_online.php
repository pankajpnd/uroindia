
        <!-- Drop -->
        <section class="drop-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-7 p-0">
                        <div class="drop-item drop-img">
                            <div class="drop-left">
                                <h2>Enter Your Health Query.</h2>
                                
									<div class="row">
									<div class="col-md-12 col-lg-12">
											<div class="form-group">
												<textarea name="message" class="form-control" id="message" cols="30" rows="5" required data-error="Write your Health Query, your age, height, weight, medicine your are taking." placeholder="Enter Your Health Query here..."></textarea>
												<div class="help-block with-errors"></div>
											</div>
										</div>
										
										<div class="col-md-12 col-lg-12">
											<button type="" class="drop-btn">
												New User
											</button>
											<button type="" class="drop-btn">
												Existing User?
											</button>
										</div>
										
										<div class="col-md-12 col-lg-12">
										<div class="signup-item">
											<div class="signup-head pt-50">
												<h4>Login Here</h4>
											</div>
											<div class="signup-form">
												<form action="<?php echo base_url('front/login') ?>" method="post">
													<div class="row">
													   
														<div class="col-lg-6">
															<div class="form-group">
															<label>Email / Username</label>
																<input type="email" class="form-control" id="identity" name="identity" placeholder="Your Email">
															</div>
														</div>
														<div class="col-lg-6">
															<div class="form-group">
															<label>Password</label>
																<input type="password" class="form-control" name="password" placeholder="Password">
															</div>
														</div>
													   
														<div class="col-lg-12">
															<div class="form-group">
																<div class="forgot-pass">
																	<?php //if ($reg_status[0]->forgot_pass_status == 1): ?>
																	  <a href="<?php //base_url('users/register/forgot_pass') ?>">Forgot password?</a>
																	<?php //endif ?> 
																</div>
															</div>
														</div>
														<div class="col-lg-12">
															<div class="text-center">
																<button type="submit" class="btn signup-btn">Login</button>
															</div>
														</div>
													</div>
											</div>
										</div>
									</div>
										
									
			
										
			
									</div>
								</form>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5 p-0">
                        <div class="speciality-item speciality-right speciality-right-two speciality-right-three">
                            <img src="assets/img/home-two/4.jpg" alt="Contact">
                            
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Drop -->

       