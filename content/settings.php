<?php
$path= $_GET['path']; 
if($path==""){ $path="home.htm";
		$seitentitel = "Triple Triad Simulator"; }
		else
		{
		if($path=='cards.htm')$seitentitel = "Cards";
		if($path=='npc.htm')$seitentitel = "Players";

			$seitentitel .= " - Triple Triad Simulator";
		}


?>

