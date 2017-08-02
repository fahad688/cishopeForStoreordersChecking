
<!-- for manging the items -->
<h1> Add New Status Option </h1>

<?php  
if (isset($flash)) 
{
	echo $flash;
}


	$create_order_status_url= base_url()."Store_order_status/create" ;
?>

<p style="margin-top:30px">
	<a href="<?= $create_order_status_url ?>"> <button type="button" class="btn btn-primary"> Add New Order Status Option </button> </a>
</p>


<div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon list-alt"></i><span class="break"></span>Current order status option</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th>Status Title</th>
								  <th>Actions</th>

							  </tr>
						  </thead>   
						  <tbody>
						  <?php 
						  $this->load->module('timedate');
						  foreach($query->result() as $row ){ 
						  		$edit_url=base_url() ."Store_order_status/create/".$row->id;

						  	?>
							<tr>
								<td class="center"><?= $row->status_title ?></td>
								<td class="center">
									
									<a class="btn btn-info" href="<?= $edit_url ?>">
										<i class="halflings-icon white edit"></i>  
									</a>
									
								</td>
							</tr>

							<?php 
						     }
						     ?>

							
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->