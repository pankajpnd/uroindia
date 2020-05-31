<!-- Sign Up -->
        <div class="signup-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-9 ptb-10">
                        <div class="signup-item" style="max-width:90%;">
                            <div class="signup-head">
                                <h2>Surgical Videos</h2>
                            </div>
                            <div class="signup-form">
                                <form action="<?= base_url('front/DoctorProfile/insert_videos') ?>" method="post" enctype="multipart/form-data">
                                    
                                    <div class="row" style="background-color:#e7edf5">
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Category</label>
                                                <select name="vid_cat" class="form-control" required>
                                                    <option value="" selected>Select Category</option>
                                                    <option value="Loproscopic Surgery">Loproscopic Surgery</option>
                                                    <option value="Endourology">Endourology</option>
                                                    <option value="Open Surgery">Open Surgery</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Video Title</label>
                                                <input type="text" name="vid_title" class="form-control" placeholder="Enter Video Title" required>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Upload Video</label>
                                                <textarea name="vid_link" class="form-control" placeholder="Paste Embedded Code Here" required></textarea>
                                                <a href="#" target="_blank" style="font-size: 13px;font-weight: bold;">» How to get embed code of a Youtube video From Youtube Chanal ?</a>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Description (Optional)</label>
                                                <textarea name="vid_desc" class="form-control" placeholder="Enter Details" ></textarea>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <i class="icofont-ui"></i>
                                                <label>Status</label>
                                                <select name="vid_status" class="form-control"  required>
                                                    <option value="">Select</option>
                                                    <option value="1" >Show</option>
                                                    <option value="2" >Hide</option>
                                                </select>
                                            </div>
                                        </div>         
                                    </div>
                                    <div class="row mt-20" style="background-color:#e7edf5">
                                        <div class="col-lg-12">
                                            <div class="text-center">
                                                <button type="submit" class="btn signup-btn">Post Job</button></br>
                                            </div>
                                        </div>
                                        

                                    </div>
                                </form>
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
          
    });
</script>