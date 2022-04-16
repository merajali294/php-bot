<?php

include_once 'db.php';

$text = mysqli_real_escape_string($conn, $_POST['text']);
$sql = " SELECT answer from chat_hints where question like '%$text%' ";
$res = mysqli_query($conn, $sql);
if(mysqli_num_rows($res)>0){
    $row = mysqli_fetch_assoc($res);
    $html =  $row['answer'];
}
else{
    $html = 'no data';
}

 
$tfinal = date('Y-m-d h:i:s' );
mysqli_query($conn, "INSERT INTO messages(type, message, timer) VALUES ('user', '$text' ,'$tfinal' )");
$tfinal = date('Y-m-d h:i:s' );
mysqli_query($conn, "INSERT INTO messages(type, message, timer) VALUES ('bot', '$html' ,'$tfinal' )" );
echo $html;

// $sql2 = " SELECT * FROM `messages` ";
// $res2 = mysqli_query($conn,$sql2);
// if(mysqli_num_rows($res2)>0){
//     while($row = mysqli_fetch_assoc($res2)) {
//         echo "id: " . $row["type"]. " - Name: " . $row["message"]. " " . $row["timer"]. "<br>";
//       }
// }