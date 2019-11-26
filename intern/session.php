<?php 
   include('config.php');
   session_start();
   
   $user_check = $_SESSION['login_user'];
   
   $ses_sql = mysqli_query($db,"select nick from tt_admins where nick = '$user_check' ");
   
   $row = mysqli_fetch_array($ses_sql,MYSQLI_ASSOC);
   
   $login_session = $row['nick'];
   
   if(!isset($_SESSION['login_user'])){
      header("location:login.php");
   }
?>