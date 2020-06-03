
        <!-- Doctors -->
        <section class="doctors-area pb-50">
            <div class="container">
                <div class="section-title-two">
                    <h2>Hospitals</h2>
                </div>
                <div class="row">
					<?php foreach($this->Hospital_model->get_Reg_Hospitals(4) as $hosp){;?>
                    <div class="col-sm-4 col-lg-3 wow fadeInUp" data-wow-delay=".3s">
                        <div class="doctor-item">
                            <div class="doctor-top">
								<img src="<?php echo bs().$hosp->hosp_image;?>" alt="Doctor" height="160px">
                               <!-- <a href="appointment.html">Consult Online</a>-->
                            </div>
                            <div class="doctor-bottom">
                                <h3>
                                    <a href="doctor-details.html"><?php echo $hosp->hosp_name;?></a>
                                </h3>
                                <span><?php echo $this->Common_model->findfield('mst_city','city_id',$hosp->hosp_city,'city_name');?></span>
                            </div>
                        </div>
                    </div>
					<?php } ?>
                </div>
            </div>
        </section>
        <!-- End Doctors -->

