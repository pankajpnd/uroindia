 <!-- About -->
        <div class="about-area pt-100 pb-70">
            <div class="container">
                
				<div class="row align-items-center">
                    <div class="col-lg-12">
							<?php foreach($this->MiscTopic->getWhyUs('whyus',1) as $ms){;?>
							<h2><?php echo $ms->misc_title;?></h2>
							<?php echo $ms->misc_desc;?>
							<?php } ?>
							
                    </div>
                   
                </div>
            </div>
        </div>
        <!-- End About -->
