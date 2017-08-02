<?php 

echo Modules::run('templates/_draw_breadcrumbs',$breadcrumbs_data);
if(isset($flash))
{
	echo $flash;
}

?>

<!-- item title for Show item in the shop -->
<div class="row">

<div class="col-md-2" style="margin-top:24px;">
	<a href="#" data-featherlight="<?= base_url() ?>/big_pics/<?= $big_pic ?>" class="img-responsive">
	<img src="<?= base_url() ?>/big_pics/<?= $big_pic ?>" class="img-responsive" alt="<?= $item_title ?> ">	
	</a>
</div>


<!-- item description for show item in the shop -->
<div class="col-md-7">
	   <h1><?= $item_title ?></h1>
	   <h1>Our Price <?= $currency_symbol.$item_price_desc ?></h1>
	   <div style="clear:both;">
	   <?= nl2br($item_description) ?>
	</div>
</div>	


<!-- for function drwa_add_to_cart -->
<div class="col-md-3">
	
	<?= modules::run('cart/_draw_add_to_cart',$update_id) ?>

</div>

</div>
