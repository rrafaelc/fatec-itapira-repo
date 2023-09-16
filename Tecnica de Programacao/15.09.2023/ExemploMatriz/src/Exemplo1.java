import java.util.Random;

public class Exemplo1 {
    public static void main(String[] args) {
        Random randomico = new Random();
        int[][] matriz = new int[5][5];

        for (int i = 0; i < 5; i++) {
            for (int j = 0; j < 5; j++) {
                matriz[i][j] = randomico.nextInt(1, 10);
            }
        }

        for (int i = 0; i < 5; i++) {
            for (int j = 0; j < 5; j++) {
                System.out.printf("[%1d] ", matriz[i][j]);
            }

            System.out.println();
        }


    }
}
