public class Aluno {
    public int ra;
    public String nome;
    public String curso;
    public int idade;
    public String email;

    public void matricular() {
        System.out.println("Aluno " + nome);
        System.out.println("Foi matriculado com o RA: " + ra);
    }

    public void listar() {
        System.out.println("ra = " + ra);
        System.out.println("nome = " + nome);
        System.out.println("curso = " + curso);
        System.out.println("idade = " + idade);
        System.out.println("email = " + email);
    }
}
