<?php

require "usuario-verifica.php";
require "classes/Aluno.php";
$aluno = new Aluno();
$lista = $aluno->listar();

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Sistema acadêmico</h1>
    <h3>Listar alunos</h3>
    <br>
    <table border="1">
        <tr>
            <th>Código</th>
            <th>nome</th>
            <th>foto</th>
            <th>email</th>
            <th>Turma</th>
        </tr>
        <?php foreach ($lista as $linha): ?>
        <tr>
            <td><?php echo $linha['id'] ?></td>
            <td><?php echo $linha['nome'] ?></td>
            <td><img src="img/<?php echo $linha['foto'] ?>" height="60" alt=""></td>
            <td><?php echo $linha['email'] ?></td>
            <td><?php echo $linha['descTurma'] ?></td>

        </tr>
        <?php endforeach ?>
    </table>
    <a href="alunos-inserir.php">Novo Aluno</a>
</body>
</html>
