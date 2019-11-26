<?php session_start();require("../dbconnect/conn.php");
if(!isset($uid))die("Ihre Sitzung ist abgelaufen, oder Sie haben sich nicht eingeloggt!");

require("../functions.php");

$editor1 = mysqli_real_escape_string($link, $editor1);
$editor1 = str_replace("<br />","<br>",$editor1);

if($la=="") $update = "langtext = \"$editor1\"";
if($la=="en") $update = "langtext_en = \"$editor1\"";

if($la=="pl")
{
$editor1 = char_ch($editor1);
$update = "langtext_pl = \"$editor1\"";
}

$query = "update artikel set ".$update." where id=$id";
require("../dbconnect/get_query.php");
$result->free;

$link->close;

echo"
<html>
<head>
<meta http-equiv='refresh' content='1; URL=../artikel/npcedit.php?nr=$id'>
<link rel='stylesheet' href='../../css/style_intern.css' type ='text/css'>
</head>
<body>
<table border='0' width='100%'>
 <tr> <td align='center' valign='middle' class='titelgross'>";
  if(!$result) echo"Update fehlgeschlagen !".mysql_error();
  else echo" Änderung Erfolgreich übernommen !";
?>
</td>
</tr>
</table>
</body>
</html>