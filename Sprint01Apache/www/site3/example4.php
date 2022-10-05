<html>
	<body>
	<h1>Jubilación</h1>
	<?php
	function edad_en_11_años($edad) {
		return $edad + 11;
	}
	function mensaje(&age) {
	if (edad_en_11_años($age)>65) {
	return "En 10 años tendrás edad de jubilación";
	}else {
	return "¡Disfruta de tu tiempo!";
	}
	}
	?>

	<table>
		<tr>
			<th>Edad</th>
			<th>Info</th>
		</tr>
		
		<?php>
		$lista = array(53,54,55,56,57);
		foreach ($lista as $valor) {
			echo "<tr>";
			echo "<td>".$valor."</td>";
			echo "</tr>";
		}
		?>
	</table>
	</body>
</html>
