<h1><?= $headline ?></h1>
<?=  validation_errors("<p style='color: red;' >","</p>") ?>

<?php  
if (isset($flash)) 
{
	echo $flash;
}

 ?>

	    	
			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon edit"></i><span class="break"></span>Update Blog Details</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>
					<div class="box-content">
					<?php 
					$form_location= base_url()."blog/create/".$update_id;

					?>

						<form class="form-horizontal" method = "post" action="<?= $form_location ?>">
						  <fieldset>

						  <div class="control-group">
							  <label class="control-label" for="typeahead">Date Published </label>
							  <div class="controls">
								<input type="text" class="input-xlarge datepicker" name="date_published" id="date01" value="<?= $date_published ?>">
								
							  </div>
							</div>

							<div class="control-group">
							  <label class="control-label" for="typeahead">Blog Title </label>
							  <div class="controls">
								<input type="text" class="span6" name="blog_title" value="<?= $blog_title ?>">
								
							  </div>
							</div>


								<div class="control-group hidden-phone">
							  <label class="control-label" for="textarea2">Blog Keywords</label>
							  <div class="controls">
								<textarea rows="3" class="span6" name="blog_description"><?php  
								echo $blog_description;
								?></textarea>
							  </div>
							</div>


							<div class="control-group hidden-phone">
							  <label class="control-label" for="textarea2">Blog Description</label>
							  <div class="controls">
								<textarea rows="3" class="span6" name="blog_keywords"><?php  
								echo $blog_keywords;
								?></textarea>
							  </div>
							</div>


							<div class="control-group hidden-phone">
							  <label class="control-label" for="textarea2">Blog Content</label>
							  <div class="controls">
								<textarea class="cleditor" id="textarea2" rows="3" name="blog_content"><?php  
								echo $blog_content;
								?></textarea>
							  </div>
							</div>


							<div class="control-group">
							  <label class="control-label" for="typeahead">Author </label>
							  <div class="controls">
								<input type="text" class="span6" name="author" value="<?= $author ?>">
								
							  </div>
							</div>


							<div class="form-actions">
							  <button type="submit" class="btn btn-primary" name="submit"  value="Submit">Submit</button>
							  <button type="submit" class="btn" name="submit"  value="Cancel">Cancel</button>
							</div>
						  </fieldset>
						</form>   

					</div>
				</div><!--/span-->

			</div><!--/row-->

			<?php 
			if (is_numeric($update_id)) { ?>
           <div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon edit"></i><span class="break"></span>Additional Blog Options</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>
					   <div class="box-content">

					   	 <?php 

					    // button for uploading the image
					    if ($picture=="") { ?>
						 <a href="<?= base_url() ?>blog/upload_image/<?= $update_id ?>  "> <button type="button" class="btn btn-primary">Upload Image</button></a>
						 <?php 
						 }

						 // button for deleting the uploded image 
						 else
						
						 {

						 ?>
						 	 <a href="<?= base_url() ?>blog/delete_image/<?= $update_id ?>  "> <button type="button" class="btn btn-danger">Delete Image</button></a>
						 	 <?php 
						 }

					   if($update_id>2) { ?>
						 <a href="<?= base_url()?>blog/deleteconf/<?= $update_id ?> "> <button type="button" class="btn btn-danger">Delete Blog</button></a>
						 <?php 
						  }
						  ?>
						  <a href="<?= base_url().$blog_url?>"> <button type="button" class="btn btn-default">View Blog</button></a>
						  
					   </div>
				</div><!--/span-->

			</div><!--/row-->
		<?php 
	     }

			if ($picture!="") { ?>
			
			 <div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon edit"></i><span class="break"></span>Image</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>
					   <div class="box-content">
						<img src="<?= base_url() ?>blog_pics/<?= $picture ?>">

					   </div>
				</div><!--/span-->

			</div><!--/row-->
			<?php 
		     }
		     ?>

