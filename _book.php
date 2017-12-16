<?php
  $db=mysqli_connect("localhost","root","","trainticket");

  $seats=$_POST['seats'];
  $cabin=$_POST['cabin'];
  $code=$_POST['code_pay'];
  $pay=$_POST['amt_'];
  $from_=$_POST['_from'];
  $to_=$_POST[''];
  $dat=$_POST[''];

  $res=mysqli_query($db,"SELECT $cabin FROM `cabins` `date_`='$dat' AND `from_`='$from_' AND `to`='$to_'");

  $json_array;

  while ($cols=mysqli_fetch_array($res)) {
      $json_array=$cols[0];
  }

  $arrlength=count($seats);

  for($x = 0; $x < $arrlength; $x++) {
    	$json_array=$json_array.$seats[$x];
  
	}

	$updt="UPDATE `cabins` SET `$cabin`='$json_array' WHERE `id`='1'";

	$ins=mysqli_query($db,$updt) or die(mysql_error());

	if ($ins==true) {
		echo "Successfull";
	}else{
		echo "Unsuccessful";
	}


  ?>