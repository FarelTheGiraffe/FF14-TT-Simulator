<?php 
require("../dbconnect/conn.php");

$nr= $_GET['nr'];

$rarity	= $_POST['rarity'];
$type	= $_POST['type'];
$name	= $_POST['name'];
$p1		= $_POST['p1'];
$p2		= $_POST['p2'];
$p3		= $_POST['p3'];
$p4		= $_POST['p4'];
$patch	= $_POST['patch'];
$ord	= $_POST['ord'];

if($ord=="")$ord=0;

			$query = "update tt_cards set
                       rarity='$rarity',
                       type='$type',
                       name='$name',
                       p1='$p1',
                       p2='$p2',
                       p3='$p3',
                       p4='$p4',
                       patch='$patch',
                       ord=$ord
                       where id=$nr";

require("../dbconnect/get_query.php");
$result->free;


?>
<html>
<?php 
include("../inter_header.php");
?>
<head>
	<meta http-equiv="refresh" content="2; URL=admincards.php">
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