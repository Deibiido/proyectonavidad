 <?php
    $enlace = mysqli_connect("localhost", "proyecto", "proyecto", "proyecto");
    //Elimino la fila que quiero con el identificador que tienen
    $peticion = "DELETE FROM medicamentos WHERE Identificador = ".$_GET['id']."";
    mysqli_query($enlace,$peticion);
    echo '<meta http-equiv="refresh"
    content="5; url=paneldecontrol.php">';
 
?>