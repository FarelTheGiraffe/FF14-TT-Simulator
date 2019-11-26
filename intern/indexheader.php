<?php 
session_start();
include("intern/dbconnect/conn.php");
include("intern/config.php");
include("content/settings.php");


if(isset($_GET['a'])=='guest'){
	$_SESSION['user'] 	= 'guest';
	$_SESSION['userid']	= 30;
}

if(!isset($_SESSION['user']) && isset($_POST['user']))
{
	$user_nick			= $_POST["user"];
	$passthru			= $_POST["password"];
	$sql = "SELECT user_id FROM tt_users WHERE nick = '$user_nick' and user_pass=md5('$passthru')";
	$result = mysqli_query($db,$sql);
	$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
	$count = mysqli_num_rows($result);
	$user_id = $row[user_id];
	if ($count==1){
		$_SESSION['user'] 	= $user_nick;
		$_SESSION['userid']	= $user_id;
	} else {
		$error = "Your Login Name or Password is invalid";
	}
}
?>