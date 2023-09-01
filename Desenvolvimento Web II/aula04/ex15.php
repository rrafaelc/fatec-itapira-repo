<?php

$letra = $_POST['letra'];

$letras = ['A', 'B', 'C', 'D', 'E'];

for ($i = 0; $i < count($letras); $i++) {
  if ($letras[$i] == $letra) {
    $letras[$i] = 'X';
  }  
}

echo "<h1>Array alterado</h1>";

for ($i = 0; $i < count($letras); $i++) {
  echo "$letras[$i]<br>";
}

