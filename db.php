<?php

$server = 'localhost';
$user = 'root';
$pwd = '';
$db = 'chatbot';

try {
    // $conn = new PDO("mysql:host=$serv    er;dbname=$db", $user, $pwd);
    $conn = mysqli_connect($server, $user, $pwd, $db);
} catch (\Throwable $th) {
    throw $th;
}