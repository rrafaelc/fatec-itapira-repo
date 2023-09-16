import java.util.Scanner;

public class SomaVetor {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int[] numeros = new int[10];
        int soma = 0;

        for (int i = 0; i < numeros.length; i++) {
            System.out.printf("Digite o %1dº valor: ", i + 1);
            numeros[i] = Integer.parseInt(sc.nextLine());
        }

        for (int num: numeros) {
            soma += num;
        }

        System.out.println("A soma dos valores é: " + soma);
    }
}
