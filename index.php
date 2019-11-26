<?php
include("intern/indexheader.php");
?>
<!DOCTYPE html>
<html>
	<head>
		<title><? echo $pagetitle; ?></title>
		<meta name="viewport" content="initial-scale=1" charset="UTF-8">
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
		<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
		<link href='images/favicon2.png' rel='shortcut icon' type='image/vnd.microsoft.icon'>
		<!-- Style CSS -->
		<link rel="stylesheet" type="text/css" href="css/styles.css">
		<link rel='stylesheet' href='css/menu.css' type='text/css' media='all' />
		<script type="text/javascript">
			function decode(text1, text2, text3) {
			  document.write('<a href="' + 'mailto:' + text1 + '@' + text2 + '.' + text3 + '">' + text1 + '@' + text2 + '.' + text3 + '</a>');
			}
			
			var screenHeight = window.innerHeight;
		</script>
	</head>
	<body>
	<div class="container-fluid" style="">
	<!---Container--->
	<script type="text/javascript">
		document.write('<div class="container" style="min-height:' + screenHeight + 'px">');
	</script>
	
		<div class='row'>
			<div class='col-sm-6 col-md-7 col-lg-8'>
				<h1>
					<a href="./">
						<img id="logo" src="images/ttlogo.png">
					</a>
				</h1>
				<!--<h6>Database: Patch 4.55</h6>-->
				
			</div>
			<div class='col-sm-6 col-md-5 col-lg-4 '>
				
				<?php
					 if ((isset($_SESSION['user']) && $path!='logout.htm')||(isset($_GET['a'])=='guest')) {
					   echo "<div id='buttonbox'><p id='loggedinlinks'>You are logged in as <b>".$_SESSION['user']."</b>.</p>";
					   
					   
					   if ($_SESSION['user']!='guest')   echo"<a href='user_settings.htm'><button  id='settingsbutton' class=' btn btn-brown' >User Settings</button></a>";
					   
					   echo"<a href='logout.htm'><button  id='logoutbutton' class=' btn btn-brown' >Logout</button></a></p></div>";
					 } else {
						 echo "<div id='buttonbox'>
						 <a href='loginpage.htm'><button  id='loginlink' class=' btn btn-brown' >Login</button></a>
						 <a href='?a=guest'><button  id='guestlink' class=' btn btn-brown' >Login as guest</button></a>
						 </div>
						 ";
					 }
				?>
			</div>
		</div>

	<div id="menupush" class="row">
		<nav class="navcontainer">
			<div class="topnav" id="myTopnav">
				<a href="./">Home</a>
				<a href="cards.htm">Cards</a>
				<a href="npc.htm">Players</a>
				<a href="usercards.htm">My Cards</a>
				<a href="userdeck.htm">My Deck</a>
				<a href="usernpcs.htm">NPCs defeated</a>
				<a href="report.htm">Report</a>


				
				<a id="mobilesmenu" href="javascript:void(0);" class="icon" onclick="myFunction()" style="">☰</a>

			</div>
		</nav>
		<div id="hidemenu" onclick="myFunction()" style="display: none;"><p> </p></div>
	
	</div>
		
		<?
			//-------- Content    ----------------------------------->

			if(file_exists("content/$path"))
			include("content/$path");
			else
			include("404.htm");

			//-----------End of Content  ------------------------------>
		?>
		
		<footer class="">
			<p>
			<small>
				FINAL FANTASY XIV is a registered trademark of Square Enix Holdings Co., Ltd. FINAL FANTASY XIV ©2010-<?php echo date("Y"); ?> SQUARE ENIX CO., LTD. All Rights Reserved.
			
			<br>
			
				NOTE: This is a fan project, made in part to give me a hand while playing the Triple Triad mini-game, and in part to practice programming.
			</small>	
			</p>
		</footer>
	</div>	
	
	</div>	
	</body>
</html>
<?php
include("intern/indexfooter.htm");
?>