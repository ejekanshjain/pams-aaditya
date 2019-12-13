<?php
    session_start();
    session_destroy();
    $error_msg="";
    if($_SERVER['REQUEST_METHOD']=='POST'){
        include './db/db_connection.php';
        $user = $_POST['useremail'];
        $pass = $_POST['userpassword'];
        $SQL = "SELECT * FROM users";
        $result = mysqli_query($db,$SQL);
        while($db_row = mysqli_fetch_assoc($result)){
            if( ($user == $db_row['email']) AND ($pass == $db_row['password'])){
                session_start();
                $role = $db_row['role_id'];
                $_SESSION['user'] = $user;
                $_SESSION['role'] = $role;
                mysqli_close($db);
                if($role == 1){
                    header("Location: ./admin_index.php");
                }
                else if($role == 2){
                    header("Location: ./spoc_index.php");
                }
                else if($role == 3){
                    header("Location: ./coach_index.php");
                }
                else if($role == 4){
                    header("Location: ./mentor_index.php");
                }
                else if($role == 5){
                    header("Location: ./student_index.php");
                }
                break;
            }
        }
        $error_msg="invalid email or password";
        mysqli_close($db);
    }
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
    </head>
    <body>
        <form method="POST" action="./login.php">
            <?php
                echo $error_msg;
            ?>
            <input type="email" name="useremail" required>
            <input type="password" name="userpassword" required>
            <input type="submit">
        </form>
    </body>
</html>