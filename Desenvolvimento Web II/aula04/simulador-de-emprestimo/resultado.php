<?php
try {
  $estaValido = require 'calcular.php';

  if (!$estaValido) return;
} catch (Throwable $e) {
  echo 'O arquivo calcular.php não foi encontrado.<br><br>';
  echo $e->getMessage();

  return;
}
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="style.css" />
  <title>Resultado da simulação</title>
</head>

<body>
  <div class="container">
    <div class="title">
      <h1>Seja bem-vindo(a) ao Mybank</h1>
      <h1>Resultado da simulação</h1>
    </div>

    <div class="resultado">
      <p>
        Valor das parcelas: R$ <?= number_format($valorDaParcela, 2, ',', '.') ?>
      </p>
      <p>
        Quantidade de parcelas: <?= $parcelas ?>
      </p>
      <p class="juros">
        Taxa de juros: <?= $juros ?>%
      </p>
      <p>
        Custo Efetivo Total: R$ <?= number_format($valor, 2, ',', '.') ?>
      </p>
    </div>

    <p>Professor Júnior Gonçalves</p>
  </div>
</body>

</html>