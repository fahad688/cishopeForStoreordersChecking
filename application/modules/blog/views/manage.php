
	<!-- for manging the items -->
	<h1> Blog Management System </h1>

	<?php  
	if (isset($flash)) 
	{
		echo $flash;
	}
		$create_blog_url= base_url()."blog/create" ;


		
	?>

	<p style="margin-top:30px">
		<a href="<?=  $create_blog_url ?>"> <button type="button" class="btn btn-primary"> Create New Blog  </button> </a>
	</p>


<div class="row-fluid sortable">		
	<div class="box span12">
		<div class="box-header" data-original-title>
			<h2><i class="halflings-icon file"></i><span class="break"></span>Custom Blog</h2>
			<div class="box-icon">
				<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
				<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
			</div>
		</div>
		
		<div class="box-content">
			<table class="table table-striped table-bordered bootstrap-datatable datatable">
			  <thead>
				  <tr>
				  	  <th>Picture</th>
				  	  <th>Date Published</th>
				  	  <th>Author</th>
					  <th>Blog URL</th>
					  <th>Blog Title</th>
					  <th class="span2">Actions</th>
				  </tr>
			  </thead>   
			  <tbody>
			  <?php 
			  $this->load->module('timedate');
			  foreach($query->result() as $row ){ 
			  		$edit_blog_url=base_url() ."blog/create/".$row->id;
			  		$view_blog_url=base_url() .$row->blog_url;
			  		$date_published=$this->timedate->get_nice_date($row->date_published,'mini');
			  		$picture=$row->picture;
			  		$thumbnail_name= str_replace('.', '_thumb.', $picture);
			  		$thumbnail_path=base_url().'blog_pics/'.$thumbnail_name;
			  		
			  	?>
				<tr>
					<td><img src="<?= $thumbnail_path ?>"></td>
					<td><?= $date_published ?></td>
					<td><?= $row->author?></td>
					<td><?= $view_blog_url ?></td>
					<td class="center"><?= $row->blog_title ?></td>
					<td class="center">
						<a class="btn btn-info" href="<?= $edit_blog_url ?>">
							<i class="halflings-icon white edit"></i>  
						</a>

						<a class="btn btn-info" href="<?= $view_blog_url ?>">
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