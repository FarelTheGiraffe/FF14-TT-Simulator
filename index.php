<!DOCTYPE html>
<html>
	<head>
		<title><? echo $pagetitle; ?></title>
		<meta name="viewport" content="initial-scale=1" charset="UTF-8">
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
		<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
		<!-- Style CSS -->
		<link rel="stylesheet" type="text/css" href="css/styles.css">
	</head>
	<body>
	<div class="container-fluid" style="">
	<!---Container--->
	<div class="container" style="">
		<div class='row'>
			<h1>Triple Triad Simulator</h1>
			

			<nav>
				<ul>
					<li><a href="./">Home</a></li>
					<li><a href='cards.htm'>Cards</a></li>
					<li><a href='npc.htm'>Players</a></li>
					<li><a href='report.htm'>Report</a></li>

				</ul>
			</nav>
		</div>
		<?
			//-------- Content   ----------------------------------->
			/*include("content/home.htm"); */

			if(file_exists("content/$path"))
			include("content/$path");
			else
			include("404.htm");

			//-----------End of Content ------------------------------>
		?>
		
		
		<footer>
			<small>
				FINAL FANTASY XIV is a registered trademark of Square Enix Holdings Co., Ltd. FINAL FANTASY XIV ©2010-<?php echo date("Y"); ?> SQUARE ENIX CO., LTD. All Rights Reserved.
			</small>
			<br>
			<p>
				NOTE: This is a fan project, made in part to give me hand while playing the Triple Triad mini-game, and in part to practice programming.
			</p>
		</footer>
	</div>	
	</div>	
	</body>
</html>
