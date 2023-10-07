<?php
class Turma
{
    public $id;
    public $descTurma;
    public $ano;

    public function inseir()
    {
        // echo "Turma: ".$this->descTurma."<br>";
        // echo "Ano: ".$this->ano."<br><br>";
        // echo "Registro gravado com sucesso! #sqn";

        //Define a string SQL de inserção de dados na tabela "tb_turmas"
        $sql = "INSERT INTO tb_turmas (descTurma, ano) VALUES (
                '" . $this->descTurma . "',
                '" . $this->ano . "'
            )";

        //Cria uma nova conexão PDO com o banco de daos "sis-escolar"
        $conexao = new PDO('mysql:host=127.0.0.1;dbname=sis-escolar', 'root', '');

        //Executa a string SQL na conexão, inserindo os dados na tabela "tb_turmas"
        $conexao->exec($sql);

        echo "Registro gravado com sucesso";
    }
    public function listar()
    {
        //Define a string SQL para selecionar os registros de tabela
        $sql = "SELECT * FROM tb_turmas";

        //Cria uma nova conexão PDO com o banco de daos "sis-escolar"
        $conexao = new PDO('mysql:host=127.0.0.1;dbname=sis-escolar', 'root', '');

        //Executa a string SQL na conexão, retornando um objeto de resultado
        $resultado = $conexao->query($sql);

        //Extrai todos os registros do objeto e coloca-os em um array
        $lista = $resultado->fetchAll();

        //Retorna o array contendo todos os registros da tabela "tb_aluno"
        return $lista;
        
    }
}
