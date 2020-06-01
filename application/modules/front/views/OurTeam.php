<!-- Doctors -->
        <section class="doctors-area doctors-area-two pt-100">
            <div class="doctor-shape">
                <img src="<?php bs() ?>assets/img/doctor/2.png" alt="Shape">
            </div>
            <div class="container">
                <div class="row">
                    <?php foreach($this->Doctor_team_model->getDoctorTeam(4) as $dr){;?>
                    <div class="col-sm-4 col-lg-3 wow fadeInUp" data-wow-delay=".3s">
                        <div class="doctor-item">
                            <div class="doctor-top">
								<img src="<?php echo bs().$dr->reg_image;?>" alt="Doctor" height="280px">
                               <!-- <a href="appointment.html">Consult Online</a>-->
                            </div>
                            <div class="doctor-bottom">
                                <h3>
                                    <a href="doctor-details.html"><?php echo $dr->reg_name;?></a>
                                </h3>
                                <span><?php echo $this->Common_model->findfield('mst_degree','deg_id',$dr->reg_degree,'deg_name');?></span>
                                <span><?php echo $this->Common_model->findfield('mst_specialty','spec_id',$dr->reg_specialty,'spec_name');?></span>
                            </div>
                        </div>
                    </div>
					<?php } ?>
                    <div class="col-sm-6 col-lg-4 wow fadeInUp" data-wow-delay=".7s">
                        <div class="blog-details-item">
                            <div class="blog-details-search">
                                <form>
                                    <input type="text" class="form-control" placeholder="Search">
                                    <button type="submit" class="btn blog-details-btn">
                                        <i class="icofont-search-1"></i>
                                    </button>
                                </form>
                            </div>
                            <div class="blog-details-recent">
                                <h3>Services</h3>
                                <ul>
                                    <li>
                                        <img src="<?php bs() ?>assets/img/blog/3.jpg" alt="Recent">
                                        <a href="blog-details.html">Buy & Sell Insturments</a>
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
                                        <a href="blog-details.html">Upload Surgical Videos</a>
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
                                        <a href="blog-details.html">Conferences / Workshops</a>
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
        </section>
        <!-- End Doctors -->