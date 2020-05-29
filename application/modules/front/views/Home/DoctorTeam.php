
        <!-- Doctors -->
        <section class="doctors-area pb-50">
            <div class="container">
                <div class="section-title-two">
                    <span>Doctors</span>
                    <h2>Meet Our Doctors </h2>
                </div>
                <div class="row">
					<?php foreach($this->Doctor_team_model->getDoctorTeam(4) as $dr){;?>
                    <div class="col-sm-4 col-lg-3 wow fadeInUp" data-wow-delay=".3s">
                        <div class="doctor-item">
                            <div class="doctor-top">
                                <!--<img src="<?php bs() ?>assets/img/doctor/doctor3.jpg" alt="Doctor" height="280px">-->
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
                    
                </div>
                <div class="doctor-btn">
                    <a href="doctor.html">See All</a>
                </div>
            </div>
        </section>
        <!-- End Doctors -->

