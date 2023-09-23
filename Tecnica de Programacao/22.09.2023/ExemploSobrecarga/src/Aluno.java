public class Aluno {
    private int ra;
    private String nome;
    private String login;
    private String senha;

    // Contrutor padrao
    public Aluno() {}

    public Aluno(String login, String senha) {
        this.login = login;
        this.senha = senha;
        // Faz o login do usuario
    }

    public Aluno(int ra, String nome, String login, String senha) {
        this(login, senha);
        this.ra = ra;
        this.nome = nome;
    }
}
