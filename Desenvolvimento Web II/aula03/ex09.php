<?php

$num = $_POST['num'];

echo "<h1>Gerador de números</h1>";

for ($i = 0; $i <= $num; $i++) {
  echo "$i<br>";
}