<?php

$num1 = $_POST['num1'];
$num2 = $_POST['num2'];

echo "<h1>Geração de números sequênciais</h1>";

for ($i = $num1; $i <= $num2; $i++) {
  echo "$i<br>";
}