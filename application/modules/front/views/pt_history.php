<!-- Sign Up -->
        <div class="signup-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 ptb-10">
                        <div class="signup-item" style="max-width:99%;">
                            <div class="signup-head">
                                <h3>Patient Medical History</h3>
                                <?php foreach ($check as $value){} ?>
                            </div>
                            <div class="signup-form">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <form action="<?= base_url('front/register/update_patient_history') ?>" method="post">
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <i class="icofont-ui-building"></i>
                                                    <label>Complaints / Symptoms</label>
                                                    <textarea rows="3" name="mhis_sympt" class="form-control" placeholder="Enter Complaints / Symptoms" ></textarea>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <i class="icofont-ui-building"></i>
                                                    <label>Treatment Taken</label>
                                                    <textarea rows="3" name="mhis_treat" class="form-control" placeholder="Enter Which Treatment You have Taken" ></textarea>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <i class="icofont-ui-building"></i>
                                                    <label>Ask Your Query</label>
                                                    <textarea rows="3" name="mhis_query" class="form-control" placeholder="Enter Ask Your Query" ><?php echo (!empty($value->mhis_query))?$value->mhis_query:""; ?></textarea>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="text-center">
                                                    <button type="submit" class="btn signup-btn">Submit and Pay</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="col-lg-6">
                                        <form action="<?= base_url('front/register/update_patient_history') ?>" method="post">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <h4>Upload Reports</h4><hr>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="form-group">
                                                        <select name="report_type" class="form-control" required>
                                                            <option value="">Select Report Type</option>
                                                            <option value="mhis_patho">Pathological Reports</option>
                                                            <option value="mhis_radio">Radiological Reports</option>
                                                            <option value="mhis_other">Other Reports</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="form-group">
                                                        <input type="file" name="report_image" class="form-control" placeholder="Select Image" />
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <button type="button" class="btn signup-btn">Upload</button>
                                                </div>  
                                            </div><hr>
                                        </form>                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Sign Up -->