<div class="row">
<?php foreach($doctors as $doc){ ?>
    <div class="col-sm-3 col-lg-3 wow fadeInUp" data-wow-delay=".3s">
        <div class="doctor-item">
            <div class="doctor-top">
                <img src="<?php echo bs().$doc->reg_image; ?>" alt="Doctor"  height="280px">
                <a href="appointment.html">Get Appointment</a>
            </div>
            <div class="doctor-bottom">
                <h3>
                    <a href="<?= base_url('front/DoctorProfile') ?>"><?php echo $doc->reg_name;?></a>
                </h3>
                <span><?php echo $this->Common_model->findfield('mst_degree','deg_id',$doc->reg_degree,'deg_name');?></span>
                <span><?php echo $this->Common_model->findfield('mst_specialty','spec_id',$doc->reg_specialty,'spec_name');?></span>
            </div>
        </div>
    </div>
<?php } ?>
</div>