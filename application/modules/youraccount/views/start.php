<?php 
  $form_location=base_url().'youraccount/submit';

?>

<h1> Create User</h1>
<?php 
echo validation_errors("<p style='color:red;'>", "</p>");
?>

<form class="form-horizontal" action="<?= $form_location ?>" method="post">
<fieldset>

<!-- Form Name -->
<legend>Please submit the details using the form below </legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Username</label>  
  <div class="col-md-4">
  <input id="textinput" name="username" value="<?= $username  ?>" type="text"  placeholder="Please enter the user name of your choice here " class="form-control input-md" required="">
  
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">E-mail</label>  
  <div class="col-md-4">
  <input id="textinput" name="email" value="<?= $email  ?>" type="text" placeholder="Please enter your account Email here " class="form-control input-md">  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Password</label>  
  <div class="col-md-4">
  <input id="textinput" name="pword" value="<?= $pword ?>" type="password" placeholder="Please enter the password of your choice here " class="form-control input-md">
   
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Repeat Password</label>  
  <div class="col-md-4">
  <input id="textinput" name="repeat_pword" value="<?=  $repeat_pword ?>" type="password" placeholder="Please repeat your password here " class="form-control input-md">
   
  </div>
</div>



<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton">Create Account?</label>
  <div class="col-md-4">
    <button id="singlebutton" name="submit" value="Submit" class="btn btn-primary">Yes</button>
  </div>
</div>

</fieldset>
</form>
