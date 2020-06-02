<!-- Sign Up -->
<?php foreach ($profile as $val) { } ?>
        <div class="signup-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-9 ptb-10">
                        <div class="signup-item" style="max-width:90%;">
                            <div class="signup-head">
                                <h2>Register Doctors</h2>
                                <p>Already have an account? 
                                    <a href="#">Log In</a>
                                </p>
                            </div>
                            <div class="signup-form">
                                <form action="<?= base_url('front/DoctorProfile/update_doctor') ?>" method="post" enctype="multipart/form-data">
                                    
                                    <div class="row" style="background-color:#e7edf5">
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Doctor Name</label>
                                                <input type="text" name="reg_name" class="form-control" placeholder="Enter Doctor Name" required value="<?php echo $val->reg_name; ?>">
                                            </div>
                                        </div>
                                        <div class="col-lg-1" hidden>
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Registration Type</label>
                                                <select name="reg_type" class="form-control"  required>
                                                    <option value="1" <?php echo ($val->reg_type=='1')?'selected':''; ?>>Doctor</option>
                                                    <option value="2" <?php echo ($val->reg_type=='2')?'selected':''; ?>>Other</option>
                                                    <option value="3" <?php echo ($val->reg_type=='3')?'selected':''; ?>>Uroindia</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-2">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Date of Birth</label>
                                                <select name="reg_dob_day" class="form-control"  required>
                                                    <option value="0" selected>Day</option>
                                                    <?php for($i=1;$i<=31;$i++){?>
                                                    <option value="<?php echo $i;?>" <?php echo (date("d",strtotime($val->reg_dob))==sprintf("%02d",$i))?'selected':''; ?>><?php echo $i;?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-2">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>&nbsp;</label>
                                                <select name="reg_dob_month" class="form-control"  required>
                                                    <option value="0" selected>Month</option>
                                                    <?php for($i=1;$i<=12;$i++){?>
                                                    <option value="<?php echo $i;?>"<?php echo (date("m",strtotime($val->reg_dob))==sprintf("%02d",$i))?'selected':''; ?>><?php echo $i;?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-2">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>&nbsp;</label>
                                                <select name="reg_dob_year" class="form-control"  required>
                                                    <option value="0" selected>Year</option>
                                                    <?php for($i=1960;$i<=date('Y');$i++){ ?>
                                                    <option value="<?php echo $i;?>" <?php echo (date("Y",strtotime($val->reg_dob))==$i)?'selected':''; ?>><?php echo $i;?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Gender</label>
                                                <select class="form-control" name="reg_gender" id="exampleFormControlSelect1" required>
                                                    <option value="">Choose Gender</option>
                                                    <option value="1" <?php echo ($val->reg_gender=='1')?'selected':''; ?>>Male</option>
                                                    <option value="2" <?php echo ($val->reg_gender=='2')?'selected':''; ?>>Female</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="row mt-20" style="background-color:#e7edf5">
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Designation</label>
                                                <input type="text" name="reg_desig" class="form-control" placeholder="Designation" required value="<?php echo $val->reg_desig; ?>">
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Category</label>
                                                <select class="form-control" name="reg_job" id="exampleFormControlSelect1" required>
                                                    <option value="">Choose Previouse Job Type</option>
                                                    <option value="1" <?php echo ($val->reg_job=='1')?'selected':''; ?>>Private</option>
                                                    <option value="2" <?php echo ($val->reg_job=='2')?'selected':''; ?>>Government</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Degree</label>
                                                <select name="reg_degree" class="form-control"  required>
                                                    <option value="">Select Degree</option>
                                                    <?php foreach($degree as $deg){ ?>
                                                    <option value="<?php echo $deg->deg_id; ?>" <?php echo ($val->reg_degree==$deg->deg_id)?'selected':''; ?>><?php echo $deg->deg_name; ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Year</label>
                                                <input type="number" name="reg_year" class="form-control" placeholder="Enter Year" required value="<?php echo $val->reg_year; ?>">
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Speciality</label>
                                                <select name="reg_specialty" class="form-control"  >
                                                    <option value="">Select Speciality</option>
                                                    <?php foreach($specialty as $spec){ ?>
                                                    <option value="<?php echo $spec->spec_id; ?>" <?php echo ($val->reg_degree==$spec->spec_id)?'selected':''; ?>><?php echo $spec->spec_name; ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Registration No.</label>
                                                <input type="text" name="reg_regno" value="<?php echo $val->reg_regno; ?>" class="form-control" placeholder="Enter Registration No." required>
                                            </div>
                                        </div>
                                        <div class="col-lg-8">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Working</label>
                                                <select name="reg_workin" class="form-control"  >
                                                    <option value="">Select Working</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="row mt-20" style="background-color:#e7edf5">
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>State</label>
                                                <select name="reg_state" class="form-control" onchange="GetCity(this.value,'')" required>
                                                    <option value="">Select State</option>
                                                    <?php foreach($states as $state){ ?>
                                                    <option value="<?php echo $state->state_id; ?>" <?php echo ($val->reg_state==$state->state_id)?'selected':''; ?>><?php echo $state->state_name; ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>City</label>
                                                <select name="reg_city" id="reg_city" class="form-control" required>
                                                    <option value="">Select City</option>
                                                    <?php foreach($cities as $city){ ?>
                                                    <option value="<?php echo $city->city_id; ?>" <?php echo ($val->reg_city==$city->city_id)?'selected':''; ?>><?php echo $city->city_name; ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>                  
                                    </div>


                                    <div class="row mt-20" style="background-color:#e7edf5">
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Mobile Number</label>
                                                <input type="text" name="reg_mob" value="<?php echo $val->reg_mob; ?>" class="form-control" placeholder="Enter Mobile number" required readonly>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Email</label>
                                                <input type="text" name="reg_email" class="form-control" value="<?php echo $val->reg_email; ?>" placeholder="Enter Email" required readonly>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Land Line No.</label>
                                                <input type="text" name="reg_phon" class="form-control" value="<?php echo $val->reg_phon; ?>" placeholder="Enter Land Line No." required>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Website</label>
                                                <input type="text" name="reg_webs" value="<?php echo $val->reg_webs; ?>" class="form-control" placeholder="Enter Website" >
                                            </div>
                                        </div>                    
                                    </div>

                                    <div class="row mt-20" style="background-color:#e7edf5">
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Upload Profile Pic (Optional) :</label>
                                            </div>
                                        </div>             
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <input type="file" name="reg_image" style="border:none;background-color:#e7edf5" class="form-control" >
                                            </div>
                                        </div>             
                                    </div>

                                    <div class="row mt-20" style="background-color:#e7edf5">
                                        <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group" style="margin-left:15px">
                                            <input type="checkbox" /> I agree to the Terms of Use and Privacy Policy.
                                            </div>
                                        </div>
                                        </div>
                                        
                                       
                                        <div class="col-lg-12">
                                            <div class="text-center">
                                                <button type="submit" class="btn signup-btn">Update</button></br>
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
        //var state_id = '<?php //echo $val->reg_state; ?>';
        //var city_id = '<?php //echo $val->reg_city; ?>';
//        alert(city_id);
//         GetCity(state_id, city_id);
    });

    function GetCity(state_id, cid){
        $.ajax({
            url:'<?= base_url('front/home/get_city_by_state'); ?>',
            data:{'state_id':state_id},
            type:'post',
            dataType:'json',
            success:function(res){
                var content = "";
                $.each(res, function(k, v){
                    if(v.city_id==cid){
                        content += "<option value='"+ v.city_id +"' selected>"+ v.city_name +"</option>";
                    }else{
                        content += "<option value='"+ v.city_id +"'>"+ v.city_name +"</option>";
                    }
                });
                $("#reg_city").html(content);
            }
        });
    }
</script>