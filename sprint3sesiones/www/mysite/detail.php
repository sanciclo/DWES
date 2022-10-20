<?php
$db = mysqli_connect('localhost', 'root', '1234', 'mysitedb') or die('Fail');
?>
<html>

<body style="text-align: center;">
    <?php
    if (!isset($_GET['id'])) {
        die('No se ha especificado una película');
    }
    $pelicula_id = $_GET['id'];
    $query = 'SELECT * FROM tPeliculas WHERE id=' . $pelicula_id;
    $result = mysqli_query($db, $query) or die('Query error');
    $only_row = mysqli_fetch_array($result);
    echo '<h1>' . $only_row['nombre'] . '</h1>';
    echo '<img src=" '.$only_row['url_imagen'].'"  width="80" height="120">';
    echo '<h2>' . $only_row['categoria'] . '</h2>';
    ?>
    <h3>Comentarios:</h3>
    <ul>
        <?php
        $query2 = 'SELECT * FROM tComentarios WHERE pelicula_id=' . $pelicula_id;
        $result2 = mysqli_query($db, $query2) or die('Query error2');
        while ($row = mysqli_fetch_array($result2)) {
            $fecha = $row['fecha'];
					if (is_null($fecha)) {
						echo '<li>'.$row['1'].' (Sin fecha registrada)</li>';
					}else {
						echo '<li>'.$row['1'].' ('.$row['fecha'].')</li>';
					}
        }
        mysqli_close($db);
        ?>
    </ul>
    <p>Deja un nuevo comentario:</p>
    <form action="/comment.php" method="post">
        <textarea rows="4" cols="50" name="new_comment"></textarea><br>
        <input type="hidden" name="id" value="<?php echo $pelicula_id; ?>">
        <input type="submit" value="Comentar">
        <input type="hidden" name="fecha" value="<?php echo $fecha; ?>">
    </form>
</body>

</html>
