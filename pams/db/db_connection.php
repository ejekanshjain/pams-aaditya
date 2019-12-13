<?php
    $username = "root";
    $password = "";
    $database = "pams";
    $server = "localhost";
    $db = mysqli_connect($server, $username, $password);
    $db_found = mysqli_select_db($db, $database);
    if(!$db_found){
        die("Database not found");
    }
?>