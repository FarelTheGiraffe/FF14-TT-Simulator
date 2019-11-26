<?php 
require("../dbconnect/conn.php");

$create= $_GET['create'];
$rarity	= $_POST['rarity'];
$type	= $_POST['type'];
$name	= $_POST['name'];
$p1		= $_POST['p1'];
$p2		= $_POST['p2'];
$p3		= $_POST['p3'];
$p4		= $_POST['p4'];
$patch	= $_POST['patch'];
$ord	= $_POST['ord'];

if ($create==1)
{
if($ord=="")$ord=0;



$query = "insert into tt_cards
                       (
						rarity,
						type,
						name,
						p1,
						p2,
						p3,
						p4,
						patch,
						ord
						)
                         VALUES
                        (
						\"$rarity\",
						\"$type\",
						\"$name\",
						\"$p1\",
						\"$p2\",
						\"$p3\",
						\"$p4\",
						\"$patch\",
						\"$ord\"
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
<div class='header'>Add card</div>

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
        <form method='POST' action='cardnew.php?&create=1' enctype='multipart/form-data' >
        <tr>
          <td colspan="2">&nbsp;</td>
        </tr>

        <tr>
          <td width="25%" height="25" valign="top" class="text">Card name</td>
          <td width="75%" height="25" valign="top"><input size="70" name="name" tabindex="1"></td>
        </tr>
        <tr>
          <td colspan="2">&nbsp;</td>
        </tr>
		
        <tr>
			<td width="25%" height="25" valign="top" class="text">Rarity</td>
			<td width="75%" height="25" valign="top">
		  
				<select name='rarity' size='1' style='width:200px;' tabindex='2'>
					<option VALUE='1'>★</option>
					<option VALUE='2'>★★</option>
					<option VALUE='3'>★★★</option>
					<option VALUE='4'>★★★★</option>
					<option VALUE='5'>★★★★★</option>
					<option VALUE='6'>★★★★★★</option>
				</select>
			</td>	
        </tr>
        <tr>
          <td colspan="2">&nbsp;</td>
        </tr>
		
		<?php
		echo"
		

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

			  	 echo"<OPTION VALUE='$row[id]'>$row[name]</option>";
				 }
				 echo"
			</select>
		</td>
		</tr>";
		?>
		<tr>
          <td colspan="2">&nbsp;</td>
        </tr>
		<tr>
          <td width="25%" height="25" valign="top" class="text">Power </td>
          <td width="75%" height="25" valign="top">

				<select name='p1' size='1' tabindex='4' style="margin-left:20px;">
					<option VALUE='1'>1</option>
					<option VALUE='2'>2</option>
					<option VALUE='3'>3</option>
					<option VALUE='4'>4</option>
					<option VALUE='5'>5</option>
					<option VALUE='6'>6</option>
					<option VALUE='7'>7</option>
					<option VALUE='8'>8</option>
					<option VALUE='9'>9</option>
					<option VALUE='10'>A</option>
				</select>
		  </td>
        </tr>
		<tr>
          <td width="75%" height="25" valign="top">&nbsp;</td>
          <td width="75%" height="25" valign="top">
				<select name='p4' size='1' tabindex='7'>
					<option VALUE='1'>1</option>
					<option VALUE='2'>2</option>
					<option VALUE='3'>3</option>
					<option VALUE='4'>4</option>
					<option VALUE='5'>5</option>
					<option VALUE='6'>6</option>
					<option VALUE='7'>7</option>
					<option VALUE='8'>8</option>
					<option VALUE='9'>9</option>
					<option VALUE='10'>A</option>
				</select>
				<select name='p2' size='1' tabindex='5'>
					<option VALUE='1'>1</option>
					<option VALUE='2'>2</option>
					<option VALUE='3'>3</option>
					<option VALUE='4'>4</option>
					<option VALUE='5'>5</option>
					<option VALUE='6'>6</option>
					<option VALUE='7'>7</option>
					<option VALUE='8'>8</option>
					<option VALUE='9'>9</option>
					<option VALUE='10'>A</option>
				</select>
		  </td>
        </tr>
		<tr>
          <td width="75%" height="25" valign="top">&nbsp;</td>
          <td width="75%" height="25" valign="top">
				<select name='p3' size='1' tabindex='6' style="margin-left:20px;">
					<option VALUE='1'>1</option>
					<option VALUE='2'>2</option>
					<option VALUE='3'>3</option>
					<option VALUE='4'>4</option>
					<option VALUE='5'>5</option>
					<option VALUE='6'>6</option>
					<option VALUE='7'>7</option>
					<option VALUE='8'>8</option>
					<option VALUE='9'>9</option>
					<option VALUE='10'>A</option>
				</select>
		  </td>
        </tr>
		<tr>
          <td colspan="2">&nbsp;</td>
        </tr>
		<tr>
          <td width="25%" height="25" valign="top" class="text">Patch</td>
          <td width="75%" height="25" valign="top"><input size="70" name="patch" value="1.0" tabindex="8"></td>
        </tr>
        <tr>
          <td colspan="2">&nbsp;</td>
        </tr>
		
		<tr>
          <td width="25%" height="25" valign="top" class="text">Order</td>
          <td width="75%" height="25" valign="top"><input size="70" name="order" value="" tabindex="9"></td>
        </tr>
        <tr>
          <td colspan="2">&nbsp;</td>
        </tr>
		
		
		
		<tr>
          <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
          <td width="25%" height="21"></td>
          <td width="75%" height="21"><input type="submit" value="Send" name="Add" tabindex="20"></td>
        </tr>
	</form>
  </table>
</div>

</body>
</html>