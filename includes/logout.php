<?php


//echo "log out sucessfull";
session_start();
session_destroy();

echo "
<script type='text/javascript'>alert('Logout Sucessfull');
window.location='dummy.php';


</script>";

?>