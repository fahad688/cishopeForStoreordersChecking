<h1>Plese create an account</h1>

<p>You don't need to create account with us , However if you Do you will enjoy following:</p>

<p>

    <ul>
        <li>Order Tracking</li>
        <li>Downloadable Orderd Forms</li>
        <li>Technical Priority Support</li>
    </ul>

</p>

<p>Creating an account would take a mint or so and its a good vibe </p>
<p>Woud you like to create an acoount ?</p>

<div class="col-md-10">
    <?php 
    echo form_open('cart/submit_choice'); ?>
        
        <button class="btn btn-primery" name="submit" value="Yes - Let's Do It" type="submit">
            <span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
         Yes - Let's Do It
        </button>

        <button class="btn btn-danger" style="margin-left:24px" name="submit" value="No Thanks" type="submit">
            <span class="glyphicon glyphicon-thumbs-down" aria-hidden="true"></span>
         No Thanks
        </button>

        <a href="<?= base_url() ?>youraccount/login">
        <button class="btn btn-primary" style="margin-left:24px" name="submit" type="button">
            <span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>
         Already Have Account(Login)
        </button>

        <?php 
        echo form_hidden('checkout_token', $checkout_token);
        echo form_close(); ?>

</div>