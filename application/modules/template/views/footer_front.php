<!-- Footer -->
<div class="clear" style="clear: both;"></div><br><br><br>
        <footer class="pb-70 ">

            

            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-lg-4">
                        <div class="footer-item">
                            <div class="footer-contact">
                                <h3>Contact Us</h3>
                                <ul>
                                    <li>
                                        <i class="icofont-ui-message"></i>
                                        <a href="#"><?php echo @$email[0]->misc_title;?></a>
                                    </li>
                                    <li>
                                        <i class="icofont-stock-mobile"></i>
                                        <a href="tel:+07554332322">Call : +91-<?php echo @$contact[0]->misc_title;?></a>
                                    </li>
                                    <li>
                                        <i class="icofont-location-pin"></i>
                                        <?php echo @$address[0]->misc_title;?>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-2">
                        <div class="footer-item">
                            <div class="footer-quick">
                                <h3>Quick Links</h3>
                                <ul>
                                    <li>
                                        <a href="<?= base_url('front/AboutUs') ?>">About us</a>
                                    </li>
                                    <li>
                                        <a href="#">Our Team</a>
                                    </li>
                                    <li>
                                        <a href="#">Search Urologist</a>
                                    </li>
                                    <li>
                                        <a href="#">Submit Resume</a>
                                    </li>
                                    <li>
                                        <a href="#">Search Jobs</a>
                                    </li>
                                    <li>
                                        <a href="#">Contact us</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <div class="footer-item">
                            <div class="footer-quick">
                                <h3>Our Services</h3>
                                <ul>
                                    <li>
                                        <a href="#">About Urology</a>
                                    </li>
                                    <li>
                                        <a href="#">Men Heath</a>
                                    </li>
                                    <li>
                                        <a href="#">Faq</a>
                                    </li>
                                    <li>
                                        <a href="#">Health Tips</a>
                                    </li>
                                    <li>
                                        <a href="#">Join Us</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <div class="footer-item">
                            <div class="footer-feedback">
                                <h3>Feedback</h3>
                                <form>
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Name">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Phone">
                                    </div>
                                    <div class="form-group">
                                        <textarea class="form-control" id="your_message" rows="5" placeholder="Message"></textarea>
                                    </div>
                                    <div class="text-left">
                                        <button type="submit" class="btn feedback-btn">SUBMIT</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- End Footer -->

        <!-- Copyright -->
        <div class="copyright-area">
            <div class="container">
                <div class="copyright-item">
                    <p>Copyright ©2020 Uroindia </p>
                </div>
            </div>
        </div>
        <!-- End Copyright -->


        <!-- Essential JS -->
        <script src="<?php bs() ?>assets/js/jquery.min.js"></script>
        <script src="<?php bs() ?>assets/js/popper.min.js"></script>
        <script src="<?php bs() ?>assets/js/bootstrap.min.js"></script>
        <!-- Owl Carousel JS -->
        <script src="<?php bs() ?>assets/js/owl.carousel.min.js"></script>
        <!-- Meanmenu JS -->
        <script src="<?php bs() ?>assets/js/jquery.meanmenu.js"></script>
        <!-- Counter JS -->
        <script src="<?php bs() ?>assets/js/jquery.counterup.min.js"></script>
        <script src="<?php bs() ?>assets/js/waypoints.min.js"></script>
        <!-- Slider Slider JS -->
        <script src="<?php bs() ?>assets/js/slick.min.js"></script>
        <!-- Magnific Popup -->
        <script src="<?php bs() ?>assets/js/jquery.magnific-popup.min.js"></script>
        <!-- Wow JS -->
        <script src="<?php bs() ?>assets/js/wow.min.js"></script>
        <!-- Form Ajaxchimp JS -->
		<script src="<?php bs() ?>assets/js/jquery.ajaxchimp.min.js"></script>
		<!-- Form Validator JS -->
		<script src="<?php bs() ?>assets/js/form-validator.min.js"></script>
		<!-- Contact JS -->
		<script src="<?php bs() ?>assets/js/contact-form-script.js"></script>
        <!-- Map JS -->
        <script src="<?php bs() ?>assets/js/map.js"></script>
        <!-- Custom JS -->
        <script src="<?php bs() ?>assets/js/custom.js"></script>
		 <!-- Start of REVE Chat Script-->
		 <script type='text/javascript'>
		 window.$_REVECHAT_API || (function(d, w) { var r = $_REVECHAT_API = function(c) {r._.push(c);}; w.__revechat_account='9061755';w.__revechat_version=2;
		   r._= []; var rc = d.createElement('script'); rc.type = 'text/javascript'; rc.async = true; rc.setAttribute('charset', 'utf-8');
		   rc.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'static.revechat.com/widget/scripts/new-livechat.js?'+new Date().getTime();
		   var s = d.getElementsByTagName('script')[0]; s.parentNode.insertBefore(rc, s);
		 })(document, window);
		</script>
		<!-- End of REVE Chat Script -->
    </body>
</html>