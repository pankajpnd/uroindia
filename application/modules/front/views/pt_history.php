<!-- Sign Up -->
        <div class="signup-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-9 ptb-10">
                        <div class="signup-item" style="max-width:90%;">
                            <div class="signup-head">
                                <h2>Patient Medical History</h2>
                            </div>
                            <div class="signup-form">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <form action="<?= base_url('front/register/update_patient_history') ?>" method="post">
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <i class="icofont-ui-building"></i>
                                                    <label>Complaints / Symptoms</label>
                                                    <textarea rows="3" name="mhis_sympt" class="form-control" placeholder="Enter Complaints / Symptoms" ></textarea>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <i class="icofont-ui-building"></i>
                                                    <label>Treatment Taken</label>
                                                    <textarea rows="3" name="mhis_treat" class="form-control" placeholder="Enter Which Treatment Yoau have Taken" ></textarea>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <i class="icofont-ui-building"></i>
                                                    <label>Ask Your Query</label>
                                                    <textarea rows="3" name="mhis_query" class="form-control" placeholder="Enter Ask Your Query" ></textarea>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="text-center">
                                                    <button type="submit" class="btn signup-btn">Sign Up</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div><br>
                                    <div class="col-lg-12">
                                        <form action="<?= base_url('front/register/update_patient_history') ?>" method="post">
                                            <div class="col-lg-12">
                                                <h4>Patient Urology Reports</h4><hr>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <select name="report_type" class="form-control" required>
                                                        <option value="">Select Report Type</option>
                                                        <option value="mhis_patho">Pathological Reports</option>
                                                        <option value="mhis_radio">Radiological Reports</option>
                                                        <option value="mhis_other">Other Reports</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <input type="file" name="report_image" class="form-control" placeholder="Select Image" >
                                            </div>
                                            <div class="col-lg-2">
                                                <button type="button" class="btn signup-btn">Upload</button>
                                            </div>  
                                            <div class="col-lg-2">
                                                <button type="button" class="btn btn-lg btn-info">View</button>
                                            </div> 
                                        </form>                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="blog-details-item">
                            <div class="blog-details-category ptb-10">
                                <h3>Register</h3>
                                <ul>
                                    <li>
                                        <a href="#">Hospital Registration</a>
                                    </li>
                                    <li>
                                        <a href="#">Doctor's Registration</a>
                                    </li>
                                    <li>
                                        <a href="#">Other Registration</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="blog-details-recent">
                                <h3>Recent Blogs</h3>
                                <ul>
                                    <li>
                                        <img src="assets/img/blog/3.jpg" alt="Recent">
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
                                        <img src="assets/img/blog/4.jpg" alt="Recent">
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
                                        <img src="assets/img/blog/5.jpg" alt="Recent">
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