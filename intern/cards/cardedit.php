<?php 
require("../dbconnect/conn.php");

$nr= $_GET['nr'];
$query = "select * from tt_cards where id=$nr" ;

require("../dbconnect/get_query.php");
if(!$result) echo" Query error !".mysql_error();
$row = $result->fetch_assoc();

$rarity	= $row['rarity'];
$type	= $row['type'];
$name	= $row['name'];
$p1		= $row['p1'];
$p2		= $row['p2'];
$p3		= $row['p3'];
$p4		= $row['p4'];
$patch 	= number_format($row[patch],2);
$ord	= $row['ord'];

$result->free;
$link->close;

?>

<html>
<?php 
include("../inter_header.php");
?>
<body><center>
<div class='header'>Edit card</div>

<div class='buttonbox'>
				<a href='cardnew.php'  class='linkbutt_int'>
					<button type="button" class="btn btn-primary">Add card</button>
				</a>
				<a href='admincards.php'  class='linkbutt_int'>
					<button type="button" class="btn btn-primary">All cards</button>
				</a>
</div>


<div align='center'>
  <table border='0'  class='text'  width='730' >

        <tr>
          <td colspan="2">&nbsp;</td>
        </tr>
<?
	    echo"
	    <form method='POST' action='cardupdate.php?nr=$nr'>

        <tr>
          <td colspan='2'>&nbsp;</td>
        </tr>
        <tr>
          <td width='25%' height='25' valign='top' class='text'>Card name</td>
          <td width='75%' height='25' valign='top'><input size='70' name='name'  value='$name' tabindex='1'></td>
        </tr>
        <tr>
          <td colspan='2'>&nbsp;</td>
        </tr>
		<tr>
			<td width='25%' height='25' valign='top' class='text'>Rarity</td>
			<td width='75%' height='25' valign='top'>
		  
				<select name='rarity' size='1' style='width:200px;' tabindex='2'>
					<option VALUE='1'"; if($rarity==1)echo" selected"; echo">★</option>
					<option VALUE='2'"; if($rarity==2)echo" selected"; echo">★★</option>
					<option VALUE='3'"; if($rarity==3)echo" selected"; echo">★★★</option>
					<option VALUE='4'"; if($rarity==4)echo" selected"; echo">★★★★</option>
					<option VALUE='5'"; if($rarity==5)echo" selected"; echo">★★★★★</option>
					<option VALUE='6'"; if($rarity==6)echo" selected"; echo">★★★★★★</option>
					
					
				</select>
			</td>	
        </tr>
        <tr>
          <td colspan='2'>&nbsp;</td>
        </tr>
		<tr>
	    <td width='25%' height='25' valign='top' >Card Type</td>
	    <td height='25'>
		  	<select name='type' size='1' style='width:200px;' tabindex='3'>
				<option VALUE='0'></option>";
				$query = "select * from tt_attribute order by id";
		        require("../dbconnect/get_query.php");
		        $num = mysqli_num_rows($result);
		        for ($i = 0; $i < $num; $i++)
	             {
	             $row = mysqli_fetch_array($result);

			  	 echo"<OPTION VALUE='$row[id]' "; if($type==$row[id])echo"selected"; echo">$row[name]</option>";
				 }
				 echo"
			</select>
		</td>
		</tr>
		
		<tr>
          <td colspan='2'>&nbsp;</td>
        </tr>
		<tr>
          <td width='25%' height='25' valign='top' class='text'>Power </td>
          <td width='75%' height='25' valign='top'>

				<select name='p1' size='1' tabindex='4' style='margin-left:20px;'>
					<option VALUE='1'"; if($p1== 1 )echo" selected"; echo">1</option>
					<option VALUE='2'"; if($p1== 2 )echo" selected"; echo">2</option>
					<option VALUE='3'"; if($p1== 3 )echo" selected"; echo">3</option>
					<option VALUE='4'"; if($p1== 4 )echo" selected"; echo">4</option>
					<option VALUE='5'"; if($p1== 5 )echo" selected"; echo">5</option>
					<option VALUE='6'"; if($p1== 6 )echo" selected"; echo">6</option>
					<option VALUE='7'"; if($p1== 7 )echo" selected"; echo">7</option>
					<option VALUE='8'"; if($p1== 8 )echo" selected"; echo">8</option>
					<option VALUE='9'"; if($p1== 9 )echo" selected"; echo">9</option>
					<option VALUE='10'"; if($p1== 10 )echo" selected"; echo">A</option>
				</select>
		  </td>
        </tr>
		<tr>
          <td width='75%' height='25' valign='top'>&nbsp;</td>
          <td width='75%' height='25' valign='top'>
				<select name='p4' size='1' tabindex='7'>
					<option VALUE='1'"; if($p4== 1 )echo" selected"; echo">1</option>
					<option VALUE='2'"; if($p4== 2 )echo" selected"; echo">2</option>
					<option VALUE='3'"; if($p4== 3 )echo" selected"; echo">3</option>
					<option VALUE='4'"; if($p4== 4 )echo" selected"; echo">4</option>
					<option VALUE='5'"; if($p4== 5 )echo" selected"; echo">5</option>
					<option VALUE='6'"; if($p4== 6 )echo" selected"; echo">6</option>
					<option VALUE='7'"; if($p4== 7 )echo" selected"; echo">7</option>
					<option VALUE='8'"; if($p4== 8 )echo" selected"; echo">8</option>
					<option VALUE='9'"; if($p4== 9 )echo" selected"; echo">9</option>
					<option VALUE='10'"; if($p4== 10 )echo" selected"; echo">A</option>
				</select>
				<select name='p2' size='1' tabindex='5'>
					<option VALUE='1'"; if($p2== 1 )echo" selected"; echo">1</option>
					<option VALUE='2'"; if($p2== 2 )echo" selected"; echo">2</option>
					<option VALUE='3'"; if($p2== 3 )echo" selected"; echo">3</option>
					<option VALUE='4'"; if($p2== 4 )echo" selected"; echo">4</option>
					<option VALUE='5'"; if($p2== 5 )echo" selected"; echo">5</option>
					<option VALUE='6'"; if($p2== 6 )echo" selected"; echo">6</option>
					<option VALUE='7'"; if($p2== 7 )echo" selected"; echo">7</option>
					<option VALUE='8'"; if($p2== 8 )echo" selected"; echo">8</option>
					<option VALUE='9'"; if($p2== 9 )echo" selected"; echo">9</option>
					<option VALUE='10'"; if($p2== 10 )echo" selected"; echo">A</option>
				</select>
		  </td>
        </tr>
		<tr>
          <td width='75%' height='25' valign='top'>&nbsp;</td>
          <td width='75%' height='25' valign='top'>
				<select name='p3' size='1' tabindex='6' style='margin-left:20px;'>
					<option VALUE='1'"; if($p3== 1 )echo" selected"; echo">1</option>
					<option VALUE='2'"; if($p3== 2 )echo" selected"; echo">2</option>
					<option VALUE='3'"; if($p3== 3 )echo" selected"; echo">3</option>
					<option VALUE='4'"; if($p3== 4 )echo" selected"; echo">4</option>
					<option VALUE='5'"; if($p3== 5 )echo" selected"; echo">5</option>
					<option VALUE='6'"; if($p3== 6 )echo" selected"; echo">6</option>
					<option VALUE='7'"; if($p3== 7 )echo" selected"; echo">7</option>
					<option VALUE='8'"; if($p3== 8 )echo" selected"; echo">8</option>
					<option VALUE='9'"; if($p3== 9 )echo" selected"; echo">9</option>
					<option VALUE='10'"; if($p3== 10 )echo" selected"; echo">A</option>
				</select>
		  </td>
        </tr>
		<tr>
          <td colspan='2'>&nbsp;</td>
        </tr>
		<tr>
          <td width='25%' height='25' valign='top' class='text'>Patch</td>
          <td width='75%' height='25' valign='top'><input size='70' name='patch' value='$patch' tabindex='8'></td>
        </tr>
        <tr>
          <td colspan='2'>&nbsp;</td>
        </tr>
		<tr>
          <td width='25%' height='25' valign='top' class='text'>Order</td>
          <td width='75%' height='25' valign='top'><input size='70' name='order' value='$ord' tabindex='9'></td>
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