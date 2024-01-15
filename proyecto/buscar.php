<?php
    $enlace = mysqli_connect("localhost", "proyecto", "proyecto", "proyecto");
    //Realizamos la peticion, en este caso queremos todo de consulta donde el sip se parezca a lo que enviamos desde panel de control
    $peticion = "SELECT * FROM consulta WHERE SIP LIKE '%".$_POST['busqueda']."%'";


    $resultado = mysqli_query($enlace,$peticion);
    //Que lo pase por pantalla
    while ($fila = $resultado->fetch_assoc()) {
        echo '<tr>
            <td>'.$fila['testimoniopaciente'].'</td>
            <td>'.$fila['observacion'].'</td>
            <td>'.$fila['recomendacion'].'</td><br>
            </tr>';
            }

?>

<a href="paneldecontrol.php">Volver</a>