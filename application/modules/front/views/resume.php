<!-- Sign Up -->
        <div class="signup-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-9 ptb-10">
                        <div class="signup-item" style="max-width:90%;">
                            <div class="signup-head">
                                <h3>Submit Resume</h3>
                                <p>Already have an account? 
                                    <a href="#">Log In</a>
                                </p>
                            </div>
                            <div class="signup-form">
                                <form action="<?= base_url('front/Resume/manage_resume') ?>" method="post" enctype="multipart/form-data">
                                    
                                    <div class="row" style="background-color:#F4F6F6">
                                        <div class="col-lg-3">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Applicant's Name</label>
                                                <input type="text" name="res_name" id="res_name" class="form-control" placeholder="Enter applicant Name" required>
                                            </div>
                                        </div>
                                        <div class="col-lg-1" hidden>
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Registration Type</label>
                                                <select name="res_type" id="res_type" class="form-control"  required>
                                                    <option value="1" selected>Doctor</option>
                                                    <option value="2">Other</option>
                                                    <option value="3">Uroindia</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-2">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Date of Birth</label>
                                                <select name="res_day" id="res_day" class="form-control"  required>
                                                    <option value="0" selected>Day</option>
                                                    <?php for($i=1;$i<=31;$i++){?>
                                                    <option value="<?php echo $i;?>"><?php echo $i;?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-2">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>&nbsp;</label>
                                                <select name="res_month" id="res_month" class="form-control"  required>
                                                    <option value="0" selected>Month</option>
                                                    <?php for($i=1;$i<=12;$i++){?>
                                                    <option value="<?php echo $i;?>"><?php echo $i;?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-2">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>&nbsp;</label>
                                                <select name="res_year" id="res_year" class="form-control"  required>
                                                    <option value="0" selected>Year</option>
                                                    <?php for($i=1960;$i<=date('Y');$i++){ ?>
                                                    <option value="<?php echo $i;?>"><?php echo $i;?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-3">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Gender</label>
                                                <select class="form-control" name="res_gender" id="res_gender" required>
                                                    <option value="">Select Gender</option>
                                                    <option value="1">Male</option>
                                                    <option value="2">Female</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="row mt-20" style="background-color:#F4F6F6">
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Looking For </label>
                                                <select name="res_look" id="res_look" class="form-control"  required>
                                                    <option value="">Select Type</option>
													 <option value="Doctor">Doctor</option>
													  <option value="Nurse">Nurse</option>
													   <option value="Paramedical">Paramedical</option>
													   <option value="Administration">Administration</option>
													   <option value="Other">Other</option>
                                                    
                                                </select>
                                            </div>
                                        </div>
                                         <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Qualification</label>
                                                <select name="res_quali" id="res_quali" class="form-control"  required>
                                                    <option value="">Select Qualification</option>
                                                    <?php foreach($degree as $deg){ ?>
                                                    <option value="<?php echo $deg->deg_id; ?>"><?php echo $deg->deg_name; ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                       <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Experience </label>
                                                <select name="res_expe" id="res_expe" class="form-control"  required>
                                                    <option value="">Select Experience</option>
                                                    <option value="1">Fresher</option>
                                                    <option value="2">1 Year</option>
                                                    <option value="3">2 Year</option>
                                                    <option value="4">3 Year</option>
                                                    <option value="5">4 Year</option>
                                                    <option value="6">5 Year</option>
                                                    <option value="7">6 Year</option>
                                                    <option value="8">More Than 6 Year</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Expected Salary *</label>
                                                <input type="number" name="res_salary" id="res_salary" class="form-control" placeholder="Enter Expected Salary." required>
                                            </div>
                                        </div>
										<div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Mobile Number *</label>
                                                <input type="number" name="res_mob" id="res_mob" class="form-control" placeholder="Enter Mobile Number." required>
                                            </div>
                                        </div>
										<div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Email *</label>
                                                <input type="text" name="res_email" id="res_email" class="form-control" placeholder="Enter Email." required>
                                            </div>
                                        </div>
                                      
                                    </div>
                                 
                                   <div class="row mt-20" style="background-color:#e7edf5">
                                                   
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
												 <label>Upload Resume (Optional) :</label>
                                                <input type="file" name="res_image" style="border:none;background-color:#e7edf5" class="form-control" >
                                            </div>
                                        </div>
										<div class="col-lg-8">
											<div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Applicant's Address</label>
                                                <input type="text" name="res_address" id="res_address" class="form-control" placeholder="Enter Applicant's Address" required>
                                            </div>
										</div>											
                                    </div>

                                    <div class="row mt-20" style="background-color:#e7edf5">
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Password</label>
                                                <input type="password" name="password" class="form-control" placeholder="Enter Password" required>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Confirm Password</label>
                                                <input type="password" name="confirm_password" class="form-control" placeholder="Enter Confirm Password" required>
                                            </div>
                                        </div>
                                       
                                        <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group" style="margin-left:15px">
                                            <input type="checkbox" /> I agree to the Terms of Use and Privacy Policy.
                                            </div>
                                        </div>
                                        </div>
                                        
                                       
                                        <div class="col-lg-12">
                                            <div class="text-center">
                                                <button type="submit" class="btn signup-btn">Submit</button></br>
                                            </div>
                                        </div>
                                        

                                    </div>
                                </form><br><br>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="blog-details-item">
                        <div class="blog-details-category ptb-10">
                                <h3>Services</h3>
                                <ul>
                                    <li>
                                        <a href="<?= base_url('front/Hospital') ?>">BUY  &  SELL (INSTRUMENTS)</a>
                                    </li>
                                    <li>
                                        <a href="<?= base_url('front/Register/doctors') ?>">SUBMIT SURGICAL VIDEOS</a>
                                    </li>
                                    <li>
                                        <a href="<?= base_url('front/Register/consultant') ?>">CONFERENCES / WORKSHOPS</a>
                                    </li>
									<li>
                                        <a href="<?= base_url('front/Register/consultant') ?>">Other</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="blog-details-recent">
                                <h3>Recent Blogs</h3>
                                <ul>
                                    <li>
                                        <img src="<?php bs() ?>assets/img/blog/3.jpg" alt="Recent">
                                        <a href="blog-details.html">World AIDS Day, designated on 1 December.</a>
                                        <ul>
                                            <li>
                                                <a href="#">
                                                    <i class="icofont-businessman"></i>
                                                Admin
                                                </a>
                                            </li>
                                            <li>
                                                <i class="icofont-calendar"></i>
                                                Jan 03, 2020
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <img src="<?php bs() ?>assets/img/blog/4.jpg" alt="Recent">
                                        <a href="blog-details.html">World AIDS Day, designated on 1 December.</a>
                                        <ul>
                                            <li>
                                                <a href="#">
                                                    <i class="icofont-businessman"></i>
                                                Admin
                                                </a>
                                            </li>
                                            <li>
                                                <i class="icofont-calendar"></i>
                                                Jan 03, 2020
                                            </li>
                                        </ul>
                                    </li>
                                 
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Sign Up -->

<script>
    $(document).ready(function() {
          
    });

    function GetCity(state_id){
        $.ajax({
            url:'<?= base_url('front/home/get_city_by_state'); ?>',
            data:{'state_id':state_id},
            type:'post',
            dataType:'json',
            success:function(res){
                var content = "";
                $.each(res, function(k, v){
                    content += "<option value='"+ v.city_id +"'>"+ v.city_name +"</option>";
                });
                $("#reg_city").html(content);
            }
        });
    }
</script>