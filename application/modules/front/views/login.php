 <!-- Login -->
        <div class="signup-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6 pl-0">
                        <div class="login-left">
                            <img src="assets/img/login-bg.jpg" alt="Login">
                        </div>
                    </div>

                    <div class="col-lg-6 ptb-100">
                        <div class="signup-item">
                            <div class="signup-head">
                                <h2>Login Here</h2>
                                <p>Didn't you account yet? 
                                    <a href="#">Register Here</a>
                                </p>
                            </div>
                            <div class="signup-form">
                                <form action="<?= base_url('front/login') ?>" method="post">
                                    <div class="row">
                                       
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <input type="email" class="form-control" id="identity" name="identity" placeholder="Your Email">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <input type="password" class="form-control" name="password" placeholder="Password">
                                            </div>
                                        </div>
                                       
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <div class="forgot-pass">
                                                    <?php if ($reg_status[0]->forgot_pass_status == 1): ?>
													  <a href="<?= base_url('users/register/forgot_pass') ?>">Forgot password?</a>
													<?php endif ?> 
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="text-center">
                                                <button type="submit" class="btn signup-btn">Login</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Login -->