<?php

$nome = $_POST['nome'];
$sexo = $_POST['sexo'];
$idade = $_POST['idade'];

if ($idade < 18) {
  echo "Não pode se alistar";
} else if ($idade >= 18 && $sexo == 'F' || $sexo == 'f') {
  echo "Não pode se alistar";
} else if ($sexo == 'M' || $sexo == 'm'){
  echo "Pode se alistar";
} else {
  echo "Dados inválidos";
}
