import java.util.Scanner;

public class LojaTeste {
    Produto produto = new Produto();

    public static void main(String[] args) {
        LojaTeste loja = new LojaTeste();

        loja.execCadastro();
        loja.execConsulta();
    }

    public void execCadastro() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Digite o nome do produto: ");
        produto.setNome(sc.nextLine());
        System.out.print("Digite a descrição do produto: ");
        produto.setDescricao(sc.nextLine());
        System.out.print("Digite a quantidade em estoque do produto: ");
        produto.setQuantidadeEmEstoque(Integer.parseInt(sc.nextLine()));
        System.out.print("Digite o preço unitário do produto: ");
        produto.setPrecoUnitario(Double.parseDouble(sc.nextLine()));
    }

    public void execConsulta() {
        produto.imprimir();
    }
}
