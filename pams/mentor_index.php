<?php
    session_start();
    $user = $_SESSION['user'] or header("Location: ./login.php");
    $role = $_SESSION['role'] or header("Location: ./login.php");
    if($role != 4){
        header("Location: login.php");
    }
?>