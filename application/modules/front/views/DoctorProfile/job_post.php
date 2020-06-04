<!-- Sign Up -->
        <div class="signup-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-9 ptb-10">
                        <div class="signup-item" style="max-width:90%;">
                            <div class="signup-head">
                                <h2>Post Job</h2>
                            </div>
                            <div class="signup-form">
                                <form action="<?= base_url('front/DoctorProfile/insert_jobpost') ?>" method="post" enctype="multipart/form-data">
                                    
                                    <div class="row" style="background-color:#e7edf5">
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Job Post For</label>
                                                <select name="jpst_for" class="form-control" onchange="PostFor(this.value)" required>
                                                    <option value="All" selected>All</option>
                                                    <option value="Doctor">Doctor</option>
                                                    <option value="Nurse">Nurse</option>
                                                    <option value="Paramedical">Paramedical</option>
                                                    <option value="Administration">Administration</option>
                                                    <option value="Others">Others</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-4" id="jpst_spl_div" style="display: none;">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Specialty</label>
                                                <input type="text" name="jpst_spl" class="form-control" placeholder="Doctor Specialty" required>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Job Title</label>
                                                <input type="text" name="jpst_title" class="form-control" placeholder="Enter Job Title" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row" style="background-color:#e7edf5">
                                        <div class="col-lg-3">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Candidate Qualification</label>
                                                <select class="form-control" name="jpst_qual" id="jpst_qual" required>
                                                    <option value="">Select</option>
                                                    <option value="Under Graduate">Under Graduate</option>
                                                    <option value="Post Graduate">Post Graduate</option>
                                                    <option value="Doctorate">Doctorate / PHD</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-3">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Relative Job Experience</label>
                                                <input type="text" name="jpst_minexp" class="form-control" placeholder="Min Experience" required>
                                            </div>
                                        </div>
                                        <div class="col-lg-3">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>&nbsp;</label>
                                                -&emsp;<input type="text" name="jpst_maxexp" class="form-control" placeholder="Max Experience" required>
                                            </div>
                                        </div>
                                        <div class="col-lg-3">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Salary</label>
                                                <select name="jpst_sal" class="form-control" onchange="SalRange(this.value)" required>
                                                    <option value="">Select</option>
                                                    <option value="Negotiable" >Negotiable</option>
                                                    <option value="Range" >Select Range</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-6" style="display: none;" id="sal_range">
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="form-group">
                                                        <i class="icofont-ui"></i>
                                                        <label>Enter Salary Range Annual</label>
                                                        <input type="text" name="jpst_minsal" class="form-control" placeholder="Min Salary" required>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                    <div class="form-group">
                                                        <i class="icofont-ui"></i>
                                                        <label>&nbsp;</label>
                                                        -&emsp;<input type="text" name="jpst_maxsal" class="form-control" placeholder="Max Salary" required>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>No of Post</label>
                                                <input type="number" name="jpst_count" class="form-control" placeholder="No of Posts" required>
                                            </div>
                                        </div>          
                                    </div>
                                    <div class="row mt-20" style="background-color:#e7edf5">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Other Description</label>
                                                <textarea name="jpst_desc" class="form-control" placeholder="Other Description" required></textarea>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="text-center">
                                                <button type="submit" class="btn signup-btn">Post Job</button></br>
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
                            <h4>&nbsp;</h4>
                                <ul>
                                    <li>
                                        <a href="<?= base_url('front/DoctorProfile/patient_queries') ?>">Patient Queries</a>
                                    </li>
                                    <li>
                                        <a href="<?= base_url('front/DoctorProfile/jobpost') ?>">Job Post</a>
                                    </li>
                                    <li>
                                        <a href="<?= base_url('front/DoctorProfile/surgicalvid') ?>">Surgical Videos</a>
                                    </li>
                                    <li>
                                        <a href="<?= base_url('front/DoctorProfile/doc_profile') ?>">Profile</a>
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

    function PostFor(value){
        if(value=='Doctor'){
            $("#jpst_spl_div").show();
        }else{
            $("#jpst_spl_div").hide();
        }
    }

    function SalRange(value){
        if(value=='Range'){
            $("#sal_range").show();
        }else{
            $("#sal_range").hide();
        }
    }
</script>