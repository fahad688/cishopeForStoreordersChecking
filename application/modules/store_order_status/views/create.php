<h1><?= $headline ?></h1>
<?=  validation_errors("<p style='color: red;' >","</p>") ?>

<?php  
if (isset($flash)) 
{
	echo $flash;
}

		// for options of Upload image ,Order Status Option color ,Order Status Option size ,Order Status Option catagories,delete Order Status Option
		if (is_numeric($update_id)) { ?>
           <div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon edit"></i><span class="break"></span>Items Options</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>
					   <div class="box-content">
					   
						  <a href="<?= base_url() ?>Store_order_status/deleteconf/<?= $update_id ?> "> <button type="button" class="btn btn-danger">Delete Order Status Option</button></a>
					   </div>
				</div><!--/span-->

			</div><!--/row-->
		<?php 
	     }
	    ?>



	    	<!-- for creating items Order Status Option titlle,Order Status Option price,was price,Order Status Option description,big pic,small pic ,status  -->
			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon edit"></i><span class="break"></span>Update Order Status Option Details</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>
					<div class="box-content">
					<?php 
					$form_location= base_url()."Store_order_status/create/".$update_id;

					?>

						<form class="form-horizontal" method = "post" action="<?= $form_location ?>">
						  <fieldset>							


								<div class="control-group"> <label class="control-label" for="typeahead"> Status Title </label> <div class="controls"> <input type="text" class="span5" name="status_title" value="<?= $status_title ?>"> </div> </div>



							<div class="form-actions">
							  <button type="submit" class="btn btn-primary" name="submit"  value="Submit">Submit</button>
							  <button type="submit" class="btn" name="submit"  value="Cancel">Cancel</button>
							</div>
						  </fieldset>
						</form>   

					</div>
				</div><!--/span-->

			</div><!--/row-->

			<!-- delete the uploaded image  -->
			