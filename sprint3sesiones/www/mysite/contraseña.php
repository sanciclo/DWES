<?php 
    $db = mysqli_connect('localhost', 'root','1234','mysitedb') or die('Fail');


    session_start();
    $user = 'NULL';
    if (!empty($_SESSION['user_id'])) {
        $user = $_SESSION['user_id'];
    }
    $Antigua_posted = $_POST['f_antigua'];
    $Nueva_posted = $_POST['f_nueva'];

    $query = 'SELECT id, contraseña FROM tUsuarios where id = "'.$user.'"';
    $result = mysqli_query($db, $query) or die('Query error');
    if (mysqli_num_rows($result)>0){
        $only_row = mysqli_fetch_array($result);
        if ($only_row[1] == $Antigua_posted){
            $query2 = "UPDATE  tUsuarios SET contraseña = '".$Nueva_posted."' WHERE id =".$user.'; ';
            $result = mysqli_query($db, $query2) or die('Query2 error');
            header('Location: main.php');
        } else{
            echo '<p>Contraseña incorrecta</p>';
        }
    }
    ?>