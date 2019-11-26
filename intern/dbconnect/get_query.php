<?
if($sub>0){
$result1 = $link->query($query1);}
else{$result = $link->query($query);
if(!$result) echo"&raquo; fareladmin query object failed - ".mysqli_error($link); }
?>
