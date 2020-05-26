
        <!-- Page Title -->
        <div class="page-title-area page-title-five">
            <div class="d-table">
                <div class="d-table-cell">
                    <div class="page-title-item">
                        <h2>Contact Us</h2>
                        <ul>
                            <li>
                                <a href="index-2.html">Home</a>
                            </li>
                            <li>
                                <i class="icofont-simple-right"></i>
                            </li>
                            <li>Contact us</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Page Title -->

        <!-- Location -->
        <div class="location-area">
            <div class="container">
                <div class="row location-wrap">
                    <div class="col-sm-6 col-lg-4">
                        <div class="location-item">
                            <i class="icofont-location-pin"></i>
                            <h3>Location</h3>
                            <p>2108-267 Road Quadra,Toronto, Victiria Canada</p>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-4">
                        <div class="location-item">
                            <i class="icofont-ui-message"></i>
                            <h3>Email</h3>
                            <ul>
                                <li>hello@medsev.com</li>
                                <li>emailexample@name.com</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6 offset-sm-3 offset-lg-0 col-lg-4">
                        <div class="location-item">
                            <i class="icofont-ui-call"></i>
                            <h3>Phone</h3>
                            <ul>
                                <li>+07 5554 3332 322</li>
                                <li>+07 5554 3332 322</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Location -->

        <!-- Drop -->
        <section class="drop-area pt-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-7 p-0">
                        <div class="drop-item drop-img">
                            <div class="drop-left">
                                <h2>Drop your message for any info or question.</h2>
                                <form id="contactForm">
									<div class="row">
										<div class="col-sm-6 col-lg-6">
											<div class="form-group">
												<input type="text" name="name" id="name" class="form-control" required data-error="Please enter your name" placeholder="Name">
												<div class="help-block with-errors"></div>
											</div>
										</div>
			
										<div class="col-sm-6 col-lg-6">
											<div class="form-group">
												<input type="email" name="email" id="email" class="form-control" required data-error="Please enter your email" placeholder="Email">
												<div class="help-block with-errors"></div>
											</div>
										</div>
			
										<div class="col-sm-6 col-lg-6">
											<div class="form-group">
												<input type="text" name="phone_number" id="phone_number" required data-error="Please enter your number" class="form-control" placeholder="Phone">
												<div class="help-block with-errors"></div>
											</div>
										</div>
			
										<div class="col-sm-6 col-lg-6">
											<div class="form-group">
												<input type="text" name="msg_subject" id="msg_subject" class="form-control" required data-error="Please enter your subject" placeholder="Subject">
												<div class="help-block with-errors"></div>
											</div>
										</div>
			
										<div class="col-md-12 col-lg-12">
											<div class="form-group">
												<textarea name="message" class="form-control" id="message" cols="30" rows="5" required data-error="Write your message" placeholder="Your Message"></textarea>
												<div class="help-block with-errors"></div>
											</div>
										</div>
			
										<div class="col-md-12 col-lg-12">
											<button type="submit" class="drop-btn">
												Send
											</button>
											<div id="msgSubmit" class="h3 text-center hidden"></div>
											<div class="clearfix"></div>
										</div>
									</div>
								</form>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5 p-0">
                        <div class="speciality-item speciality-right speciality-right-two speciality-right-three">
                            <img src="assets/img/home-two/4.jpg" alt="Contact">
                            <div class="speciality-emergency">
                                <div class="speciality-icon">
                                    <i class="icofont-ui-call"></i>
                                </div>
                                <h3>Emergency Call</h3>
                                <p>+07 554 332 322</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Drop -->

        <!-- Map -->
        <!-- Start Map Area -->
		<div class="contact-map-area">
			<div id="map"></div>
		</div>
		<!-- End Map Area -->
        <!-- End Map -->
		 <!-- Map API JS -->
		<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyApghCIIx9MpQhA768sKXxvR_Okg0SF2k4&amp;callback=initMap"></script>
        <!-- Map JS -->