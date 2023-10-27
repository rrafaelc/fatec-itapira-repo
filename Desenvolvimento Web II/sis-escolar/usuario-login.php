<?php
    require 'classes/Conexao.php';
    $usuario = $_POST['usuario'];
    $senha = $_POST['senha'];

    $sql = "SELECT * FROM tb_usuarios WHERE usuario = '{$usuario}' AND senha = '{$senha}'";

    $conexao = Conexao::Connection();

    $resultado = $conexao->query($sql);
    $linha = $resultado->fetch();
    $usuarioLogado = $linha['usuario'];

    if($usuarioLogado == null){
        header('Location: usuario-erro.php');
    }else{
        session_start();
        $_SESSION['usuario_logado'] = $usuarioLogado;
        header('Location: index2.php');
    }
