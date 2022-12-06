<?php
error_reporting(0);
include("connection/connect.php");

$query = "SELECT rating_number, FORMAT((total_points / rating_number),1) as average_rating FROM post_rating WHERE post_id = 1 AND status = 1";
$result = $db->query($query);
$ratingRow = $result->fetch_assoc();

 session_start(); //session started by unique user_id
                                                                 //for printing the  text
  $sql = "SELECT * FROM signup where user_id='".$_SESSION["user_id"]."'";
  $results = mysqli_query($db, $sql);
  $row = mysqli_fetch_array($results);
  $name=$row['firstname'];
$nameingredients = "Ingredients";
$namedirections = "Directions";




$DISC = $_GET['DISC'];

$sql="select * from full_recipy where rid='$DISC' ";
$resul=mysqli_query($db,$sql);
$row=mysqli_fetch_array($resul);

	$title =  	  $row['title'];
	$title_text=  $row['title_text'];
	$image = 	  $row['image'];
	$ing =  	  $row['ing'];
	$ing_text =   $row['ing_text'];
	$rid = 		  $row['rid'];
	$disc = 		  $row['disc'];

	// if (mysqli_num_rows($row) > 0) {
				  
	// 	$row = mysqli_fetch_assoc($resul);
	// 	if($DISC !==isset($row['rid'])){
	// 		$title = "404";
	// $row['image'] = "noresult.jpg";
	// 	} }
 if ($DISC == isset($row)) {
	
	# code...
 }else {
	# code...
	$title = "404 Page Not Found";
	
	$row['image'] = "noresult.jpg";
	$nameingredients = "";
	$namedirections = "";
 }
	

?>

<html>
<head>
	<meta charset="UTF-8">
	<title>Full-Recipes</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link href="rating.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="rating.js"></script>
<script language="javascript" type="text/javascript">

</script>
<style type="text/css">
    .overall-rating{font-size: 14px;margin-top: 5px;color: #8e8d8d;}
</style>
</head>
<body>
	<div class="header">
		<div>
			<a href="index.php"><img src="images/logo.png" alt="Logo"></a>
		</div>
		
	</div>
	<div class="body">
		<div>
			<div  style="min-height:10px;width: 410px;background-color:#e6dfd1;display:inline-block;border-radius:5px;">
			
				<ul>
			
				</ul>
			</div>
			<div class="header" style="margin-top:30px;">
			
				<ul>
				
					<li>
						<a href="index.php">Home</a>
					</li>
					<li>
						<a href="recipes.php">Recipes</a>
					</li>
				<!--	<li >
						<a href="featured.php">Recipe of Month</a>
					</li>
					<li>
						<a href="about.php">About</a>
					</li> -->
					<?php
						if(empty($_SESSION["user_id"]))
							{
								echo '<li><a href="login.php">login</a></li>';
								echo '<li><a href="signup.php">signup</a></li>';
							}
						else
							{
									
									
									
									$logout= '<form action="login.php" method="post" >
									<input type="submit" id="logout" name="logout" value="logout" style="width:100px;color:#000;border:none;padding:5px;font-size:15px;"  ></form>';
							}

						?>
					
					
				</ul>
			</div>
			
			<div class="body">
				<div id="content">
					<div>
						<div>
						
						<?php
						
						echo	'<h3>'.$title.'</h3>';
						echo'<p>
									'.$title_text.'
								
							</p>';
						echo	"<img  style='width:650px;
	                         height:350px;
							 margin-top:5px;
							 margin-left:5px; 
							 border-radius:5px;
							' src='admin/img/".$row['image']."' />";
						
						echo	'<h5>'.$nameingredients.'</h5>';
						
						
						
						
							echo		$ing_text;
							
							
							
							echo'<h5>'.$namedirections.'</h5>';
						
							echo		$disc;
							
							
							?>
							
				
					
						
					
					
					
					
					</div>
						
						<!--<?php include('commentbar.php');?>-->
					</div>
					
				</div>
			</div>
		</div>
		
	<div class="footer">
		<div>
			<p>
				&copy;(Cosc333 Group 5) Copyright 2022. All rights reserved
			</p>
		</div>
	</div>
</body>
</html>