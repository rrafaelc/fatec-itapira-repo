import java.util.Scanner;

public class ConcessionariaTeste {
    Carro carro = new Carro();
    public static void main(String[] args) {
        ConcessionariaTeste concessionaria = new ConcessionariaTeste();

        concessionaria.execCadastro();
        concessionaria.execConsulta();
    }

    public void execCadastro() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Digite o modelo do carro: ");
        carro.setModelo(sc.nextLine());
        System.out.print("Digite a marca do carro: ");
        carro.setMarca(sc.nextLine());
        System.out.print("Digite o ano do carro: ");
        carro.setAno(Integer.parseInt(sc.nextLine()));
        System.out.print("Digite o preço do carro: ");
        carro.setPreco(Double.parseDouble(sc.nextLine()));

        System.out.println("\nCadastro do carro efetuado com sucesso!\n");
    }

    public void execConsulta() {
        carro.imprimir();
    }
}
