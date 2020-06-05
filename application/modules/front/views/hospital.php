<!-- Sign Up -->
        <div class="signup-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8 ptb-10">
                        <div class="signup-item" style="max-width:90%;">
                            <div class="signup-head">
                                <h2>Register Hospital</h2>
                                <p>Already have an account? 
                                    <a href="#">Log In</a>
                                </p>
                            </div>
							<?php if($this->session->flashdata('success')){ ?>
							<div class="row" style="background-color:#7ff387;border-radius:5px">
								<div class="col-lg-12">
									<p style="padding:10px"><?php echo $this->session->flashdata('success');?></p>
								</div>
                            </div>
								
							<?php } ?>
							
                            <div class="signup-form">
                                <form action="<?= base_url('front/hospital/register_hospital') ?>" method="post" enctype="multipart/form-data">
                                    <div class="row" style="background-color:#e7edf5">
                                        <div class="col-lg-12">
                                            <legend>Hospital Detail</legend>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui-building"></i>
                                                <label>Hospital Name</label>
                                                <input type="text" name="hosp_name" class="form-control" placeholder="Enter Hospital Name" required>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Hospital Code</label>
                                                <input type="text" name="hosp_code" class="form-control" placeholder="Enter Hospital Code" required>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Hospital Type</label>
                                                <select name="hosp_type" class="form-control"  required>
                                                    <option value="">Select Hospital Type</option>
                                                    <option value="Government">Government</option>
                                                    <option value="Medical college">Medical college </option>
                                                    <option value="Private corporate">Private corporate</option>
                                                    <option value="Private">Private </option>
                                                    <option value="Nursing home">Nursing home</option>
                                                    <option value="Clinic">Clinic</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>No of Beds</label>
                                                <select name="hosp_type" class="form-control"  required>
                                                    <option value=""> No. of  Beds</option>
                                                    <option value="Upto 100">Upto 100</option>
                                                    <option value="100-300">100-300 </option>
                                                    <option value="more than 300">more than 300</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mt-20" style="background-color:#e7edf5">
                                        <div class="col-lg-12">
                                            <legend>FOR OFFICE USE ONLY(THIS INFORMATION WILL NOT BE SHARED PUBLICILY)</legend>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Key Person Name</label>
                                                <input type="text" name="hosp_autho" class="form-control" placeholder="Enter Key Person Name" required>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Designation</label>
                                                <select name="hosp_desig" class="form-control"  required>
                                                    <option value="">Select Designation</option>
                                                    <option value="Government">Government</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Contact No.</label>
                                                <input type="text" name="hosp_mbn" class="form-control" placeholder="Enter Contact No" required>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Email</label>
                                                <input type="text" name="hosp_email" class="form-control" placeholder="Enter Email" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mt-20" style="background-color:#e7edf5">
                                        <div class="col-lg-12">
                                            <legend>HOSPITAL ADDRESS DETAILS</legend>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>State</label>
                                                <select name="hosp_state" class="form-control" onchange="GetCity(this.value)" required>
                                                    <option value="">Select State</option>
                                                    <?php foreach($states as $state){ ?>
                                                    <option value="<?php echo $state->state_id; ?>"><?php echo $state->state_name; ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>City</label>
                                                <select name="hosp_city" id="hosp_city" class="form-control" required>
                                                    <option value="">Select City</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Locality</label>
                                                <input type="text" name="hosp_vilage" class="form-control" placeholder="Enter Locality" required>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Hospital Address</label>
                                                <textarea name="hosp_addr" class="form-control" placeholder="Enter Hospital Address" required></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mt-20" style="background-color:#e7edf5">
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Postal Code</label>
                                                <input type="text" name="hosp_pin" class="form-control" placeholder="Enter Postal Code" required>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Land-Line Number</label>
                                                <input type="text" name="hosp_phon" class="form-control" placeholder="Enter Land Line Number" required>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Mobile Number</label>
                                                <input type="text" name="hosp_hmob" class="form-control" placeholder="Enter Mobile number" required>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Emergency Helpline</label>
                                                <input type="text" name="hosp_hemerg" class="form-control" placeholder="Enter Emergency Helpline " required>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Ambulance No.</label>
                                                <input type="text" name="hosp_ambu" class="form-control" placeholder="Enter Ambulance Number" required>
                                            </div>
                                        </div>              
                                    </div>
                                    <div class="row mt-20" style="background-color:#e7edf5">
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Hospital Email</label>
                                                <input type="text" name="hosp_hemail" class="form-control" placeholder="Enter Hospital Email" required>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Hospital Website</label>
                                                <input type="text" name="hosp_hwebs" class="form-control" placeholder="Enter Hospital Wbsite" required>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Google Map Location</label>
                                                <input type="text" name="hosp_gmap" class="form-control" placeholder="Enter Google Map Location" required>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Hospital Image</label>
                                                <input type="file" name="hosp_image" class="form-control" placeholder="Select Image" required>
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
                                        <div class="col-lg-12">
                                            <div class="text-center">
                                                <button type="submit" class="btn signup-btn">Register</button><br>
                                            </div>
                                        </div>                  
                                    </div>
                                </form><br><br>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="blog-details-item">
                            <div class="blog-details-category ptb-10">
                                <h3>Register</h3>
                                <ul>
                                    <li>
                                        <a href="<?= base_url('front/Hospital') ?>">Hospital Registration</a>
                                    </li>
                                    <li>
                                        <a href="<?= base_url('front/Register/doctors') ?>">Doctor's Registration</a>
                                    </li>
                                    <li>
                                        <a href="<?= base_url('front/Register/consultant') ?>">Consultant Registration</a>
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
                                    <li>
                                        <img src="<?php bs() ?>assets/img/blog/5.jpg" alt="Recent">
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
                $("#hosp_city").html(content);
            }
        });
    }
</script>