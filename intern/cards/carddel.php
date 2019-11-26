<?php 
require("../dbconnect/conn.php");

$nr= $_GET['nr'];

$query = "update tt_cards set deleted=1 where $nr=id ";
require("../dbconnect/get_query.php");
$link->close;

?>
<html>
<?php 
include("../inter_header.php");
?>
<head>
	<meta http-equiv="refresh" content="2; URL=admincards.php">
</head>
<body>
<table border="0" width="100%">
 <tr> <td align="center" valign="middle">
<?
if(!$result) echo"Deletion failed!<br>";
else echo"Successful deletion !<br>";
?>
</td>  </tr></table>
</body>
</html>