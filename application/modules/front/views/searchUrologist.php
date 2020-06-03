 <!-- Page Title -->
        <div class="page-title-area page-title-one">
            <div class="d-table">
                <div class="d-table-cell">
                    <div class="page-title-item">
                        <h2>Search Urologist</h2>
                        <ul>
                            <li>
                                <a href="index-2.html">Home</a>
                            </li>
                            <li>
                                <i class="icofont-simple-right"></i>
                            </li>
                            <li>Search Urologist</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Page Title -->

        <!-- Doctor Search -->
        <div class="doctor-search-area">
            <div class="container">
                <form action="#" id="formSearchDoctor">
                    <div class="row doctor-search-wrap">
                        <div class="col-sm-6 col-lg-6">
                            <div class="doctor-search-item">
                                <div class="form-group">
                                    <i class="icofont-map"></i>
                                    <label>State</label>
									<select name="state" id="state" class="form-control" onchange="GetCity(this.value);formSearchDoctor()" required>
                                        <option value="">Select State</option>
                                        <?php foreach($states as $state){ ?>
                                        <option value="<?php echo $state->state_id; ?>"><?php echo $state->state_name; ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-6">
                            <div class="doctor-search-item">
                                <div class="form-group">
                                    <i class="icofont-location-pin"></i>
                                    <label>City</label>
                                    <select name="city" id="city" class="form-control" onchange="formSearchDoctor()" required>
                                        <option value="">Select City</option>
                                    </select>
                                </div>
                            </div>
                        </div><div class="col-sm-6 col-lg-6">
                            <div class="doctor-search-item">
                                <div class="form-group">
                                    <i class="icofont-doctor"></i>
                                    <label>Doctor Name</label>
                                    <input type="text" class="form-control" name="doctor" id="doctor" onkeyup="formSearchDoctor()" placeholder="Doctor Name">
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-6">
                            <div class="doctor-search-item">
                                <div class="form-group">
                                    <i class="icofont-hospital"></i>
                                    <label>Clinic Name</label>
                                    <input type="text" class="form-control" name="clinic" id="clinic" onkeyup="formSearchDoctor()" placeholder="Clinic Name">
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- End Doctor Search -->

        <!-- Doctors -->
        <section class="doctors-area doctors-area-two pt-100">
            <div class="doctor-shape">
                <img src="<?php bs() ?>assets/img/doctor/2.png" alt="Shape">
            </div>
            <div class="container" id="getUrologist">
                
            </div>
        </section>
        <!-- End Doctors -->
		
<script>
    $(document).ready(function() {
          
    });

    function GetCity(state_id){
        $.ajax({
            url:'<?= base_url('front/home/get_city_by_state'); ?>',
            data:{'state_id':state_id},
            type:'post',
            dataType:'json',
            success:function(res){
                var content = "<option value=''>Select City</option>";
                $.each(res, function(k, v){
                    content += "<option value='"+ v.city_id +"'>"+ v.city_name +"</option>";
                });
                $("#city").html(content);
            }
        });
    }
    function formSearchDoctor(){
		// alert($('#formSearchDoctor').serialize());
		// var formdata = $('#formSearchDoctor').serialize();
		var state = $("#state").val();
		var city = $("#city").val();
		var doctor = $("#doctor").val();
		var clinic = $("#clinic").val();
		// alert(doctor);
        $.ajax({
            url:'<?= base_url('front/SearchUrologist/formSearchDoctor'); ?>',
            data:{state:state,city:city,doctor:doctor,clinic:clinic},
            type:'post',
            // dataType:'json',
            success:function(res){
//				alert(res);
                 $("#getUrologist").html(res);
            }
        });
    }
</script>