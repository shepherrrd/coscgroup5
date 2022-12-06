<?php
include("connection/connect.php");
  

if(isset($_POST['submit']))
{
	$fname=$_POST['fname'];
	$lname=$_POST['lname'];
	$email=$_POST['email'];	
	$password=$_POST['password'];
			
			if (empty($fname)  || empty($lname) || empty($email) ||empty($password) 
			) {
				echo ' Input Cannot Be Empty ';
				# code...
			}else { $sql1="select * from signup where (email='$email');";

				$res=mysqli_query($db,$sql1);
		  
				if (mysqli_num_rows($res) > 0) {
				  
				  $row = mysqli_fetch_assoc($res);
				  if($email==isset($row['email']))
				  {
						  echo "email already exists";
				  }
				  if($username==isset($row['username']))
				  {
					  echo "username  already exists";
				  }
				  }
		  else{
			$sql = "INSERT INTO signup(firstname,lastname,email,password) VALUES('$fname','$lname','$email','$password')";
			$query=mysqli_query($db, $sql);
		   if($query)
		   {
			   header('location:signup_success.php');
		   }
		   
				   }
		  //do your insert code here or do something (run your code)
		  }
		  
			
			
	
	

}
 

?>

<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8">
	<title>signup</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
	<div class="header">
		<div>
			<a href="index.php"><img src="images/logo.png" alt="Logo"></a>
		</div>
		
	</div>
	<div class="body">
		<div>
			<div class="header">
				<ul>
					<li>
						<a href="index.php">Home</a>
					</li>
					<li>
						<a href="recipes.php">Recipes</a>
					</li>
					<!--<li>
						<a href="featured.php">Recipe of Month</a>
					</li>
					
					<li class="">
						<a href="about.php">About</a>
					</li> -->
					<?php
						if(empty($_SESSION["user_id"]))
							{
								echo '<li><a href="login.php">login</a></li>';
								echo '<li class="current"> <a href="signup.php">signup</a></li>';
							}
						else
							{
									
									
									
									$logout= '<form action="logout.php" method="post" >
									<input type="submit" id="logout" name="logout" value="logout" style="width:100px;color:#000;border:none;padding:5px;font-size:15px;"  ></form>';
							}

						?>
					
				</ul>
			</div>
			<div class="body">
				<div id="content">
					<div>
							<center><h3>Sign up</h3></center>
					    <form action='' method='post'>
					    	<div>
						    	<span><label>FIRST-NAME</label></span>
						    	<span><input @keydown.space.prevent type="text" id="fname" value="" name='fname' pattern="[A-Za-z0-9]+" onkeydown="if(['Space'].includes(arguments[0].code)){return false;}"></span>
						    </div>
							<div>
						    	<span><label>LAST-NAME</label></span>
						    	<span><input  @keydown.space.prevent type="text" value="" name='lname' pattern="[A-Za-z0-9]+" onkeydown="if(['Space'].includes(arguments[0].code)){return false;}"></span>
						    </div>
						    <div>
						    	<span><label>E-MAIL</label></span>
						    	<span><input @keydown.space.prevent type="email" class="emailtext" value="" name='email' pattern="[A-Za-z0-9]+" onkeydown="if(['Space'].includes(arguments[0].code)){return false;}"></span>
						    </div>
						    <div>
						     	<span><label>PASSWORD</label></span>
						    	<span><input @keydown.space.prevent type="text" value="" name='password' pattern="[A-Za-z0-9]+" onkeydown="if(['Space'].includes(arguments[0].code)){return false;}"></span>
						    </div>
						    <script>
							$('#submitbtn').attr('disabled', true);
							document.getElementbyId('fname').addEventListner('keyup', e=>{
								if (e.target.value == "") {
									document.getElementbyId('submitbtn').disabled = true;
							}else{
								document.getElementbyId('submitbtn').disabled = false;
							}
							});
							
						</script>
						   <div>
						   		<span><input type="submit" id="submitbtn" name='submit' value="Submit" ></span>
						  </div>
					    </form>
						
					</div>
				</div>
			</div>
		</div>
		
		<!--<div>
			<div>
				<h3>Cooking Video</h3>
				<a href="videos.php"><img src="images/cooking-video.png" alt="Image"></a>
				<span>Vegetable &amp; Rice Topping</span>
			</div>
			<div>
				<h3>Featured Recipes</h3>
				<ul id="featured">
					<li>
						<a href="recipes.php"><img src="images/sandwich.jpg" alt="Image"></a>
						<div>
							<h2><a href="recipes.php">Ham Sandwich</a></h2>
							<span>by: Anna</span>
						</div>
					</li>
					<li>
						<a href="recipes.php"><img src="images/biscuit-and-coffee.jpg" alt="Image"></a>
						<div>
							<h2><a href="recipes.php">Biscuit &amp; Sandwich</a></h2>
							<span>by: Sarah</span>
						</div>
					</li>
					<li>
						<a href="recipes.php"><img src="images/pizza.jpg" alt="Image"></a>
						<div>
							<h2><a href="recipes.php">Delicious Pizza</a></h2>
							<span>by: Rico</span>
						</div>
					</li>
				</ul>
			</div>
			
			<div>
				<h3>Get Updates</h3>
				<a href="http://freewebsitetemplates.com/go/facebook/" target="_blank" id="facebook">Facebook</a>
				<a href="http://freewebsitetemplates.com/go/twitter/" target="_blank" id="twitter">Twitter</a>
				<a href="http://freewebsitetemplates.com/go/youtube/" target="_blank" id="youtube">Youtube</a>
				<a href="http://freewebsitetemplates.com/go/flickr/" target="_blank" id="flickr">Flickr</a>
				<a href="http://freewebsitetemplates.com/go/googleplus/" target="_blank" id="googleplus">Google&#43;</a>
			</div>
			
		</div>
	</div>-->
	<div class="footer">
		<div>
			<p>
				&copy;(Cosc333 Group 5) Copyright 2022. All rights reserved
			</p>
		</div>
		
	</div>
</body>
</html>