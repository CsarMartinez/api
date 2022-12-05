<?php

header("Content-Type:application/json");


if(!empty($_GET["codigo"]))
{
   $codigo = $_GET ["codigo"];    


   $conn = new mysqli("localhost", "root","", "productos");
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$query = "SELECT nombre_producto, precio_producto, imagen_producto, descripcion_producto FROM productos WHERE id_producto=".$codigo.";";
$result = $conn->query($query);

if ($result->num_rows > 0) {

  while($row = $result->fetch_assoc()) {
    //echo "id: " . $row["nombre_producto"]. " - Name: " . $row["precio_producto"]. " " . $row["imagen_producto"]. "<br>";
    peticion(200, $row["nombre_producto"], $row["precio_producto"], $row["imagen_producto"], $row["descripcion_producto"]); 
   }
} else {
  //echo "0 results";
  peticion(200, NULL, NULL, NULL, NULL);
}
$conn->close();
   // peticion(200,NULL,NULL,NULL);
}
else{
   peticion(400,NULL,NULL,NULL,NULL);
}


function peticion($status, $data, $precio, $imagen, $descripcion){
   header("HTTP/1.1".$status);
   $respuesta["Status"] = $status;
   $respuesta["Nombre"] = $data;
   $respuesta["Precio"] = $precio;
   $respuesta["Imagen"] = $imagen;
   $respuesta["Descripcion"] = $descripcion;

   $json_response = json_encode($respuesta);
   echo $json_response;
}
?>