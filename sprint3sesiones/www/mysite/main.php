<html>
<head>
<style>

            img:hover{
            -webkit-transform: scale(1.5);
            -moz-transform: scale(1.5);
            -o-transform: scale(1.5);
            -ms-transform: scale(1.5);
            transition: all 4s;
            transform: scale(1.5)
            
            }
		
		</style>
</head>
<body>
<?php
	$db = mysqli_connect('localhost', 'root', '1234', 'mysitedb') or die('Fail');
?>
	<h1>Conexión establecida</h1>
	<?php
	$query = 'SELECT * FROM tPeliculas';
	$result = mysqli_query($db, $query) or die('Query error');
	echo '<table style="border:1px solid black;">';
	while ($row = mysqli_fetch_array($result)){
	  echo '<tr>';
		echo '<td>';
		  echo $row['0'];
		echo '</td>';
		echo '<td>';
			echo '<a href="/detail.php?id='.$row['0'].'">'.$row['1'].'</a>';
		echo '</td>';
		echo '<td>';
		  echo '<img src="'.$row['2'];
		  echo '"width="80" height="120">';
		echo '</td>';
	  echo '</tr>';
	}
	echo '</table>';
	mysqli_close($db);
	?>
	<a href="/logout.php">Logout</a>
</body>
</html>

