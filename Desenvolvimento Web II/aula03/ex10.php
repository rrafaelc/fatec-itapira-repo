<?php

$num = $_POST['num'];
$cont = 0;

echo "<h1>Numeros Impares</h1>";

while ($cont <= $num) {
  if ($cont % 2 == 1) {
    echo "$cont<br>";
  }

  $cont++;
}