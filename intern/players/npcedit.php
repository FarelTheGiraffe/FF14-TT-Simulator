<?php 
require("../dbconnect/conn.php");

$nr= $_GET['nr'];
 $query = "select * from tt_npcs where id=$nr" ;

require("../dbconnect/get_query.php");
if(!$result) echo" Query error !".mysql_error();
$row = $result->fetch_assoc();

$name		= $row['name'];
$location	= $row['location'];
$r1			= $row['r1'];
$r2			= $row['r2'];
if (strcasecmp($r1,$r2) >0 )	{	$temp=$r1; $r1=$r2; $r2=$temp;	}
if ($r1==1)	{$r1=$r2; $r2=1;}

$patch 		= number_format($row[patch],2);

$result->free;
$link->close;
?>
<html>
<?php 
include("../inter_header.php");
?>
<body><center>
<div class='header'>Edit NPC</div>
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
<?
	    echo"
	    <form method='POST' action='npcupdate.php?nr=$nr'>
        <tr>
          <td colspan='2'>&nbsp;</td>
        </tr>
		<tr>
          <td width='25%' height='25' valign='top' class='text'>NPC name</td>";
		  
		  echo'
          <td width="75%" height="25" valign="top"><input size="70" name="name"  value="'.$name.'" tabindex="1" required></td>';
		  
		  echo"
        </tr>
        <tr>
          <td colspan='2'>&nbsp;</td>
        </tr>
		
		<tr>
          <td width='25%' height='25' valign='top' class='text'>Location</td>";
		  
		  echo'<td width="75%" height="25" valign="top"><input size="70" name="location" value="'.$location.'" tabindex="2" required></td>';
          
		  echo"
        </tr>
        <tr>
          <td colspan='2'>&nbsp;</td>
        </tr>
		
		<tr>
          <td width='25%' height='25' valign='top' class='text'>Patch</td>
          <td width='75%' height='25' valign='top'><input size='70' name='patch' value='$patch' tabindex='3'></td>
        </tr>
        <tr>
          <td colspan='2'>&nbsp;</td>
        </tr>
		
		<tr>
          <td width='25%' height='25' valign='top' class='text'>Rule 1</td>
		  <td height='25'>
		  	<select name='r1' size='1' style='width:200px;' tabindex='4'>
				";
				$query = "select * from tt_rules order by name";
		        require("../dbconnect/get_query.php");
		        $num = mysqli_num_rows($result);
		        for ($i = 0; $i < $num; $i++)
	             {
	             $row = mysqli_fetch_array($result);
			  	 echo"<OPTION VALUE='$row[id]'"; if($r1== $row[id])echo" selected"; echo">$row[name]</option>";
				 }
				 echo"
			</select>
		</td>
        </tr>
        <tr>
          <td colspan='2'>&nbsp;</td>
        </tr>
		<tr>
          <td width='25%' height='25' valign='top' class='text'>Rule 2</td>
		  <td height='25'>
		  	<select name='r2' size='1' style='width:200px;' tabindex='5'>
				";
				$query = "select * from tt_rules order by name";
		        require("../dbconnect/get_query.php");
		        $num = mysqli_num_rows($result);
		        for ($i = 0; $i < $num; $i++)
	             {
	             $row = mysqli_fetch_array($result);

			  	 echo"<OPTION VALUE='$row[id]'"; if($r2== $row[id])echo" selected"; echo">$row[name]</option>";
				 }
				 echo"
			</select>
		</td>
        </tr>
        <tr>
          <td colspan='2'>&nbsp;</td>
        </tr>
				
        <tr>
          <td colspan='2'>&nbsp;</td>
        </tr>";
?>
        <tr>
          <td width="25%" height="21"></td>
          <td width="75%" height="21"><input type="submit" value="Send" name="Add" tabindex="20"></td>
        </tr>
    </form>
  </tr>
</table>
</div>
</body>
</html>