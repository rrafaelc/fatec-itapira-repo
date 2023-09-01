<?php

$termo = $_POST['termo'];
$qtd = $_POST['qtd'];
$razao = $_POST['razao'];

echo "<h1>Progressão Geométrica</h1>";

for ($i = 0; $i < $qtd; $i++) {
  echo "a", $i + 1, " --- ", $termo, "<br>" ;
  $termo = $termo * $razao;
}
