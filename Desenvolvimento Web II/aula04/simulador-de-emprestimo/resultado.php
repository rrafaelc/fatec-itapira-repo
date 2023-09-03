<?php

function error($msg)
{
  $myBankPage = "./";
  echo "<h2>Erro: <span style='color: red;'>$msg</span></h2>";
  echo "<a href='$myBankPage'>Voltar ao MyBank</a>";
}

$nome = $_POST['nome'];
$ehcliente = $_POST['ehcliente'];
$score = $_POST['score'];
$valor = $_POST['valor'];
$parcelas = $_POST['parcelas'];
$seguro = $_POST['seguro'];

if (!isset($nome) || !isset($ehcliente) ||  !isset($valor) || !isset($parcelas)) {
  error('Uma ou mais variaveis não foram definidas');
  return;
}

if (!trim($nome)) {
  error('Nome deve estar preenchido');
  return;
}

if ($ehcliente != 'sim' && $ehcliente != 'nao') {
  error('"ehcliente" somente aceita os valores "sim" ou "nao"');
  return;
}

if ($ehcliente == 'nao' && !isset($score)) {
  error('Uma ou mais variaveis não foram definidas');
  return;
}

if (!is_numeric($score)) {
  error('"score" deve ser do tipo inteiro');
  return;
}

if (!is_numeric($valor)) {
  error('"valor" deve ser do tipo inteiro');
  return;
}

if (!is_numeric($parcelas)) {
  error('"parcelas" deve ser do tipo inteiro');
  return;
}

if ($ehcliente == 'nao' && $score < 0 || $score > 1000) {
  error('"score" deve ser maior que ou igual 0 e menor ou igual a 1000');
  return;
}

if ($valor < 100) {
  error('"valor" deve ser maior que ou igual 100');
  return;
}

if ($parcelas < 1 || $parcelas > 24) {
  error('"score" deve ser maior que ou igual 1 e menor ou igual a 24');
  return;
}

echo "Validado";
