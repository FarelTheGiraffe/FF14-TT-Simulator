<?php 
require("../dbconnect/conn.php");

$nr			= $_GET['nr'];
$insert		= $_POST['insert'];
$delete		= $_POST['delete'];
$sort		= $_POST['sort'];
echo""
?>
<html>
<?php 
include("../inter_header.php");
?>
<body><center>
<div class='header'>Add cards to NPC</div>

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
<?php

echo"
		  <form name='tt_card_npc' action='npc_card.php?nr=$nr' method='post'>
	       <tr>
			   <TD bgcolor='#E7E8FF' colspan='5' class='head' style='padding-left:25px;'>Add card to player</td>
			</tr>
			<tr>
				<td align='center' colspan='5' class='text'>&nbsp;</td>
			</tr>
		   <tr>
			   <td colspan='3' align='center'>
					<table class='text' align='center' border='0'>
						<tr>
							<td>&nbsp;</td>
						</tr>";

			//// Get the name of the card //////
	              $query = " select name from  tt_npcs where id=$nr";
				  include("../dbconnect/get_query.php");

                  if(!$result)echo"Query 1 failed";
				  $row = $result->fetch_assoc();

                  $name = $row[name];
                  
				  $result->free;						echo"
						<tr>
							<td colspan='3' align='center' class='text'>
								Cards belonging to <b>$name</b>
							</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td align='right' style='padding-right:10px;'>Already owned cards</td>
							<td>&nbsp;</td>
							<td>List of cards</td>
							
						</tr>
						<tr>
							<td align='right'>";
						
// ********************************  Adding the card ******************************* /
 if($insert > 0)

         {
          $query = " insert ignore into  tt_card_npc ( npc_id, card_id, sort)
                                          values ($nr, $insert, $sort)";


include("../dbconnect/get_query.php");
$result->free;

                  $insert = 0; $delete=0;
         }
		 
		 
// ********************************  Removing the card ******************************* /

 if($delete >0 )
         {
        $query = " delete from tt_card_npc where
                     card_id = $delete and npc_id = $nr";

include("../dbconnect/get_query.php");
$result->free;
                 $delete = 0; $insert = 0;
         }

/**************** Query *********************/
         $query = " select * from tt_card_npc, tt_cards
                     where npc_id = $nr
                     and tt_cards.id = card_id
					 and deleted=0
					 order by sort, name
					 ";

 require("../dbconnect/get_query.php");
 if(!$result)echo"Query 2 failed";

                      echo"
					  <SELECT NAME='delete' size='16' style='width: 180px;'>";
                        $num = mysqli_num_rows($result);
                        for ($i = 0; $i < $num; $i++)
                        {
							$row = mysqli_fetch_array($result);
							$sort = $row[sort];
							$sort = sprintf("%02d", $sort);
							echo "<OPTION  VALUE='$row[id]'>[$sort] $row[name]";
                        }
					$result->free;
                echo "</SELECT>
				</td>";
	
				$query = "select * from tt_cards where 1 and deleted=0 order by name";

 require("../dbconnect/get_query.php");
                if(!$result)echo"Query 3 failed".mysql_error();

				echo"
				<td align='center' valign='middle'>
					<input name='sort' value='0' style='text-align:center;' tabindex='1'>
					<br>
					<input type='submit' value='<--->'>
				</td>
				<td>
					<SELECT NAME='insert' size='16' style='width: 180px;'>";

                        $num = mysqli_num_rows($result);
                        for ($i = 0; $i < $num; $i++)
                       {
                         $row = mysqli_fetch_array($result);
                         echo"<OPTION VALUE='$row[id]'";
						 if($row[id]==0)echo" class='main'";echo">$row[name]";
                        }
					$result->free;

                    echo"
					</SELECT>
				</td>
			</tr>
			<input type='hidden' name='id' value='$id'>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td height='50'>&nbsp;</td>
			</tr>
			<tr>
				<td colspan='5' align='center'>
					<table border='1' style='border-collapse:collapse;' bgcolor='#ffffff' bordercolor='#002F28' class='text' width='200'>
					 <tr>
					   <td bgcolor='#D1D2E5' onMouseover=\"javascript:this.style.backgroundColor='#e1e1e1';\"
						   onMouseout=\"javascript:this.style.backgroundColor='#D1D2E5';\"
						   style='display:block; vertical-align:middle;' align='center'>
						   <a href='adminnpc.php?filter=all' style='text-decoration:none'>Done</a>
						</td>
					 </tr>
					</table>
	           </td>
           </tr>";

		   echo"
          </form>
	</table>";

$link->close;

?>
 </table>
 </div>
 </td>
 </tr>
</body>
</html>