<?php

try {
  require 'funcoes.php';
} catch (Throwable $e) {
  echo 'O arquivo funcoes.php não foi encontrado.<br><br>';
  echo $e->getMessage();

  return;
}

$IMPOSTO_CLIENTE = 1.03;
$IOF = 1.0038;

$nome = $_POST['nome'];
$ehcliente = $_POST['ehcliente'];
$score = $_POST['score'];
$valor = $_POST['valor'];
$parcelas = $_POST['parcelas'];
$seguro = $_POST['seguro'];

$valorDaParcela = 0;
$juros = 3;

if (!isset($nome) || !isset($ehcliente) ||  !isset($valor) || !isset($parcelas)) {
  mostrarErro('Uma ou mais variaveis não foram definidas');
  return false;
}

if (!trim($nome)) {
  mostrarErro('Nome deve estar preenchido');
  return false;
}

if ($ehcliente != 'sim' && $ehcliente != 'nao') {
  mostrarErro('"ehcliente" somente aceita os valores "sim" ou "nao"');
  return false;
}

if ($ehcliente == 'nao' && !isset($score)) {
  mostrarErro('Uma ou mais variaveis não foram definidas');
  return false;
}

if (!is_numeric($score)) {
  mostrarErro('"score" deve ser do tipo inteiro');
  return false;
}

if (!is_numeric($valor)) {
  mostrarErro('"valor" deve ser do tipo inteiro');
  return false;
}

if (!is_numeric($parcelas)) {
  mostrarErro('"parcelas" deve ser do tipo inteiro');
  return false;
}

if ($ehcliente == 'nao' && $score < 0 || $score > 1000) {
  mostrarErro('"score" deve ser maior que ou igual 0 e menor ou igual a 1000');
  return false;
}

if ($valor < 100) {
  mostrarErro('"valor" deve ser maior que ou igual 100');
  return false;
}

if ($parcelas < 1 || $parcelas > 24) {
  mostrarErro('"parcelas" deve ser maior que ou igual 1 e menor ou igual a 24');
  return false;
}

if ($seguro) {
  $valor += 49.90;
}

if ($ehcliente == 'nao') {
  $valor += 35;
  $resultado = adicionarJurosScore($valor, $score);

  $valor = $resultado['valor'];
  $juros = $resultado['juros'];
} else {
  $valor *= $IMPOSTO_CLIENTE;
}

$valor *= $IOF;

$valorDaParcela = $valor / $parcelas;

return true;
