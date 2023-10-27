<?php
require "classes/Conexao.php";

class Aluno
{
    public $id;
    public $nome;
    public $foto;
    public $email;
    public $turmaId;
    public $nomeFoto;
    public $caminhoFoto;

    public function __construct($id = false)
    {
        if ($id) {
            $this->id = $id;
            $this->carregar();
        }
    }

    public function carregar()
    {
        $sql = "SELECT * FROM tb_alunos WHERE id=" . $this->id;
        $conexao = Conexao::Connection();

        $resultado = $conexao->query($sql);
        $linha = $resultado->fetch();

        $this->id = $linha['id'];
        $this->nome = $linha['nome'];
        $this->foto = $linha['foto'];
        $this->email = $linha['email'];
        $this->turmaId = $linha['fk_tb_turmas_id'];
    }

    public function listar()
    {
        $sql = "SELECT a.id, a.foto, a.nome, a.email, a.fk_tb_turmas_id, t.descTurma FROM tb_alunos a
        JOIN tb_turmas t ON a.fk_tb_turmas_id = t.id
        ORDER BY a.id";
        $conexao = Conexao::Connection();
        $resultado = $conexao->query($sql);
        $lista = $resultado->fetchAll();
        return $lista;
    }

    public function inserir()
    {
        preg_match("/.(gif|bmp|png|jpg|jpeg){1}$/i", $this->foto["name"], $ext);
        $this->nomeFoto = md5(uniqid(time())) . "." . $ext[1];
        $this->caminhoFoto = __DIR__ . '/img/' . $this->nomeFoto;
        move_uploaded_file($this->foto["tmp_name"], $this->caminhoFoto);

        $sql = "INSERT INTO tb_alunos (nome, foto, email, fk_tb_turmas_id) VALUES ('{$this->nome}',
         '{$this->nomeFoto}', '{$this->email}', '{$this->turmaId}' )";

        $conexao = Conexao::Connection();
        $conexao->exec($sql);

        echo "Registro gravado com sucesso";

        header('Refresh: 2; URL=alunos-listar.php');
    }
}
