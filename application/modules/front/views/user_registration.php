<!-- Sign Up -->
<div class="signup-area">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6 pl-0">
                <div class="signup-left">
                    <img src="assets/img/signup-bg.jpg" alt="SignUp">
                </div>
            </div>

            <div class="col-lg-6">
                <div class="appointment-item" style="padding: 50px 50px 50px;">
                    <h2>Register Yourself</h2>
                    <!-- <span>We will confirm your  appointment within 2 hours</span> -->
                    <div class="appointment-form">
                        <form action="<?= base_url('front/register/add_user') ?>" method="post">
                            <div class="row">
                                <div class="col-lg-12">                                  
                                    <?php if(!empty($message)){?>
                                        <!-- <div class="alert alert-success hide">
                                            <button class="close" data-dismiss="alert"></button>  
                                            <span class="error_msg"><?php echo $message;?></span>
                                        </div> -->
                                    <?php } ?>                                    
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <i class="icofont-business-man-alt-1"></i>
                                        <label>First Name</label>
                                        <input type="text" name="first_name" class="form-control" placeholder="Enter Your First Name" required>
                                    </div>
                                </div>                                
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <i class="icofont-business-man-alt-1"></i>
                                        <label>Last Name</label>
                                        <input type="text" name="last_name" class="form-control" placeholder="Enter Your Last Name" required>
                                    </div>
                                </div>                                
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <i class="icofont-business-man"></i>
                                        <label>Age</label>
                                        <input type="text" name="age" class="form-control" placeholder="Your Age" required>
                                    </div>
                                </div>                                
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <i class="icofont-user"></i>
                                        <label>Gender</label>
                                        <select class="form-control" name="gender" id="exampleFormControlSelect1" required>
                                            <option value="">Choose Gender</option>
                                            <option value="male">Male</option>
                                            <option value="female">Female</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <i class="icofont-ui-call"></i>
                                        <label>Phone</label>
                                        <input type="number" name="phone" class="form-control" placeholder="Enter Your Number" required>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <i class="icofont-ui-message"></i>
                                        <label>Email</label>
                                        <input type="email" name="email" class="form-control" placeholder="Enter Your Email" required>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <i class="icofont-hospital"></i>
                                        <label>State</label>
                                        <select class="form-control" name="state" id="exampleFormControlSelect1" required>
                                            <option value="">Select State</option>
                                            <option value="01">Madhya Pradesh</option>
                                            <option value="02">Maharashtra</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <i class="icofont-hospital"></i>
                                        <label>City</label>
                                        <select class="form-control" name="city" id="exampleFormControlSelect1" required>
                                            <option value="">Select City</option>
                                            <option value="01">Bhopal</option>
                                            <option value="02">Jabalpur</option>
                                        </select>
                                    </div>
                                </div>                                                             
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <i class="icofont-key"></i>
                                        <label>Create Password</label>
                                        <input type="password" name="password" class="form-control" placeholder="Enter Password" required>
                                    </div>
                                </div>                                                                
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <i class="icofont-key"></i>
                                        <label>Confirm Password</label>
                                        <input type="password" name="confirm_password" class="form-control" placeholder="Re-Enter Password" required>
                                    </div>
                                </div>    
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn appointment-btn">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

		<div class="row">
		<div class="col-lg-12" style="padding: 50px 100px 0 100px">
			<h2>STEPS FOR CONSULTATION</h2>
		</div>
        </div>
		<div class="row">
            <div class="col-lg-6" style="padding: 50px 100px 0 100px">
                <div class="blog-details-item">
                    
                    <div class="blog-details-previous">
                        
                        <h3>1. Register</h3>
                        <ul>
                            <li>1. First register yourself as a new user for first time consutltation.</li>
                            <li>2. Registration is compulsory.</li>
                            <li>3. If already registered then login through existing user.</li>
                        </ul>
                       <h3>3. Make Payment</h3>
                        <ul>
                            <li>1. After submitting reports make online payment through payment gateway.</li>
                            <li>2. Your query will be answered only after making payment.</li>
                        </ul>
                       
                    </div>
                </div>
            </div>
			<div class="col-lg-6" style="padding: 50px 100px 0 100px">
                <div class="blog-details-item">
                    
                    <div class="blog-details-previous">
                       <h3>2. Consultation Online</h3>
                        <ul>
                            <li>1. After login submit your reports like Xray , Ultrasonography , CT Scan and Pathology reports.</li>
                            <li>2. Ask your query.</li>
                        </ul>
                       
                    
                       <h3>4. Get Solution</h3>
                        <ul>
                            <li>1. You will get the solution within 24 to 48 hours after making payment.</li>
                            <li>2. You can see the sample report on front window near online consultation.</li>
                        </ul>
                       
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
        <!-- End Sign Up -->

                