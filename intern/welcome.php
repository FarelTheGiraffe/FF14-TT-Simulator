<?php
	include('session.php');
?>
<html>
	<head>
		<title>Admin section </title>
		<meta name="viewport" content="initial-scale=1" charset="UTF-8">
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
		<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
		<!-- Style CSS -->
		<link rel="stylesheet" type="text/css" href="../css/style_intern.css">
	</head>
	<body>
	<?php include('session.php'); ?>
		<div class="container-fluid" style="">
			<!---Container--->
			<div class="container" style="">
				<div class="col-lg-2 col-md-1 col-sm-1">
					<nav>
						<p><br>Welcome <?php echo $login_session; ?></p> 
						<ul>
							<li><a href="welcome.php">Home</a></li>
							<li><a href='cards/admincards.php'>Cards</a></li>
							<li><a href='players/adminnpc.php'>Players</a></li>

							<li><a href='logout.php'>Sign Out</a></li>
						</ul>
					</nav>
				</div>
				<div class="col-lg-10 col-md-11 col-sm-11">
					<?
						//-------- Contentbereich   ----------------------------------->
						if(file_exists("$path"))
						include("$path");
						else
						include("404.htm");
						//-----------Ende Contentbereich ------------------------------>
					?>
				</div>
			</div>
		</div>
	</body>
</html>