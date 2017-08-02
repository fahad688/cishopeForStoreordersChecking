<div class="row-fluid">

	<div class="span12  statbox purple">
		<div class="span4">
		</div>
		<div class="span8">
			<h2>FEED BECK FROM PAYPAL</h2>
			<p>
				<b>Transmition Time :</b> <?= $date_created ?> <br>
				<b>Payment Statusb :</b> <?= $payment_status ?> <br>
				<b>Transaction iD :</b> <?= $txn_id ?> <br>
				<b>Payment Gross :</b> <?= $mc_gross ?> <br>
				<b>Payer ID :</b> <?= $payer_id ?> <br>
				<b>Payer Email :</b> <?= $payer_email ?> <br>
				<b>Payer Status :</b> <?= $payer_status ?> <br>
				<b>Payment Date :</b> <?= $payment_date ?> <br>

				<!--Payer's Detail-->
				<b>Payer's Name :</b> <?= $firstname.''.$lastname  ?> <br>
				<b>Payer's Company :</b> <?= $payer_bussiness_name ?> <br>
				<b>Address Line 1 :</b> <?= $adddress_name ?> <br>
				<b>Address Line 2 :</b> <?= $adddress_street ?> <br>
				<b>City :</b> <?= $adddress_city ?> <br>
				<b>State :</b> <?= $adddress_state ?> <br>
				<b>Postcode/zip :</b> <?= $adddress_zip ?> <br>
				<b>Country :</b> <?= $adddress_country ?> <br>
			</p>
		</div>
		<div class="footer">
		<a href="http://www.paypal.co.uk">Check paypal for more information</a>
			
		</div>		
	</div>	
</div>