<?php

$num = $_POST['num'];

echo "<h1>Exercicio 08</h1>";

if ($num == 0) {
  echo "Numero nulo";
} else if ($num < 0) {
  echo "Numero negativo";
} else {
  echo "Numero positivo";
}

echo "<br><br>Programa encerrado";