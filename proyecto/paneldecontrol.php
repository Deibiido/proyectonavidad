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
            
            table tr th{
                width: 20px;
                height: 20px;
                border: 1px solid black;
                padding: 20px;
                background: white;
                border-radius: 10px;
                text-align: center;
                
            }
            table tr:nth-child(odd){
                background: rgb(220,220,220);
                padding: 5px;
                width: 100%;
            }
            table tr td{
                padding: 5px;
                width: 100px;
            }
            td input{
                width: 370px;
                height:200px;
                font-size:14pt;

            }

        </style>
    </head>
    <body>

<?php
// Abro la conexión con la base de datos
session_start();
//Esta parte va con la de login, si tienes el pasas correcto te dejan entrar, si no te sale un mensaje
if(!isset($_SESSION['pasas']) || $_SESSION['pasas'] == false){
    die("Te has intentado colar");
}

//Saludo de bienvenida con el Nombre y Apellido del que haya iniciado sesion
echo "Bienvenido, ".$_SESSION['nombre']." ".$_SESSION['apellidos']."<br>";

    
?>

<!--Aquí se escribe la consulta y se envia a la base de datos-->
<h1> Nueva consulta </h1>    
<table cellpadding=0 cellspacing=0>
    <tr>
    <th>SIP</th>
    <th>Testimonio paciente</th>
    <th>Observación del medico</th>
    <th>Recomendación</th>
    </tr>
    

    <tr>
        <form action="insertar.php" method="POST">
            <td><input type="text" name="SIP" placeholder="..."></td>
            <td><input type="text" name="testimoniopaciente" placeholder="..."></td>
            <td><input type="text" name="observacion" placeholder="..."></td>
            <td><input type="text" name="recomendacion" placeholder="..."></td>
            <td><input type="submit" value="Enviar"></td>
        </form>
    </tr>
</table>
<!--Aquí se escribe la consulta y se envia a la base de datos-->

<!-- Para buscar consultas anteriores por SIP -->
 <form  action="buscar.php" method="POST">
    Buscar: <input type="text" name="busqueda">
 </form>
        
<a href="listame.php">Guía medicamentos</a> <br> 
<a href='logout.php'>Cerrrar sesión</a>
     
</body>
</html>
