<?php 
echo anchor('youraccount/start','Create Account');
echo nbs(8);
echo anchor('youraccount/login','login');
echo Modules::run('homepage_blocks/_draw_blocks');

?>


    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-md-8">
         <?= Modules::run('blog/_draw_feed_hp') ?>
       </div>
        <div class="col-md-4">
          <h2>Heading</h2>
          <a href="http://localhost/cishop/musical/instrument/Fender-CD-60-Acoustic-Guitar-Starter-Pack-in-Natural">CLICK HERE</a><br>
          <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
      </div>
      </div>
    

