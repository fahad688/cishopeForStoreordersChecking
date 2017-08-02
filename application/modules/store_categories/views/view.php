<h1><?= $cat_title ?></h1>
<p><?= $showing_statement ?></p>
<?= $pagination ?>
<div class="row">
<?php 
foreach ($query->result() as $row) 
{
	$was_price=$row->was_price;
	$item_price=$row->item_price;
	$item_title=$row->item_title;
	$small_pic=$row->small_pic;
	$small_pic_path=base_url()."small_pics/".$small_pic;
	$item_page=base_url().$item_segments.$row->item_url;
?>

	<div class="col-md-2 img-thumbnail" style="margin:14px; min-height:340px;">
	 	<a href="<?= $item_page ?>"><img src="<?= $small_pic_path ?>" title="<?= $item_title ?>" class="img-responsive"></a>
	 	<br>
	 	<?= $item_title ?>
	 	<h6><a href="<?= $item_page ?>"<?= $item_title ?></a></h6>
	 	<div style="clear:both; color:red; font-weight:bold;"><?= $currency_symbol.number_format($item_price,2)?>
	 	<?php 
	 	if($was_price>0){ ?>
	 	<span style="font-weight:normal; color:#999; text-decoration:line-through;"><?= $currency_symbol.number_format($was_price,2) ?></span>
	 	<?php 
	    }
	    ?>
	 	</div>

	</div>

<?php 
}
?>
</div>
<?= $pagination ?>