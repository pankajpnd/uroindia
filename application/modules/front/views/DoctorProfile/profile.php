<?php foreach ($profile as $val) { } ?>

<div class="page-title-area page-title-three">
    <div class="d-table">
        <div class="d-table-cell">
            <div class="page-title-item-two">
                <h2><?php echo $val->reg_name; ?> &emsp;<a href="<?= base_url('front/DoctorProfile/edit_detail') ?>"><i class="icofont-livejournal"></i></a></h2>
                <h3><?php echo $this->Common_model->findfield('mst_specialty', 'spec_id', $val->reg_specialty, 'spec_name'); ?></h3>
                <p><?php echo $this->Common_model->findfield('mst_degree', 'deg_id', $val->reg_degree, 'deg_name'); ?></p>
            </div>
        </div>
    </div>
</div>
<div class="doctor-details-area pb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-5">
                <div class="doctor-details-item doctor-details-left">
                    <img src="<?php echo bs().$val->reg_image; ?>" alt="Doctor">
                    <div class="doctor-details-contact">
                        <h3>Contact info</h3>
                        <ul>
                            <li>
                                <i class="icofont-ui-call"></i>
                                Call : +91 <?php echo $val->reg_mob; ?>
                            </li>
                            <li>
                                <i class="icofont-ui-message"></i>
                                <?php echo $val->reg_email; ?>
                            </li>
                            <li>
                                <i class="icofont-location-pin"></i>
                                <?php echo $this->Common_model->findfield('mst_state', 'state_id', $val->reg_state, 'state_name'); ?>, <?php echo $this->Common_model->findfield('mst_city', 'city_id', $val->reg_city, 'city_name'); ?>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-7">
                <div class="doctor-details-item">
                    <div class="doctor-details-right">
                        <div class="doctor-details-biography">
                            <h3>Biography</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p><br>
                            <p>Risus commodo viverra maecenas accumsan lacus vel facilisis.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
                        </div>
                        <div class="doctor-details-biography">
                            <h3>Education</h3>
                            <ul>
                                <li><?php echo $this->Common_model->findfield('mst_degree', 'deg_id', $val->reg_degree, 'deg_name'); ?> (<?php echo $val->reg_regno; ?>)</li>
                                <!--<li>Master of Neoro Surgery  at University of Mediserv (2002)</li>
                                <li>MBBS degree in Neurosciences at University of Mediserv (2002)</li>
                                <li>Higher Secondary Certificate at Mediserv collage  (1991)</li>-->
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>