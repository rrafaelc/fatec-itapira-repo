import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String nome;
        System.out.print("Digite seu nome: ");
        nome = sc.nextLine();
        System.out.println("Ola " + nome);
        int a, b;
        System.out.print("Digite o valor de a: ");
        a = sc.nextInt();
        System.out.print("Digite o valor de b: ");
        b = sc.nextInt();
        int soma = a + b;
        System.out.println("Valor da soma: " + soma);
    }
}
