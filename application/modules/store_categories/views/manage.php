
<!-- for manging the items -->
<h1> Add New Category </h1>

<?php  
if (isset($flash)) 
{
	echo $flash;
}


	$create_item_url= base_url()."store_categories/create" ;
?>

<p style="margin-top:30px">
	<a href="<?=  $create_item_url ?>"> <button type="button" class="btn btn-primary"> Add New Category </button> </a>
</p>


<div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon  align-justify"></i><span class="break"></span>Existing Categories</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>
					<div class="box-content">

					<?php 

					echo modules :: run('store_categories/_draw_sortable_list',$parent_cat_id);

					?>
					
					</div>
				</div><!--/span-->
			
			</div><!--/row-->