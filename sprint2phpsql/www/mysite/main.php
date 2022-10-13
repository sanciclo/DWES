
<html>
<head>
</head>
<body>
<?php
	$db = mysqli_connect('localhost', 'root', '1234', 'mysitedb') or die('Fail');
?>
	<h1>Conexión establecida</h1>
	<?php
	$query = 'SELECT * FROM tPeliculas';
	$result = mysqli_query($db, $query) or die('Query error');
	while ($row = mysqli_fetch_array($result)){
		echo $row['0'];
		echo '<br>';
		echo $row['1'];
		echo '<br>';
		echo '<img src="'.$row['2'];
		echo 'width="80" heigh="120>';
		echo '<br>';
		echo $row['3'];
		echo '<br>';
		echo $row['4'];
		echo '<br>';
	}
	?>
</body>
</html>
