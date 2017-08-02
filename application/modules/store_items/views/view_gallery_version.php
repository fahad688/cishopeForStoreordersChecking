<?php 

echo Modules::run('templates/_draw_breadcrumbs',$breadcrumbs_data);
if(isset($flash))
{
	echo $flash;
}

?>


<script type="text/javascript">
	
	var myApp = angular.module('myApp', []);

	myApp.controller('myController', ['$scope', function($scope){

		$scope.defaultPic = '<?= $gallery_pics['0'] ?>';

		$scope.change = function(newPic) {

			$scope.defaultPic = newPic;
		}

	 }])

</script>

<div class="row" ng-controller="myController">
	<div class="col-md-1" style="margin-top:24px;">
	  
	<?php 
	foreach ($gallery_pics as $thumbnail) {
		?>

		<img ng-click="change('<?= $thumbnail ?>')" src="<?= $thumbnail ?>" class="img-responsive">

        <?php 
         }
		 ?>	

	</div>

<div class="col-md-4" style="margin-top:24px;">
	<a href="#" data-featherlight="{{ defaultPic }}" class="img-responsive">
	<img src="{{ defaultPic }}" class="img-responsive" alt="<?= $item_title ?> ">	
	</a>
</div>


<!-- item description for show item in the shop -->
<div class="col-md-4">
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
