 <?php
    $enlace = mysqli_connect("localhost", "proyecto", "proyecto", "proyecto");
    $peticion = "select * FROM medicamentos";
    mysqli_query($enlace,$peticion);
    echo '<meta http-equiv="refresh"
    content="5; url=paneldecontrol.php">';
 
?>