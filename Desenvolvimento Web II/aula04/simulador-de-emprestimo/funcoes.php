<?php

function mostrarErro($msg)
{
  $myBankPage = "./";
  echo "<h2>Erro: <span style='color: red;'>$msg</span></h2>";
  echo "<a href='$myBankPage'>Voltar ao MyBank</a>";
}

function adicionarJurosScore($valor, $score)
{
  $resultado = [];

  if ($score < 300) {
    $resultado['valor'] = $valor * 1.2;
    $resultado['juros'] = 20;
  } else if ($score < 500) {
    $resultado['valor'] = $valor * 1.15;
    $resultado['juros'] = 15;
  } else if ($score < 700) {
    $resultado['valor'] = $valor * 1.10;
    $resultado['juros'] = 10;
  } else {
    $resultado['valor'] = $valor * 1.05;
    $resultado['juros'] = 5;
  }

  return $resultado;
}
