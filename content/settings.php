<?php
$path= $_GET['path']; 
if($path==""){ $path="home.htm";
		$pagetitle = "Triple Triad Simulator"; }
		elseif ($path=='logout.htm')	{
			$pagetitle = "Triple Triad Simulator";
		}
		else
		{
		if($path=='cards.htm')$pagetitle = "Cards";
		if($path=='npc.htm')$pagetitle = "Players";		
		if($path=='report.htm')$pagetitle = "Report";
		if($path=='register.htm')$pagetitle = "Registration";
		if($path=='forgot.htm')$pagetitle = "Password reset";
		if($path=='user_settings.htm')$pagetitle = "User Settings";
		if($path=='usercards.htm')$pagetitle = "My Cards";
		if($path=='userdeck.htm')$pagetitle = "My Deck";
		if($path=='usernpcs.htm')$pagetitle = "NPCs defeated";
		if($path=='loginpage.htm')$pagetitle = "Login Page";
		
			$pagetitle .= " - Triple Triad Simulator";
		}


?>
