

<?php

$con = new PDO("mysql:host=localhost;dbname=cooking",'root','');

if (isset($_POST["submit"])) {
	$str = $_POST["search"];
	$str2 = strtok($str, '');
	$sth = $con->prepare("SELECT * FROM `recipes` WHERE substring_index(resname,' ',1) like '$str2' OR (resname like '$str2')");

	$sth->setFetchMode(PDO:: FETCH_OBJ);
	$sth -> execute();

	if($row = $sth->fetch())
	{
        
		?>
        		<!DOCTYPE html>
<html>
<head>
	<title>Search Bar using PHP</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">

    
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
					<li class="current">
						<a href="recipes.php"> Recipes</a>
					</li>
					<!--<li>
						<a href="featured.php">Recipe of Month</a>
					</li>
					
					<li>
						<a href="about.php">About</a>
					</li>-->
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
						<ul>
						
                        <li>
								<a href="fullrecipy.php?DISC=<?php echo $row->rid;?>"><img  style=width:150px;
	                         height:180px;
							 margin-top:5px;
							 margin-left:5px; 
							 border-radius:5px;
							 src="admin/img/<?php echo $row->rimage?>"></a>
								<div>
									<h3><a href="fullrecipy.php?DISC=<?php echo $row->rid;?>"><?php echo $row->resname ?></a></h3>
									<p>
										<?php echo $row-> resname ?>
									</p>
								</div>
							</li>
						
						
							
						
							
						</ul>
					</div>
				</div>
			</div>
		</div>
	
<!--<form method="post">
<label>Search</label>
<input type="text" name="search">
<input type="submit" name="submit">
	
</form>-->
<?php 
	}
		
		
		else{
			echo'
			<link rel="stylesheet" type="text/css" href="css/style.css">
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
					<li class="current">
						<a href="recipes.php">Existing Recipes</a>
					</li>
					<!--<li>
						<a href="featured.php">Recipe of Month</a>
					</li>
					
					<li>
						<a href="about.php">About</a>
					</li>-->'; if(empty($_SESSION["user_id"]))
					{
						echo '<li><a href="login.php">login</a></li>';
						echo '<li><a href="signup.php">signup</a></li>';
					}
				else
					{
							
							
							
							$logout= '<form action="login.php" method="post" >
							<input type="submit" id="logout" name="logout" value="logout" style="width:100px;color:#000;border:none;padding:5px;font-size:15px;"  ></form>';
					};

					
						

						
			echo'		
			</ul>
			</div>
			<div class="body">
				<div id="content">
					<div>
						<ul>
						
                        <li>
						<a href="#"><img  style=width:150px;
	                         height:180px;
							 margin-top:5px;
							 margin-left:5px; 
							 border-radius:5px;
							 src="admin/img/noresult.jpg"></a>
							<div><h3>OOPS!! No Results Found</h3></div>
								
							</li>
						
						
							
						
							
						</ul>
					</div>
				</div>
			</div>
		</div>'; ?> 

			
			
			
			<!-- "<script> alert('No Search Results Found');
			// window.location='index.php';
			// </script>";
			
			//header("location:index.php"); -->
		





</body>
</html>
        

<?php } }?>