<div class="az-content-body az-content-body-profile">
	<div class="row">

	  <!-- MODAL EFFECTS -->
    <div id="modaldemo8" class="modal">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content modal-content-demo">
          <div class="modal-header">
            <h6 class="modal-title">Message Preview</h6>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
		  		<form id="add_cat_validate" action="<?= base_url('admin/SupAdm/newssave') ?>" method="post" class="form-horizontal row-border">

						<div class="form-group">
							<div class="row row-sm">
								<div class="col-sm-4">
									<label class="az-content-label tx-11 tx-medium tx-gray-600">Select Type</label>
									<select class="form-control select2-no-search" name="ntype" id="ntype">
										<option value="aboutus">Abount Us</option>
										<option value="news">News</option>
										<option value="whyus">Why Us</option>
										<option value="interview">Interview</option>
										<option value="healthtip">Health Tips</option>
										<option value="advert">Advertisement</option>
										<option value="marquee">Marquee</option>
										<option value="address">Address</option>
										<option value="email">E-Mail</option>
										<option value="contact">Contact Number</option>
										
									</select>
								</div><!-- col -->
								<div class="col-sm-8 mg-t-10 mg-sm-t-0">
									<label class="az-content-label tx-11 tx-medium tx-gray-600">Description</label>
									<input type="text" name="descr" id="descr" name="first_name" class="form-control" required>
								</div><!-- col -->
								
							</div><!-- row -->
						</div>          </div>
          <div class="modal-footer">
            <button type="submit"  class="btn btn-indigo">Save changes</button>
            <button type="button" class="btn btn-outline-light" data-dismiss="modal">Close</button>
          </div>
		  </form>
        </div>
      </div><!-- modal-dialog -->
    </div><!-- modal -->
	
       <div class="col-sm-6 col-xl-12">
            <div class="card card-dashboard-twentytwo ht-auto">
				<div class="card-header">
				
				<div class="d-flex flex-row justify-content-between mg-b-20">
				<h4 class="card-title">Doctors</h4>
				  <a href="#modaldemo8" class="modal-effect btn btn-dark btn-red" data-toggle="modal" class="modal fade effect-scale ">Add Doctors</a>
				</div>
				<div class="col-sm-4 col-md-2 col-xl-2 pull-right">
					
				</div>
				</div><!-- card-header -->
            <div class="card-body">
                <div>
					<table id="example2" class="table">
					  <thead>
						<tr>
						  <th class="wd-9p">Sl No.</th>
						  <th class="wd-15p">Doctors Name</th>
						  <th class="wd-15p">Gender</th>
						  <th class="wd-51p">Degree</th>
						  <th class="wd-51p">Specialisation</th>
						  <th class="wd-51p">Email</th>
						  <th class="wd-15p">Photo</th>
						  <th class="wd-15p">Action</th>
						</tr>
					  </thead>
					  <tbody>
					  <?php if(!empty($doctor)): ?>
					  <?php $sno=0;foreach($doctor as $doc): $sno++;
					  ?>
						<tr>
						  <td><?php echo $sno ?></td>
						  <td><?php echo ucwords($doc->reg_name);?></td>
						  <td><?php echo ($doc->reg_gender==1)?'Male':'Female';?></td>
						  <td><?php echo $this->Common_model->findfield('mst_degree','deg_id',$doc->reg_degree,'deg_name');?></td>
						  <td><?php echo $this->Common_model->findfield('mst_specialty','spec_id',$doc->reg_specialty,'spec_name');?></td>
						  <td><?php echo $doc->reg_email; ?></td>
						  <td><img src="<?php echo bs().$doc->reg_image;?>" height="100px" /></td>
						  <td>
							<select name="regstatus" id="regstatus" class="form-control" onchange="change_status(<?php echo $doc->reg_id; ?>,this.value)">
							
							<option value="0" <?php if($doc->reg_status==0){ echo 'selected' ; } ?>>In Active</option>
							<option value="1" <?php if($doc->reg_status==1){ echo 'selected' ; } ?>>Pending</option>
							<option value="2" <?php if($doc->reg_status==2){ echo 'selected' ; } ?> >Approve</option>
							</select>
							
							</td>
						</tr>
						<?php endforeach ?>   

						 <?php else: ?>

							<tr>
							   <td>
								  <p><font color="red" size="3">Record Not Found</font></p> 
							   </td>
							</tr>

						 <?php endif ?>
					  </tbody>
					</table>
				</div>
              </div><!-- card-top-content -->
            </div><!-- card -->
          </div><!-- col -->
		  
    </div><!-- row -->
</div><!-- az-content-body -->
<script type="text/javascript">
	function change_status(regid,reg_status)
	{ 
		try {
		$.ajax({   
			type: "GET",
			method: "POST",  
			url: "<?php echo base_url('admin/Doctors/changestatus'); ?>",  
			data:{regid:regid,reg_status:reg_status}, 

			success: function(msg){
			$("#pos1").html(msg);
			}  
		}); 
		}
		catch (e) {
			alert(e);
		} 
	}
</script>
    	