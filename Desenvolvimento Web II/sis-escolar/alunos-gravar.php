<?php
require "classes/Aluno.php";

$aluno = new Aluno();

$aluno->nome = $_POST['txtnome'];
$aluno->turmaId = $_POST['selturma'];
$aluno->email = $_POST['txtemail'];
$aluno->foto = $_FILES["imgfoto"];

$aluno->inserir();
