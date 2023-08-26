<?php

$num1 = $_POST['num1'];
$num2 = $_POST['num2'];

$mult = $num1 * $num2;

if ($mult >= 50) {
  echo "A multiplicacao entre $num1 e $num2 ficou: $mult";
} else {
  echo "Programa encerrado";
}