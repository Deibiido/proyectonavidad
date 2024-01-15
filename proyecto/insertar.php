
<?php

$enlace = mysqli_connect("localhost", "proyecto", "proyecto", "proyecto");

//Meto los datos en la base de datos en esas columnas
$peticion = "
INSERT INTO
consulta
VALUES
(
'".$_POST['SIP']."',
'".$_POST['testimoniopaciente']."',
'".$_POST['observacion']."',
'".$_POST['recomendacion']."'
)
";

$resultado = mysqli_query($enlace,$peticion);
    echo '<meta http-equiv="refresh"
    content="5; url=paneldecontrol.php">';
?>

