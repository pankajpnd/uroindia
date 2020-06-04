<!-- Sign Up -->
        <div class="signup-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-9 ptb-10">
                        <div class="signup-item" style="max-width:90%;">
                            <div class="signup-head">
                                <h2>Patient Queries</h2>
                            </div>
                            <div class="signup-form">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <th>S No.</th>
                                        <th>Patient Name</th>
                                        <th>Query</th>
                                        <th>Date</th>
                                        <th>Action</th>
                                    </thead>
                                    <tbody>
                                        <?php $c =0; foreach ($queries as $query) { $c++; 
                                        $patient = $this->common_model->get_by_multiple_con_single('users', array('id='=>$query->qry_user_id));
                                        ?>
                                        <tr>
                                            <td><?php echo $c; ?></td>                                             
                                            <td><?php echo $patient->first_name; ?></td>                                             
                                            <td><?php echo $query->qry_desc; ?></td>                                             
                                            <td><?php echo $query->qry_entrydt; ?></td>                                             
                                            <td></td>                                             
                                        </tr>
                                        <?php } ?>
                                    </tbody>
                                </table>
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
