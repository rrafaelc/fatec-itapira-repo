import java.util.Scanner;

public class Exemplo3 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int[] valores = new int[5];

        for (int i = 0; i < valores.length; i++) {
            System.out.print("Digite um numero: ");
            valores[i] = Integer.parseInt(sc.nextLine());
        }

        for(int x: valores) {
            System.out.println(x);
        }
    }
}
