<div class="az-content-body az-content-body-profile">
	<div class="row">

	<!-- BASIC MODAL -->
    <div id="modaldemo1" class="modal">
      <div class="modal-dialog " role="document">
        <div class="modal-content modal-content-demo">
          <div class="modal-header">
            <h6 class="modal-title">Forward Query to Doctor</h6>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
		 
         <div hidden>
			<div class="az-content-label mg-b-5">Patient Name</div>
			<p class="mg-b-20">Age: 30, Male</p>
			   <hr class="mg-y-20">

          <div class="pd-20 bd" >
            <div class="media d-block d-sm-flex">
              <div class="media-body">
                <h5 class="mg-b-15 tx-inverse">Query</h5>
                <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.</p>

                <div class="media d-block d-sm-flex mg-t-25">
                  <div class="media-body">
                    <h5 class="mg-b-15 tx-inverse">Symptoms</h5>
                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                  </div>
                </div>
                <div class="media d-block d-sm-flex mg-t-25">
                  <div class="media-body">
                    <h5 class="mg-b-15 tx-inverse">Treatement Taken</h5>
                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                  </div>
                </div>
              </div>
            </div>
          </div>

          <hr class="mg-y-40">
		</div>
		  
		  <div id="forwardArea" style="display:block">
            <h6>Select a Doctor from our team Doctors</h6>
            <input name="qry_id" id="qry_id" type="hidden" />
            <select name="doctor" id="doctor" class="form-control" >
			<?php foreach($this->Doctor_team_model->getDoctorTeam(4) as $dr){;?>
				<option value="<?php echo $dr->reg_id;?>" ><?php echo $dr->reg_name;?></option>
			<?php } ?>
			</select>
          </div>
		  
		  <div id="DoctorReplyArea" style="display:none">
            No reply from Doctor
          </div>
		  
		  
		  
		  
          </div>
		  
		  
          <div class="modal-footer">
            <button type="button" class="btn btn-indigo" onclick="forwardDoctorQuery()">Forward</button>
            <button type="button" class="btn btn-outline-light" data-dismiss="modal">Close</button>
          </div>
        </div>
      </div><!-- modal-dialog -->
    </div><!-- modal -->
	<script>
		function forwardDoctorQuery(){
			var doctor = $("#doctor").val();
			var qry_id = $("#qry_id").val();
			
			$.ajax({
				type: "GET",
				method:"POST",
				url:"<?php echo base_url('admin/OnlineQueries/forwardDoctorQuery')?>",
				data:{doctor:doctor,qry_id:qry_id},
				success: function(msg){
					alert(msg);
					$("#modaldemo1").modal('hide');
				}
			});
		}
		function forwardQuery(qry_id,qry_status){
			$("#forwardArea").show();
			$("#DoctorReplyArea").hide();
			$("#qry_id").val(qry_id);
			if(qry_status==3){
				// alert(qry_id);
				// alert(qry_status);
				$("#forwardArea").hide();
				$("#DoctorReplyArea").show();
			}
			
		}
	</script>
       <div class="col-sm-6 col-xl-12">
            <div class="card card-dashboard-twentytwo ht-auto">
				<div class="card-header">
				
				<div class="d-flex flex-row justify-content-between mg-b-20">
				<h4 class="card-title">Online Queries</h4>
				 <!-- <a href="#modaldemo8" class="modal-effect btn btn-dark btn-red" data-toggle="modal" class="modal fade effect-scale ">Add Doctors</a>-->
				</div>
				<div class="col-sm-4 col-md-2 col-xl-2 pull-right">
					
				</div>
				</div><!-- card-header -->
            <div class="card-body">
                <div>
					<table id="example2" class="table table-bordered">
					  <thead>
						<tr>
						  <th class="wd-9p">Sl No.</th>
						  <th class="wd-15p">Patient Name</th>
						  <th class="wd-20p">Query</th>
						  <th class="wd-20p">Symptoms</th>
						  <th class="wd-20p">Treatement Taken</th>
						  <th class="wd-15">Phone</th>
						  <th class="wd-15p">Action</th>
						</tr>
					  </thead>
					  <tbody>
					  <?php if(!empty($patients_queries)): ?>
					  <?php $sno=0;foreach($patients_queries as $pq): $sno++;
					  ?>
						<tr>
							<td><?php echo $sno ?></td>
							<td><?php echo $this->Common_model->findfield('users','id',$pq->qry_user_id,'first_name')." ".$this->Common_model->findfield('users','id',$pq->qry_user_id,'first_name');?></td>
							<td><?php echo $pq->qry_desc;?></td>
							<td><?php echo $pq->qry_symptoms;?></td>
							<td><?php echo $pq->qry_treatment_taken;?></td>
							<td><?php echo $this->Common_model->findfield('users','id',$pq->qry_user_id,'phone');?></td>
							<td>
							<a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modaldemo1" onclick="forwardQuery('<?php echo $pq->qry_id?>','<?php echo $pq->qry_status?>')">Forward</a>
							</td>
						</tr>
						<?php endforeach ?>   

						 <?php else: ?>

							<tr>
							   <td colspan="7">
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
    	