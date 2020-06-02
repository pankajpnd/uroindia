 <!-- About -->
        <div class="about-area pt-100 pb-70">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-4">
                        <div class="about-item">
                            <div class="about-left">
							<?php foreach($this->MiscTopic->getAboutUs('aboutus',3) as $ms){?>
							<img src="<?php echo bs().$ms->misc_image; ?>" alt="About" height="300px">
							<?php } ?>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="about-item about-right">
                            <img src="<?php bs() ?>assets/img/home-one/5.png" alt="About">
                            <h2>About Us</h2>
                            <?php foreach($this->MiscTopic->getAboutUs('aboutus',1) as $ms){;?>
							<?php echo $ms->misc_desc;?>
							<?php } ?>
							
                           
                        </div>
                    </div>
                </div>
				<div class="row align-items-center">
                    <div class="col-lg-12">
                       
							<?php foreach($this->MiscTopic->getAboutUs('aboutus',2) as $ms){;?>
							<?php echo $ms->misc_desc;?>
							<?php } ?>
							
                    </div>
                   
                </div>
            </div>
        </div>
        <!-- End About -->
