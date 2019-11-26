<?php 
require("../dbconnect/conn.php");

$create			= $_GET['create'];

$name			= $_POST['name'];
$name 			= str_replace('"', "'", $name);
$name			= addslashes($name);

$location		= $_POST['location'];
$location 		= str_replace('"', "'", $location);
$location		= addslashes($location);

$r1			= $_POST['r1'];
$r2			= $_POST['r2'];
if (strcasecmp($r1,$r2) >0 )	{	$temp=$r1; $r1=$r2; $r2=$temp;	}
if ($r1==1)	{$r1=$r2; $r2=1;}

$patch		= $_POST['patch'];

if ($create==1)
{

$query = "insert into tt_npcs
                       (
						name,
						location,
						r1,
						r2,
						patch
						)
                         VALUES
                        (
						\"$name\",
						\"$location\",
						\"$r1\",
						\"$r2\",
						\"$patch\"
						)";

require("../dbconnect/get_query.php");
if(!$result) echo" Input error!".mysql_error();
else echo"Input successful!";
$result->free;
}

$link->close;
?>

<html>
<?php 
include("../inter_header.php");
?>
<body><center>
<div class='header'>Add NPC</div>

<div class='buttonbox'>
				<a href='npcnew.php'  class='linkbutt_int'>
					<button type="button" class="btn btn-primary">Add NPC</button>
				</a>
				<a href='adminnpc.php'  class='linkbutt_int'>
					<button type="button" class="btn btn-primary">All NPCs</button>
				</a>
</div>


<div align='center'>
  <table border='0'  class='text'  width='730' >

        <tr>
          <td colspan="2">&nbsp;</td>
        </tr>
        <form method='POST' action='npcnew.php?&create=1' enctype='multipart/form-data' >
        <tr>
          <td colspan="2">&nbsp;</td>
        </tr>

        <tr>
          <td width="25%" height="25" valign="top" class="text">NPC name</td>
          <td width="75%" height="25" valign="top"><input size="70" name="name" tabindex="1" required></td>
        </tr>
        <tr>
          <td colspan="2">&nbsp;</td>
        </tr>
		
		<tr>
          <td width="25%" height="25" valign="top" class="text">Location</td>
          <td width="75%" height="25" valign="top"><input size="70" name="location" value="" tabindex="2" required></td>
        </tr>
        <tr>
          <td colspan="2">&nbsp;</td>
        </tr>
		
		<tr>
          <td width="25%" height="25" valign="top" class="text">Patch</td>
          <td width="75%" height="25" valign="top"><input size="70" name="patch" value="1.0" tabindex="3"></td>
        </tr>
        <tr>
          <td colspan="2">&nbsp;</td>
        </tr>
		
		<?php
		echo"
		<tr>
	    <td width='25%' height='25' valign='top' >Rule 1</td>
	    <td height='25'>
		  	<select name='r1' size='1' style='width:200px;' tabindex='4'>
				";
				$query = "select * from tt_rules order by name";
		        require("../dbconnect/get_query.php");
		        $num = mysqli_num_rows($result);
		        for ($i = 0; $i < $num; $i++)
	             {
	             $row = mysqli_fetch_array($result);

			  	 echo"<OPTION VALUE='$row[id]'>$row[name]</option>";
				 }
				 echo"
			</select>
		</td>
		</tr>
		<tr>
          <td colspan='2'>&nbsp;</td>
        </tr>
		<tr>
	    <td width='25%' height='25' valign='top' >Rule 2</td>
	    <td height='25'>
		  	<select name='r2' size='1' style='width:200px;' tabindex='5'>
				";
				$query = "select * from tt_rules order by name";
		        require("../dbconnect/get_query.php");
		        $num = mysqli_num_rows($result);
		        for ($i = 0; $i < $num; $i++)
	             {
	             $row = mysqli_fetch_array($result);

			  	 echo"<OPTION VALUE='$row[id]'>$row[name]</option>";
				 }
				 echo"
			</select>
		</td>
		</tr>
		<tr>
          <td colspan='2'>&nbsp;</td>
        </tr>
		
		";
		?>
        
		
		<tr>
          <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
          <td width="25%" height="21"></td>
          <td width="75%" height="21"><input type="submit" value="Send" name="Add" tabindex="10"></td>
        </tr>
	</form>
  </table>
</div>
</body>
</html>