<?php 

include('login.php');

unset($_SESSION['user_id']);
header("location:index.php");


?>