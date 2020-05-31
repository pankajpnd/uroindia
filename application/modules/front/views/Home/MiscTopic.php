<section class="blog-area pt-50 " style="background-color: #ffffff;padding-bottom:0px">
            <div class="container">
                
                <div class="row">
                    <div class="col-sm-6 col-lg-4 wow fadeInUp" data-wow-delay=".3s">
                        <?php foreach($this->MiscTopic->getMiscTopic('interview') as $ms){;?>
                        <div class="blog-item">
                            <div class="blog-top">
                                <a href="#">
                                    <img src="<?php echo bs().$ms->misc_image;?>" alt="Blog" height="180px">
                                </a>
                            </div>
                            <div class="blog-bottom">
                                <h3>
                                    <a href="#"><?php echo $ms->misc_title;?></a>
                                </h3>
                                <p><?php echo substr($ms->misc_desc,0,125);?></p>
                                <ul>
                                    <li>
                                        <a href="#">
                                            Read More
                                            <i class="icofont-long-arrow-right"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
					<?php } ?>
                    </div>
                    <div class="col-sm-6 col-lg-4 wow fadeInUp" data-wow-delay=".5s">
                        <?php foreach($this->MiscTopic->getMiscTopic('healthtip') as $ms){;?>
                        <div class="blog-item">
                            <div class="blog-top">
                                <a href="#">
                                    <img src="<?php echo bs().$ms->misc_image;?>" alt="Blog" height="180px">
                                </a>
                            </div>
                            <div class="blog-bottom">
                                <h3>
                                    <a href="#"><?php echo $ms->misc_title;?></a>
                                </h3>
                                <p><?php echo substr($ms->misc_desc,0,125);?></p>
                                <ul>
                                    <li>
                                        <a href="#">
                                            Read More
                                            <i class="icofont-long-arrow-right"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
					<?php } ?>
                    </div>
                    <div class="col-sm-6 offset-sm-3 offset-lg-0 col-lg-4 wow fadeInUp" data-wow-delay=".7s">
                        <?php foreach($this->MiscTopic->getMiscTopic('advert') as $ms){;?>
                        <div class="blog-item">
                            <div class="blog-top">
                                <a href="#">
                                    <img src="<?php echo bs().$ms->misc_image;?>" alt="" height="180px">
                                </a>
                            </div>
                            <div class="blog-bottom">
                                <h3>
                                    <a href="#"><?php echo $ms->misc_title;?></a>
                                </h3>
                                <p><?php echo substr($ms->misc_desc,0,125);?></p>
                                <ul>
                                    <li>
                                        <a href="#">
                                            Read More
                                            <i class="icofont-long-arrow-right"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
					<?php } ?>
                    </div>
                </div>
            </div>
        </section>