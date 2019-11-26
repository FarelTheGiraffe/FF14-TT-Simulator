<?php 
require("../dbconnect/conn.php");

$nr= $_GET['nr'];

$name			= $_POST['name'];
$name 			= str_replace('"', "'", $name);
$name			= addslashes($name);

$location		= $_POST['location'];
$location 		= str_replace('"', "'", $location);
$location		= addslashes($location);

$r1			= $_POST['r1'];
$r2			= $_POST['r2'];
if ($r1 > $r2 )	{	$temp=$r1; $r1=$r2; $r2=$temp;	}
if ($r1==1)	{$r1=$r2; $r2=1;}
$patch		= $_POST['patch'];

if($ord=="")$ord=0;

			$query = "update tt_npcs set
                       name='$name',
                       location='$location',
                       r1='$r1',
                       r2='$r2',
                       patch='$patch',
                       inneed=1 
                       where id=$nr";

require("../dbconnect/get_query.php");
$result->free;
?>
<html>
<?php 
include("../inter_header.php");
?>
<head>
	<meta http-equiv="refresh" content="2; URL=adminnpc.php">
</head>
<body >
<table border="0" width="100%">
 <tr> <td align="center" valign="middle" class="titelgross">
<?   if(!$result) echo" Error! Failure!!!".mysql_error();
        else echo" Update successful !";
      $link->close;
?>
</td>
</tr>
</table>
</body>
</html>