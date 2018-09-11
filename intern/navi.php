<?php
	include('session.php');
?>
<html>
<head>
	<meta name="viewport" content="initial-scale=1" charset="UTF-8">
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
	<!-- Style CSS -->
	<link rel="stylesheet" type="text/css" href="../css/style_intern.css">
</head>



<body>
<?php


echo"
<div style='padding-top:30px;font-family:arial black; font-size:13px;color:#b1b1b1;text-align:center;padding:10px;'>
Welcome $login_session !
</div>
<table width='100%' cellspacing='0'>
	<tr>
		<td  align='center' style='padding:6px;'>
			<a href='mitte.php' target='main' class='navi_butt'>Home</a>
		</td>
	</tr>
	<tr>
		<td  align='center' style='padding:6px;'>
			<a href='cards/admincards.php' target='main' class='navi_butt'>Cards</a>
		</td>
	</tr>
	<tr>
		<td  align='center' style='padding:6px;'>
			<a href='players/adminnpc.php' target='main' class='navi_butt'>Players</a>
		</td>
	</tr>
				";

?>
                <tr>
					<td height='70'></td>
                </tr>
			    <tr>
					<td align='center'>
					 <a href='logout.php' target='_top' class='navi_butt'>Sign Out</a>
					</td>
	            </tr>
		</table>
</center>
</body>
</html>