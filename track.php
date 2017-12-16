<?php
  $db=mysqli_connect("localhost","root","","trainticket");

  $cab=$_POST['cabin'];
  $dat=$_POST['_date'];
  $from_=$_POST['_s_from'];
  $to_=$_POST['_s_to'];


  $res=mysqli_query($db,"SELECT $cab FROM `cabins` WHERE `date_`='$dat' AND `from_`='$from_' AND `to`='$to_'");

  $json_array;

  while ($cols=mysqli_fetch_array($res)) {
      $json_array=$cols[0];
  }
//  header('Content-Type:application/json');
 // $array=explode('#',$json_array);
  echo json_encode($json_array);
  ?>
