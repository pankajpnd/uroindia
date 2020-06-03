<!-- Drop -->
<section class="drop-area">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-7 p-0">
                <div class="drop-item drop-img">
                    <div class="drop-left">
                        <h2>Enter Your Health Query.</h2>
                        <div class="row">
                            <div class="col-md-12 col-lg-12">
                                <div class="form-group">
                                    <textarea name="message" class="form-control" id="message" onkeyup="FillMsg(this.value)" cols="30" rows="5" required data-error="Write your Health Query, your age, height, weight, medicine your are taking." placeholder="Enter Your Health Query here..."></textarea>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <?php if (!$this->ion_auth->logged_in()) { ?>
                                <div class="col-md-12 col-lg-12" style="background-color:#e7edf5;padding:10px">
                                    <button type="" class="drop-btn" onclick="OpenForm('signUp_form', 'signIn_form')">New User</button>
                                    <button type="" class="drop-btn" onclick="OpenForm('signIn_form', 'signUp_form')">Existing User?</button>
                                    <div class="col-md-12 col-lg-12">
                                        <div class="signup-item" id="signIn_form">
                                            <div class="signup-head pt-50">
                                                <h4>Login Here</h4>
                                            </div>
                                            <div class="signup-form">
                                                <form action="<?php echo base_url('front/login') ?>" method="post">
                                                    <div class="row">													   
                                                        <div class="col-lg-6">
                                                            <div class="form-group">
                                                                <i class="icofont-ui-user"></i>
                                                                <label>Email / Username</label>
                                                                <input type="email" class="form-control" id="identity" name="identity" placeholder="Your Email">
                                                                <textarea name="health_query" class="form-control query_message" hidden></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <div class="form-group">
                                                                <i class="icofont-ui-password"></i>
                                                                <label>Password</label>
                                                                <input type="password" class="form-control" name="password" placeholder="Password">
                                                            </div>
                                                        </div>						
                                                        <div class="col-lg-12">
                                                            <div class="form-group">
                                                                <div class="forgot-pass">
                                                                    <?php //if ($reg_status[0]->forgot_pass_status == 1):  ?>
                                                                    <a href="<?php //base_url('users/register/forgot_pass')  ?>">Forgot password?</a>
                                                                    <?php //endif  ?> 
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <div class="text-center">
                                                                <button type="submit" class="btn signup-btn">Login</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="signup-item" id="signUp_form" style="display: none;">
                                            <div class="signup-head pt-50">
                                                <h4>Register Here</h4>
                                            </div>
                                            <div class="signup-form">
                                                <form action="<?php echo base_url('front/register/add_user') ?>" method="post">
                                                    <div class="row">
                                                        <div class="col-lg-12">                                  
                                                            <?php if (!empty($message)) { ?>
                                                                <!-- <div class="alert alert-success hide">
                                                                    <button class="close" data-dismiss="alert"></button>  
                                                                    <span class="error_msg"><?php echo $message; ?></span>
                                                                </div> -->
                                                            <?php } ?>                                    
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <div class="form-group">
                                                                <i class="icofont-business-man-alt-1"></i>
                                                                <label>First Name</label>
                                                                <input type="text" name="first_name" class="form-control" placeholder="Enter Your First Name" required>
                                                                <textarea name="health_query" class="form-control query_message" hidden></textarea>
                                                            </div>
                                                        </div>                                
                                                        <div class="col-lg-6">
                                                            <div class="form-group">
                                                                <i class="icofont-business-man-alt-1"></i>
                                                                <label>Last Name</label>
                                                                <input type="text" name="last_name" class="form-control" placeholder="Enter Your Last Name" required>
                                                            </div>
                                                        </div>                                
                                                        <div class="col-lg-6">
                                                            <div class="form-group">
                                                                <i class="icofont-business-man"></i>
                                                                <label>Age</label>
                                                                <input type="text" name="age" class="form-control" placeholder="Your Age" required>
                                                            </div>
                                                        </div>                                
                                                        <div class="col-lg-6">
                                                            <div class="form-group">
                                                                <i class="icofont-user"></i>
                                                                <label>Gender</label>
                                                                <select class="form-control" name="gender"  required>
                                                                    <option value="">Choose Gender</option>
                                                                    <option value="male">Male</option>
                                                                    <option value="female">Female</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <div class="form-group">
                                                                <i class="icofont-ui-call"></i>
                                                                <label>Phone</label>
                                                                <input type="number" name="phone" class="form-control" placeholder="Enter Your Number" required>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <div class="form-group">
                                                                <i class="icofont-ui-message"></i>
                                                                <label>Email</label>
                                                                <input type="email" name="email" class="form-control" placeholder="Enter Your Email" required>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <div class="form-group">
                                                                <i class="icofont-hospital"></i>
                                                                <label>State</label>
                                                                <select class="form-control" name="state"  onchange="GetCity(this.value)" required>
                                                                    <option value="">Select State</option>
                                                                    <?php foreach ($states as $state) { ?>
                                                                        <option value="<?php echo $state->state_id; ?>"><?php echo $state->state_name; ?></option>
                                                                    <?php } ?>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <div class="form-group">
                                                                <i class="icofont-hospital"></i>
                                                                <label>City</label>
                                                                <select class="form-control" name="city" id="city_id"  required>
                                                                    <option value="">Select City</option>
                                                                </select>
                                                            </div>
                                                        </div>                                                             
                                                        <div class="col-lg-6">
                                                            <div class="form-group">
                                                                <i class="icofont-key"></i>
                                                                <label>Create Password</label>
                                                                <input type="password" name="password" class="form-control" placeholder="Enter Password" required>
                                                            </div>
                                                        </div>                                                                
                                                        <div class="col-lg-6">
                                                            <div class="form-group">
                                                                <i class="icofont-key"></i>
                                                                <label>Confirm Password</label>
                                                                <input type="password" name="confirm_password" class="form-control" placeholder="Re-Enter Password" required>
                                                            </div>
                                                        </div> 
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <div class="text-center">
                                                                <button type="submit" class="btn signup-btn">Register & Login</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <?php } else { ?>
                            <button type="button" class="drop-btn" onclick="SaveQuery()">Submit</button>
                            <?php } ?>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-5 p-0">
                <div class="speciality-item speciality-right speciality-right-two speciality-right-three">
                    <img src="assets/img/home-two/4.jpg" alt="Contact">
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Drop -->

<script type="text/javascript">
    function OpenForm(open, close) {
        $('#' + open).show();
        $('#' + close).hide();
    }

    function FillMsg(mval) {
        $('.query_message').html(mval);
    }


    function GetCity(state_id) {
        $.ajax({
            url: '<?= base_url('front/home/get_city_by_state'); ?>',
            data: {'state_id': state_id},
            type: 'post',
            dataType: 'json',
            success: function (res) {
                var content = "";
                $.each(res, function (k, v) {
                    content += "<option value='" + v.city_id + "'>" + v.city_name + "</option>";
                });
                $("#city_id").html(content);
            }
        });
    }


    function SaveQuery() {
    var query = $('#message').val();
        $.ajax({
            url: '<?= base_url('front/askOnline/save_query'); ?>',
            data: {'query': query},
            type: 'post',
            dataType:'json',
            success: function (res) {
                alert(res.msg);
                if(res.status=='success'){
                    window.location.reload();
                }
            }
        });
    }
</script>
