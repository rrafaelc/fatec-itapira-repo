<?php

$prod1 = $_POST['prod1'];
$prod2 = $_POST['prod2'];
$desc1 = $_POST['desc1'];
$desc2 = $_POST['desc2'];

$total = 0;

$prod1 = $prod1 * (1 - $desc1 / 100);
$prod2 = $prod2 * (1 - $desc2 / 100);

$total = $prod1 + $prod2;

echo "<h1>Calcula desconto</h1>";

echo "O valor 1º produto com desconto é R$ $prod1<br><br>";

echo "O valor 2º produto com desconto é R$ $prod2<br><br>";

echo "O valor total agora é R$ $total";