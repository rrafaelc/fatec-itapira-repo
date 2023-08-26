import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String loja;
        double valor1, valor2;
        System.out.print("Digite o valor 1: ");
        valor1 = Double.parseDouble(sc.nextLine());
        System.out.print("Digite o nome da loja: ");
        loja = sc.nextLine();
        System.out.print("Digite o valor 2: ");
        valor2 =  Double.parseDouble(sc.nextLine());
        System.out.println("Compra na loja " + loja);
        System.out.println("Produto 1: R$" +valor1);
        System.out.println("Produto 2: R$" +valor2);
    }
}

