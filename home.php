  <?php
session_start();
if ( $_SESSION['email']==true) {
  # code...
}else
header('location:admin_login.php');
$page='home';
 include('include/header.php');

  ?>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">

          <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
            <h1 class="h2">Welcome to Admin Dashboard!!</h1>
           
          </div>

          <canvas class="my-4" id="myChart" width="900" height="380"></canvas>

        </main>
      </div>
    </div>

  <?php

  include('include/footer.php');


    ?>
