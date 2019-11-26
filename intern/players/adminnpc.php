<?php session_start();require("../dbconnect/conn.php");

$o= $_GET['o'];

$direction= $_GET['direction'];

if ($o=="") 		$order="ORDER BY Patch,Name;";
if ($o=="name") 	$order="ORDER BY Name  $direction;";
if ($o=="rule") 	$order="ORDER BY rule1  $direction, rule2 $direction, Name;";
if ($o=="location") $order="ORDER BY location  $direction,Name;";
if ($o=="patch") 	$order="ORDER BY Patch  $direction,Name;";


if ($direction=="desc")	$direction="asc";
elseif ($direction=="asc")	$direction="desc";
if ($direction=="")	$direction="desc";


if ($o=="name") 	$directionname		="&direction=$direction";
if ($o=="rule") 	$directionrule		="&direction=$direction";
if ($o=="location") $directionlocation	="&direction=$direction";
if ($o=="patch") 	$directionpatch		="&direction=$direction";


$query = "SELECT U.id AS Npcid,U.name AS Name, U.location AS Location, U.patch AS Patch, U.inneed AS Need,
R1.name AS rule1, R2.name AS rule2, deleted
    FROM tt_npcs U
    JOIN tt_rules R1 ON (R1.id = U.r1)
    JOIN tt_rules R2 ON (R2.id = U.r2)
WHERE deleted=0
$order";

        require("../dbconnect/get_query.php");
        if(!$result) echo" Query failed !".mysql_error();

        $link->close;
?>

<html>
<?php 
include("../inter_header.php");
?>
<body><center>
<div class='header'>Player NPCs</div>

<div class='buttonbox'>
	<a href='npcnew.php'  class='linkbutt_int'>
		<button type="button" class="btn btn-primary">Add NPC</button>
	</a>
	<a href='adminnpc.php'  class='linkbutt_int'>
		<button type="button" class="btn btn-primary">All players</button>
	</a>
</div>


<div align='center'>
	<div style='width:800px; max-width:100%; padding:  0 0 20px 0;'>
	<?php
echo '<table border="1">';
echo"<div class='row bold'>				
				<div class='col-xs-6 col-sm-2'>
					<a href='adminnpc.php?o=name$directionname'>
					Name</a>
				</div>
				<div class='col-xs-6 col-sm-4'>
					<a href='adminnpc.php?o=location$directionlocation'>
					Location </a>
				</div>
				<div class='col-xs-6 col-sm-2'>
					<a href='adminnpc.php?o=rule$directionrule'>
					Rules </a>
				</div>
				<div class='col-xs-6 col-sm-2'>
					<a href='adminnpc.php?o=patch$directionpatch'>
					Patch	 </a>
				</div>
				<div class='col-xs-6 col-sm-2'>&nbsp;</div>
			</div>";

		$num = mysqli_num_rows($result);
        for ($i = 0; $i < $num; $i++)
            {
         	$row = mysqli_fetch_array($result);
			$npcid = $row[Npcid];
			$name = $row[Name];
			$rule1 = $row[rule1];
			$rule2 = $row[rule2];
			$location = $row[Location];
			$patch = number_format($row[Patch],2);
			$need = $row[Need];

			echo"
			<div class='row '>
				<div class='col-xs-6 col-sm-2'>
					<a href='npcedit.php?nr=$npcid'>";
					
						if ($need==0) echo "<big><b>";
						echo $name;
						if ($need==0) echo "</b></big>";
						
						echo"
					</a>
				</div>
				<div class='col-xs-6 col-sm-4'>$location</div>
				<div class='col-xs-6 col-sm-2'>";	
					echo"$rule1";
					if($rule2!="")echo",$rule2";
				echo"
				</div>
				<div class='col-xs-6 col-sm-2'>$patch</div>
				<div class='col-xs-6 col-sm-2'>	
					<a href='npcdel.php?nr=$npcid'>delete</a>
				</div>
			</div>
			<div class='row cardinlist'>
				<div class='col-xs-12' style='text-align:left; padding-bottom:20px;'>
					<a href='npc_card.php?nr=$npcid'>Cards:</a>";
					
					$sub=1;
					$query1 = "SELECT tt_cards.name AS npcscard,card_id,npc_id FROM tt_cards
								INNER JOIN tt_card_npc ON
								tt_cards.id=card_id
								WHERE npc_id=$npcid
								ORDER BY npcscard;";
					require("../dbconnect/get_query.php");
					$num1 = mysqli_num_rows($result1);
					
					for ($j = 0; $j < $num1; $j++)
						{
						$row1 = mysqli_fetch_array($result1);
						$npcscard = $row1[npcscard];
						if ($j>0) echo", ";
						 echo"$npcscard";
						}
				echo"
				</div>
			</div>";
	        }
echo"</table>";
	
	$link->close;
	$result->free;
	?>
	</div>
</div>
</body>
</html>