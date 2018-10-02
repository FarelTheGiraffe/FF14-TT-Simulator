<?php
$path= $_GET['path']; 
if($path==""){ $path="home.htm";
		$pagetitle = "Triple Triad Simulator"; }
		else
		{
		if($path=='cards.htm')$pagetitle = "Cards";
		if($path=='npc.htm')$pagetitle = "Players";
		if($path=='report.htm')$pagetitle = "Report";

			$pagetitle .= " - Triple Triad Simulator";
		}


?>

