
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="../css/font-awesome.min.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Bootstrap-Core-CSS -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=devanagari,latin-ext"
	 rel="stylesheet">
  </head>
  <body>
    

<!-- .....................  -->

<!-- main banner -->
<div class="main-top" id="home">
		<!-- header -->
		<header>
			<div class="container-fluid">
				<div class="header d-lg-flex justify-content-between align-items-center py-3 px-sm-3">
					<!-- logo -->
					<div id="logo">
						<!-- <h1><a href="#"><span class="fa fa-linode  mr-2"></span>KGEI</a></h1> -->
					<a href="user_search.php" class="logo" style="text-decoration:none;"> <i class="fa fa-heartbeat"></i> medcare </a>

					</div>

					<!-- <div class="d-flex mt-lg-1 mt-sm-2 mt-3 justify-content-center"> -->
                    <!-- <h5><a href="index.php"><span class="fa fa-cloud-download mr-2"></span>Log Out</a></h5> -->
					<div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <span class="fa fa-user fa-2x pr-2 ">
  <?php 
  session_start();
  //echo "  ". $_SESSION['username'];
  ?></span>
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
  
	<a class="dropdown-item" href="includes/logout.php"><span class="fa fa-sign-out fa-2x mr-2 p-2"></span>Log Out</a>
	<!-- <a class="dropdown-item" href="reservation_index.php"><span class="fa fa-calendar-check-o fa-2x mr-2 p-2"></span>Book Appointment</a>
	
<a  class="dropdown-item" href="check_appointment.php";> <span class="fa fa-check-square-o fa-2x mr-2 p-2"></span>Check Appointment</a> -->


  </div>
</div>
					




    <!-- </div> -->
    </div>
    </div>
    </div>



<!-- ...............................  -->






    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script> -->
<script src="../js/bootstrap.bundle.min.js"></script>
    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
  </body>
</html>