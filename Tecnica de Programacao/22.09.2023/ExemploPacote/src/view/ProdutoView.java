package view;

import model.Produto;

import java.util.Scanner;

public class ProdutoView {
    // interface com o usuario (UI)
    Produto produto;

    public ProdutoView() {
        produto = new Produto();
        lerDadosUsuario();
    }

    private void lerDadosUsuario() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Digite o código do produto: ");
        produto.setCodigo(Integer.parseInt(sc.nextLine()));
        System.out.print("Digite o descrição do produto: ");
        produto.setDescricao(sc.nextLine());
    }

    public void exibirDadosDoProduto() {
        System.out.println(produto);
    }
}
