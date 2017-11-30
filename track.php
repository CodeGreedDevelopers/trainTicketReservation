<?php
  $db=mysqli_connect("localhost","root","","trainticket");

  $cab=$_POST['cabin'];

  $res=mysqli_query($db,"SELECT $cab FROM `cabins`");

  $json_array;

  while ($cols=mysqli_fetch_array($res)) {
      $json_array=$cols[0];
  }
//  header('Content-Type:application/json');
 // $array=explode('#',$json_array);
  echo json_encode($json_array);
  ?>
