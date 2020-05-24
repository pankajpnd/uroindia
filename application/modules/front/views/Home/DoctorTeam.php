
        <!-- Doctors -->
        <section class="doctors-area pb-50">
            <div class="container">
                <div class="section-title-two">
                    <span>Doctors</span>
                    <h2>Meet Our Doctors </h2>
                </div>
                <div class="row">
					<?php foreach($this->Doctor_team_model->getDoctorTeam(3) as $dr){;?>
                    <div class="col-sm-6 col-lg-4 wow fadeInUp" data-wow-delay=".3s">
                        <div class="doctor-item">
                            <div class="doctor-top">
                                <img src="<?php bs() ?>assets/img/doctor/doctor_blank_2.png" alt="Doctor" height="350px">
                                <a href="appointment.html">Consult Online</a>
                            </div>
                            <div class="doctor-bottom">
                                <h3>
                                    <a href="doctor-details.html"><?php echo $dr->reg_name;?></a>
                                </h3>
                                <span><?php echo $dr->reg_degree;?></span>
                                <span><?php echo $dr->reg_specialty;?></span>
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

