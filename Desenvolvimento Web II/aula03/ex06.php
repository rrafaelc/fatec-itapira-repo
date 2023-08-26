<?php

$letra = $_POST['letra'];

echo "<h1>Exercicio 06</h1>";

if ($letra == 'a' or $letra == 'A') {
  echo "Azul";
} else if ($letra == 'v' or $letra == 'V') {
  echo "Vermelho";
} else {
  echo "Cor invalida";
}

echo "<br><br>Programa encerrado";