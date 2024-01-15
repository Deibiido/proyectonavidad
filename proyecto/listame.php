<html>
    <head>
            <style>
            body,html{
                background: white;
                font-family: sans-serif;
                padding: 0px;
                margin: 0px;
            }
            header{
                background: black;
                color: white;
                padding: 10px;
                width: 100%;
                height: 20px;
                text-align: right;
            }
            header a{
                color: inherit;
                text-decoration: none;
            }
            table tr:nth-child(odd){
                background: rgb(220,220,220);
                padding: 5px;
            }
            table tr td{
                padding: 5px;
            }
            table tr th{
                padding: 10px;

            }
            
        </style>
    </head>

    
    <body>
        
    <h1> Lista de medicamentos </h1>    
            <table cellpadding=0 cellspacing=0 border="1">
            <tr>
            <th>Nombre</th>
            <th>Recomendaco para</th>
            <th>Componentes</th>
            <th>Modalidad</th>
            </tr>
    <!-- Aquí estoy pidiendo los medicamentos que haya en la base de datos medicamentos -->
<?php
    $enlace = mysqli_connect("localhost", "proyecto", "proyecto", "proyecto");
    $peticion = "SELECT * FROM medicamentos";
    $resultado = mysqli_query($enlace,$peticion);
    while ($fila = $resultado->fetch_assoc()) {
        echo '<tr>
            <td>'.$fila['Nombre'].'</td>
            <td>'.$fila['Recomendacion'].'</td>
            <td>'.$fila['Componentes'].'</td>
            <td>'.$fila['Modalidad'].'</td>
            <td>
                <a href="https://cima.aemps.es/cima/publico/home.html"><button>Ver</button></a>
                <a href="eliminar.php?id='.$fila['Identificador'].'"><button>Eliminar</button></a>
            </td>
            <br>
            </tr>';
}
?>
            </table>

                <td><a href="paneldecontrol.php">Volver</a></td>    
    
    
    
    
    </body>
    </html>