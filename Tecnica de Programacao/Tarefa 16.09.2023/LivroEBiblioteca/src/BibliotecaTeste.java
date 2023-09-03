import java.util.Scanner;

public class BibliotecaTeste {
    public Livro livro = new Livro();

    public static void main(String[] args) {
        BibliotecaTeste gerenciar = new BibliotecaTeste();

        gerenciar.execCadastro();
        gerenciar.execConsulta();
    }

    public void execCadastro() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Digite o titulo do livro: ");
        livro.setTitulo(sc.nextLine());
        System.out.print("Digite o autor do livro: ");
        livro.setAutor(sc.nextLine());
        System.out.print("Digite o ano de publicação do livro: ");
        livro.setAnoPublicacao(Integer.parseInt(sc.nextLine()));
        System.out.print("Digite o preço do livro: ");
        livro.setPreco(Double.parseDouble(sc.nextLine()));
        System.out.println("Livro cadastrado com sucesso!");
    }

    public void execConsulta() {
        livro.imprimir();
    }
}
