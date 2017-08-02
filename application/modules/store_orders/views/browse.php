
<!-- for manging the items -->
<h1> Manage Orders </h1>
<h2><?= $current_order_status ?></h2>

<?php  
if (isset($flash)) 
{
	echo $flash;
}

/*
function get_customer_name($firstname, $lastname, $company)
{
		$this->load->helper('little_helpers');
	    $firstname=trim(ucfirst($firstname));
        $lastname=trim(ucfirst($lastname));
        $company=trim(ucfirst($company));

        $company_length= strlen($company);
        if($company_length>2)
        {
            $customer_name=$company;
        }
        else
        {
            $customer_name=$firstname." ".$lastname;
        }
        return $customer_name;
}
*/



	$paypal_url="HTTP://www.paypal.com";
?>

<p style="margin-top:30px">
	<a href="<?=  $paypal_url ?>"> <button type="button" class="btn btn-primary">Visit Paypal</button> </a>
</p>

<?php 
if($num_rows<1)
{
	echo "There are currently no orders with this order status ";
}
else
{
echo "<p>".$showing_statement.'</p>';
echo $pagination;
?>
<div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon tag"></i><span class="break"></span>Your Orders</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th>Date Created</th>
								  <th>Customer Name</th>
								  <th>Order Status</th>
								  <th>Opened</th>
								  <th>Actions</th>
							  </tr>
						  </thead>   
						  <tbody>
						  <?php 
						  $this->load->module('timedate');

						  foreach($query->result() as $row ){ 
						  		$view_order_url=base_url() ."store_orders/view/".$row->id;
						  		$opened=$row->opened;
						  		$date_created=$this->timedate->get_nice_date($row->date_created,'full');

						  	    //$firstname = $row->firstname;
								//$lastname = $row->lastname;
								//$company = $row->company;
								//$customer_name = $this->little_helpers->_get_customer_name($firstname, $lastname, $company);
						  		
						  		if(isset($row->status_title))
						  		{
						  			$order_status=$row->status_title;
						  		}
						  		else
						  		{
						  			$order_status="Order Submitted"; // order_status=0
						  		}

						  		if($opened==1)
						  		{
						  			$status_label = "success";
						  			$status_desc = "Opened";
						  		}
						  		else
						  		{
						  			$status_label = "important";
						  			$status_desc = "Upopened";
						  		}
						  	?>
							<tr>
								<td><?= $date_created ?></td>
								<td class="center">xxxx</td>
								<td class="center"><?= $order_status ?></td>
								<td class="center">
									<span class="label label-<?= $status_label ?>"><?= $status_desc ?></span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="halflings-icon white zoom-in"></i>  
									</a>
									<a class="btn btn-info" href="<?= $view_order_url ?>">
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
			<?php 
				echo $pagination;
			}
			?>