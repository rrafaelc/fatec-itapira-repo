public class AlunoTeste {
    public static void main(String[] args) {
      Aluno aluno1 = new Aluno();

      aluno1.ra = 11;
      aluno1.nome = "Joao Carlos";
      aluno1.curso = "DSM";
      aluno1.idade = 23;
      aluno1.email = "joao@gmail.com";

      aluno1.matricular();

      aluno1.listar();
    }
}