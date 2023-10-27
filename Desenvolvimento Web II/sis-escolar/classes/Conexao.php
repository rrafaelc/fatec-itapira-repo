<?php


class Conexao{

    public static function Connection(){
        $conexao = new PDO('mysql:host=127.0.0.1;dbname=sis-escolar2', 'root', '');
        return $conexao;
    }

}
